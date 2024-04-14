package DiamonShop.Controller.Admin;

import DiamonShop.Controller.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ProductAdminController extends BaseController {
    @RequestMapping(value = {"admin/product/view", })
    public ModelAndView View() {

        _mvShare.setViewName("admin/product/view");
        return _mvShare;
    }

    @RequestMapping(value = {"admin/product/add", })
    public ModelAndView Add() {

        _mvShare.setViewName("admin/product/add");
        return _mvShare;
    }
}
