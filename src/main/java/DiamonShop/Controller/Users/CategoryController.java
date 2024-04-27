package DiamonShop.Controller.Users;


import DiamonShop.Controller.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import DiamonShop.Dto.PaginatesDto;
import DiamonShop.Service.Users.CategoryServiceImpl;
import DiamonShop.Service.Users.PaginateServiceImpl;
@Controller
public class CategoryController extends BaseController {
	@Autowired
	private CategoryServiceImpl categoryService;
	@Autowired
	private PaginateServiceImpl paginateService;
	
	private int totalProductsPage = 9;

    public String Paging(String id) {
        StringBuilder sb = new StringBuilder();
        for (int i = 1; i < 10; i++) {
            sb.append(String.format("<li class=\"page-item\"><a class=\"page-link\" href=\"/DiamonShop_war/users/san-pham/%s/%s\">%s</a></li>", id, i, i));
        }
        return sb.toString();
    }

	@RequestMapping(value = "users/san-pham/{id}")
	public ModelAndView Product(@PathVariable String id) {
		_mvShare.setViewName("users/products/category");
		int totalData = categoryService.GetAllProductsByID(Integer.parseInt(id)).size();
		PaginatesDto paginateInfo = paginateService.GetInforPaginates(totalData, totalProductsPage, 1);

        _mvShare.addObject("paging", Paging(id));
		_mvShare.addObject("idCategory", id);
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("productsPaginate", categoryService.GetDataProductsPaginate(Integer.parseInt(id) , paginateInfo.getStart(), totalProductsPage));
		return _mvShare;
	}
	
	@RequestMapping(value = "users/san-pham/{id}/{currentPage}")
	public ModelAndView Product(@PathVariable String id, @PathVariable String currentPage) {
		_mvShare.setViewName("users/products/category");
		int totalData = categoryService.GetAllProductsByID(Integer.parseInt(id)).size();
		PaginatesDto paginateInfo = paginateService.GetInforPaginates(totalData, totalProductsPage, Integer.parseInt(currentPage));
        _mvShare.addObject("paging", Paging(id));
		_mvShare.addObject("idCategory", id);
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("productsPaginate", categoryService.GetDataProductsPaginate(Integer.parseInt(id) , paginateInfo.getStart(), totalProductsPage));
		return _mvShare;
	}
}
