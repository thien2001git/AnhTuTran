package DiamonShop.Controller.Admin;

import DiamonShop.Controller.BaseController;
import DiamonShop.Entity.Categorys;
import DiamonShop.Service.Users.CategoryServiceImpl;
import DiamonShop.Utils.Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

@Controller
public class CategoryAdminController extends BaseController {
    @Autowired
    CategoryServiceImpl categoryService;

    @RequestMapping(value = {"admin/category/view",})
    public ModelAndView View(
            HttpSession session,
            @ModelAttribute("categorys")
            Categorys categorys,
            @ModelAttribute("isDelete") Categorys isDelete
    ) {
        String[] name = new String[]{"Home", "Category"};
        String[] href = new String[]{"/DiamonShop_war/admin/",};
        session.setAttribute("Breadcrumb", Utils.BreadcrumbBuilder(name, href));

        _mvShare.setViewName("admin/category/view");
        _mvShare.addObject("category", categoryService.categorys());
        return _mvShare;
    }

    @RequestMapping(value = {"admin/category/add",})
    public ModelAndView Add(@ModelAttribute("categorys") Categorys categorys) {

        _mvShare.setViewName("admin/category/add");
        return _mvShare;
    }

    @RequestMapping(value = {"admin/category/add",}, method = RequestMethod.POST)
    public ModelAndView AddPost(@ModelAttribute("categorys") Categorys categorys) {
        categoryService.Insert(categorys);
        _mvShare.setViewName("admin/category/add");
        return _mvShare;
    }

    @RequestMapping(value = {"admin/category/edit"}, method = RequestMethod.POST)
    public ModelAndView Edit(@ModelAttribute("categorys") Categorys categorys) {
        categoryService.Update(categorys);
        _mvShare.setViewName("redirect:/admin/category/view");
        return _mvShare;
    }


    @RequestMapping(value = {"admin/category/delete"}, method = RequestMethod.POST)
    public ModelAndView Delete( @ModelAttribute("isDelete") Categorys isDelete) {
        categoryService.Delete(isDelete);
        _mvShare.setViewName("redirect:/admin/category/view");
        return _mvShare;
    }
}
