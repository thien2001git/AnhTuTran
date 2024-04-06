package DiamonShop.Controller.Users;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import DiamonShop.Controller.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import DiamonShop.Dto.CartDto;
import DiamonShop.Entity.Bills;
import DiamonShop.Entity.Users;
import DiamonShop.Service.Users.BillsServiceImpl;
import DiamonShop.Service.Users.CartServiceImpl;

@Controller
public class CartController extends BaseController {
    @Autowired
    private CartServiceImpl cartService = new CartServiceImpl();
    @Autowired
    private BillsServiceImpl billsService = new BillsServiceImpl();

    @RequestMapping(value = "users/Gio-hang")
    public ModelAndView Index() {
        //ModelAndView mv = new ModelAndView("users/index");
        _mvShare.addObject("categorys", _homeService.GetDataCategorys());
        _mvShare.addObject("products", _homeService.GetDataProducts());
        _mvShare.setViewName("users/cart/list_cart");
        return _mvShare;
    }

    @RequestMapping(value = "users/AddCart/{id}")
    public String AddCart(HttpServletRequest request, HttpSession session, @PathVariable long id) {
        HashMap<Long, CartDto> cart = (HashMap<Long, CartDto>) session.getAttribute("Cart");
        if (cart == null) cart = new HashMap<Long, CartDto>();
        cart = cartService.AddCart(id, cart);
        session.setAttribute("Cart", cart);
        session.setAttribute("TotalQuantyCart", cartService.TotalQuanty(cart));
        session.setAttribute("TotalPriceCart", cartService.TotalPrice(cart));
        //return "redirect:/chi-tiet-san-pham/"+ id;
        return "redirect:" + request.getHeader("Referer");
    }

    @RequestMapping(value = "users/EditCart/{id}/{quanty}")
    public String EditCart(HttpServletRequest request, HttpSession session, @PathVariable long id, @PathVariable int quanty) {
        HashMap<Long, CartDto> cart = (HashMap<Long, CartDto>) session.getAttribute("Cart");
        if (cart == null) cart = new HashMap<Long, CartDto>();
        cart = cartService.EditCart(id, quanty, cart);
        session.setAttribute("Cart", cart);
        session.setAttribute("TotalQuantyCart", cartService.TotalQuanty(cart));
        session.setAttribute("TotalPriceCart", cartService.TotalPrice(cart));
        return "redirect:" + request.getHeader("Referer");
    }


    @RequestMapping(value = "users/DeleteCart/{id}")
    public String DeleteCart(HttpServletRequest request, HttpSession session, @PathVariable long id) {
        HashMap<Long, CartDto> cart = (HashMap<Long, CartDto>) session.getAttribute("Cart");
        if (cart == null) cart = new HashMap<Long, CartDto>();
        cart = cartService.DeleteCart(id, cart);
        session.setAttribute("Cart", cart);
        session.setAttribute("TotalQuantyCart", cartService.TotalQuanty(cart));
        session.setAttribute("TotalPriceCart", cartService.TotalPrice(cart));
        return "redirect:" + request.getHeader("Referer");
    }

    @RequestMapping(value = "users/checkout", method = RequestMethod.GET)
    public ModelAndView CheckOut(HttpServletRequest request, HttpSession session) {
        _mvShare.setViewName("users/bills/checkout");
        Bills bills = new Bills();
        Users loginInfo = (Users) session.getAttribute("LoginInfo");
        if (loginInfo != null) {
            bills.setAddress(loginInfo.getAddress());
            bills.setDisplay_name(loginInfo.getDisplay_name());
            bills.setUser(loginInfo.getUser());
        }
        _mvShare.addObject("bills", bills);
        return _mvShare;
    }

    @RequestMapping(value = "users/checkout", method = RequestMethod.POST)
    public String CheckOutBill(HttpServletRequest request, HttpSession session, @ModelAttribute("bills") Bills bill) {
        HashMap<Long, CartDto> carts = (HashMap<Long, CartDto>) session.getAttribute("Cart");
        Users users1 = (Users) session.getAttribute("LoginInfo");
        long total = 0;
        long quanty = 0;
        for (Map.Entry<Long, CartDto> entry : carts.entrySet()) {
            total += entry.getValue().getQuanty() * entry.getValue().getProduct().getPrice(0);
            quanty += entry.getValue().getQuanty();
        }
        bill.setTotal(total);
        bill.setQuanty((int) quanty);
        bill.setUid(users1.getId());

        if (billsService.AddBills(bill) > 0) {
            billsService.AddBillsDetail(carts);
        }
        session.removeAttribute("Cart");
        session.setAttribute("TotalQuantyCart", 0);
        return "redirect:Gio-hang";
    }
}
