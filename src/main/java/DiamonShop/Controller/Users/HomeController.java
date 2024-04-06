package DiamonShop.Controller.Users;

import DiamonShop.Controller.BaseController;
import DiamonShop.Dto.ProductsDto;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class HomeController extends BaseController {

    @RequestMapping(value = {"users", "users/trang-chu"})
    public ModelAndView Index() {
        //ModelAndView mv = new ModelAndView("users/index");
        List<ProductsDto> v = _homeService.GetDataProducts();
        _mvShare.addObject("categorys", _homeService.GetDataCategorys());
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
