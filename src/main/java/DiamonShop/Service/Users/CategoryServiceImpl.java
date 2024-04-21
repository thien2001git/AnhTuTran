package DiamonShop.Service.Users;

import java.util.List;

import DiamonShop.Dao.CategorysDao;
import DiamonShop.Entity.Categorys;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DiamonShop.Dao.ProductsDao;
import DiamonShop.Dto.ProductsDto;
@Service
public class CategoryServiceImpl implements ICategoryService{
	@Autowired
	private ProductsDao productsDao;

    @Autowired
    private CategorysDao categorysDao;
	
	
	public List<ProductsDto> GetAllProductsByID(int id) {
		return productsDao.GetAllProductsByID(id);
	}

	public List<ProductsDto> GetDataProductsPaginate(int id, int start, int totalPage) {
		return productsDao.GetDataProductsPaginate(id, start, totalPage);
	}

    public List<Categorys> categorys() {
        return categorysDao.GetDataCategorys();
    }

    public int Insert(Categorys categorys) {
        return categorysDao.Insert(categorys);
    }
    public int Update(Categorys categorys) {
        return categorysDao.Update(categorys);
    }

    public int Delete(Categorys categorys) {
        return categorysDao.Delete(categorys);
    }
}
