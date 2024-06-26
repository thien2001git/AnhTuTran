package DiamonShop.Controller.Users;

import DiamonShop.Controller.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import DiamonShop.Service.Users.IProductService;

@Controller
public class ProductController extends BaseController {

	@Autowired
	private IProductService _productService;

	@RequestMapping(value = { "users/chi-tiet-san-pham/{id}" })
	public ModelAndView Index(@PathVariable long id) {
		_mvShare.setViewName("users/products/product");
		_mvShare.addObject("product", _productService.GetProductsByID(id));
		int idCategory = _productService.GetProductsByID(id).getId_category();
		_mvShare.addObject("productByIDCategory", _productService.GetProductByIDCategory(idCategory));
		return _mvShare;
	}
}
