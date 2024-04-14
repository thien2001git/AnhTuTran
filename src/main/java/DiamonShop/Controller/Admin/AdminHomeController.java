package DiamonShop.Controller.Admin;

import DiamonShop.Controller.BaseController;
import DiamonShop.Entity.Users;
import DiamonShop.Service.Users.AccountServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

@Controller
public class AdminHomeController extends BaseController {

    @Autowired
    AccountServiceImpl accountService = new AccountServiceImpl();

    @RequestMapping(value = {"admin/"})
    public ModelAndView Index_(HttpSession session) {
        Users users1 = (Users) session.getAttribute("AdminInfo");
        if(users1 == null) {
            _mvShare.setViewName("redirect:/ad/login");
            return _mvShare;
        }
        _mvShare.setViewName("redirect:/admin/trang-chu");
        return _mvShare;
    }

    @RequestMapping(value = {"ad/login"}, method = RequestMethod.POST)
    public ModelAndView Login(HttpSession session, @ModelAttribute("users") Users users) {
        Users users1 = accountService.CheckAdminAccount(users);
        if (users1 != null) {
            System.out.println("AdminHomeController " + "users1 != null");
            session.setAttribute("AdminInfo", users1);
            _mvShare.setViewName("redirect:/admin/trang-chu");
            return _mvShare;
        }
        System.out.println("AdminHomeController " + "users1 == null");
        return _mvShare;
    }

    @RequestMapping(value = {"ad/login"}, method = RequestMethod.GET)
    public ModelAndView Login(@ModelAttribute("users") Users users) {
        _mvShare.setViewName("admin/login");
        return _mvShare;
    }

    @RequestMapping(value = {"admin", "admin/trang-chu"})
    public ModelAndView Index() {
        //ModelAndView mv = new ModelAndView("users/index");

        _mvShare.setViewName("admin/index");
        return _mvShare;
    }
}
