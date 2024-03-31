package DiamonShop.Controller.Users;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController extends BaseController {
	
	@RequestMapping(value = {"/","/trang-chu"})
	public ModelAndView Index() {
		//ModelAndView mv = new ModelAndView("users/index");
		_mvShare.addObject("categorys", _homeService.GetDataCategorys());
		_mvShare.addObject("products", _homeService.GetDataProducts());
		_mvShare.setViewName("users/index");
		return _mvShare;
	}
	@RequestMapping("product")
	public String Product() {
		return "users/product";
	}
	@RequestMapping("blog")
	public String Blog() {
		return "users/blog";
	}
	@RequestMapping("contact")
	public String Contact() {
		return "users/contact";
	}
}
