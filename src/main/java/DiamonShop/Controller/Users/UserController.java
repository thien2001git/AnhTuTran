package DiamonShop.Controller.Users;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import DiamonShop.Entity.Bills;
import DiamonShop.Service.Users.BillsServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import DiamonShop.Entity.Users;
import DiamonShop.Service.Users.AccountServiceImpl;

import java.util.List;


@Controller
public class UserController extends BaseController {
    @Autowired
    AccountServiceImpl accountService = new AccountServiceImpl();

    @Autowired
    BillsServiceImpl billsServiceImpl = new BillsServiceImpl();

    @RequestMapping(value = "/dang-ky", method = RequestMethod.GET)
    public ModelAndView Register() {
        _mvShare.setViewName("users/account/register");
        _mvShare.addObject("users", new Users());
        return _mvShare;
    }

    @RequestMapping(value = "/dang-ky", method = RequestMethod.POST)
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

    @RequestMapping(value = "/dang-nhap", method = RequestMethod.POST)
    public ModelAndView Login(HttpSession session, @ModelAttribute("user") Users users) {
        users = accountService.CheckAccount(users);
        if (users != null) {
            _mvShare.setViewName("redirect:trang-chu");
            session.setAttribute("LoginInfo", users);
        } else {
            _mvShare.addObject("statusLogin", "Đăng nhập thất bại");
        }
        return _mvShare;
    }

    @RequestMapping(value = "/dang-xuat", method = RequestMethod.GET)
    public String Login(HttpSession session, HttpServletRequest request) {
        session.removeAttribute("LoginInfo");
        return "redirect:" + request.getHeader("Referer");
    }

    @RequestMapping(value = "/ho-so", method = RequestMethod.GET)
    public ModelAndView HoSo(HttpSession session, HttpServletRequest request) {
        Users users = (Users) session.getAttribute("LoginInfo");
        users.setPassword("******");

        _mvShare.setViewName("users/account/edit");
        _mvShare.addObject("info", users);
        return _mvShare;
    }

    @RequestMapping(value = "/cap-nhat-tai-khoan", method = RequestMethod.POST)
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

    @RequestMapping(value = "/don-hang", method = RequestMethod.GET)
    public ModelAndView DonHang(HttpSession session, HttpServletRequest request) {
        Users users1 = (Users) session.getAttribute("LoginInfo");
        List<Bills> listBill = billsServiceImpl.GetBills(users1);
        for (Bills b: listBill) {
            System.out.println(b.getUser());
        }
        _mvShare.setViewName("users/bills/history");
        _mvShare.addObject("listBill", listBill);
        return _mvShare;
    }
}
