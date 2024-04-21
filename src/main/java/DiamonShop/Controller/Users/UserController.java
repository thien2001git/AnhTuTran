package DiamonShop.Controller.Users;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import DiamonShop.Controller.BaseController;
import DiamonShop.Entity.BillDetail;
import DiamonShop.Entity.BillWithDetail;
import DiamonShop.Entity.Bills;
import DiamonShop.Service.Users.BillDetailServiceImpl;
import DiamonShop.Service.Users.BillsServiceImpl;
import DiamonShop.Service.Users.ProductServiceImpl;
import DiamonShop.Utils.Log;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import DiamonShop.Entity.Users;
import DiamonShop.Service.Users.AccountServiceImpl;

import java.util.ArrayList;
import java.util.List;


@Controller
public class UserController extends BaseController {
    @Autowired
    AccountServiceImpl accountService = new AccountServiceImpl();

    @Autowired
    BillsServiceImpl billsServiceImpl = new BillsServiceImpl();

    @Autowired
    BillDetailServiceImpl billDetailService = new BillDetailServiceImpl();
    @Autowired
    ProductServiceImpl productService;

    @RequestMapping(value = "users/dang-ky", method = RequestMethod.GET)
    public ModelAndView Register() {
        _mvShare.setViewName("users/account/register");
        _mvShare.addObject("users", new Users());
        return _mvShare;
    }

    @RequestMapping(value = "users/dang-ky", method = RequestMethod.POST)
    public ModelAndView CreateAcc(@ModelAttribute("user") Users users) {
        int count = accountService.AddAccount(users);
        if (count > 0) {
            _mvShare.addObject("status", "Đăng ký tài khoản thành công");
        } else {
            _mvShare.addObject("status", "Đăng ký tài khoản thất bại");
        }
        _mvShare.setViewName("users/account/register");
        return _mvShare;
    }

    @RequestMapping(value = "users/dang-nhap", method = RequestMethod.POST)
    public ModelAndView Login(HttpSession session, @ModelAttribute("user") Users users) {
        try {
            users = accountService.CheckAccount(users);
            if (users != null) {
                _mvShare.setViewName("redirect:trang-chu");
                session.setAttribute("LoginInfo", users);
            } else {
                _mvShare.addObject("statusLogin", "Đăng nhập thất bại");
            }
        } catch (Exception ex) {
            _mvShare.addObject("statusLogin", "Đăng nhập thất bại");
            ex.printStackTrace();
        }
        return _mvShare;
    }

    @RequestMapping(value = "users/dang-xuat", method = RequestMethod.GET)
    public String Login(HttpSession session, HttpServletRequest request) {
        session.removeAttribute("LoginInfo");
        return "redirect:" + request.getHeader("Referer");
    }

    @RequestMapping(value = "users/ho-so", method = RequestMethod.GET)
    public ModelAndView HoSo(HttpSession session, HttpServletRequest request) {
        try {
            Users users = (Users) session.getAttribute("LoginInfo");
            users.setPassword("******");

            _mvShare.setViewName("users/account/edit");
            _mvShare.addObject("info", users);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return _mvShare;
    }

    @RequestMapping(value = "users/cap-nhat-tai-khoan", method = RequestMethod.POST)
    public ModelAndView update(HttpSession session, @ModelAttribute("user") Users users) {
        Users users1 = (Users) session.getAttribute("LoginInfo");
        int res = accountService.DeleteAccount(users1);
        accountService.AddAccount(users);
        if (res > 0) {
            _mvShare.addObject("status", "Cập nhật tài khoản thành công");
            session.setAttribute("LoginInfo", users);
            _mvShare.addObject("info", users);
        } else {
            _mvShare.addObject("status", "Cập nhật tài khoản thất bại");
        }
        return _mvShare;
    }

    @RequestMapping(value = "users/don-hang", method = RequestMethod.GET)
    public ModelAndView DonHang(HttpSession session, HttpServletRequest request) {
        _mvShare.setViewName("users/bills/history");
        try {
            ArrayList<BillWithDetail> billWithDetails = new ArrayList<>();
            Users users1 = (Users) session.getAttribute("LoginInfo");
            List<Bills> listBill = billsServiceImpl.GetBills(users1);
            for (Bills bills : listBill) {
                BillWithDetail billWithDetail = new BillWithDetail(bills, billDetailService.GetAllBillDetals(bills));
                for (BillDetail billDetail : billWithDetail.getBillDetails()) {
                    billDetail.setProductsDto(productService.GetProductsByID(billDetail.getId_product()));
                }
                billWithDetails.add(billWithDetail);

                System.out.println("ssssize " + billWithDetails.get(0).getBillDetails().size());
            }
            _mvShare.addObject("listBill", billWithDetails);
        } catch (NullPointerException ex) {
            _mvShare.addObject("mess", "!Không có đơn hàng nào!");
            Log.i("Không có đơn hàng nào");
        }
        return _mvShare;
    }
}
