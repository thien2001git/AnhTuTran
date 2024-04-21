package DiamonShop.Controller.Users;

import DiamonShop.Controller.BaseController;
import DiamonShop.Dto.ProductsDto;
import DiamonShop.Entity.Categorys;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class HomeController extends BaseController {

    @RequestMapping(value = {"/", ""}, method = RequestMethod.GET)
    public String Index1() {
        return "redirect:users/trang-chu";
    }

    @RequestMapping(value = {"users", "users/trang-chu"})
    public ModelAndView Index(HttpSession session) {
        //ModelAndView mv = new ModelAndView("users/index");
        List<ProductsDto> v = _homeService.GetDataProducts();
        List<Categorys> categorys = _homeService.GetDataCategorys();
        _mvShare.addObject("categorys", _homeService.GetDataCategorys());
        session.setAttribute("categorys", categorys);
        _mvShare.addObject("products", v);
        _mvShare.setViewName("users/index");
        return _mvShare;
    }

    @RequestMapping("users/product")
    public String Product() {
        return "users/product";
    }

    @RequestMapping("users/blog")
    public String Blog() {
        return "users/blog";
    }

    @RequestMapping("users/contact")
    public String Contact() {
        return "users/contact";
    }
}
