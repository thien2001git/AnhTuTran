package DiamonShop.Controller.Admin;

import DiamonShop.Controller.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminHomeController extends BaseController {
    @RequestMapping(value = {"admin", "admin/trang-chu"})
    public ModelAndView Index() {
        //ModelAndView mv = new ModelAndView("users/index");

        _mvShare.setViewName("admin/index");
        return _mvShare;
    }
}
