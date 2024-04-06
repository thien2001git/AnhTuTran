package DiamonShop.Controller;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import DiamonShop.Service.Users.HomeServiceImpl;
@Controller
public class BaseController {
	@Autowired
    protected HomeServiceImpl _homeService;
	public ModelAndView _mvShare = new ModelAndView();
	
	
}
