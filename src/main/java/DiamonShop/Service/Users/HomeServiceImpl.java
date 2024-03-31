package DiamonShop.Service.Users;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DiamonShop.Dao.CategorysDao;

import DiamonShop.Dao.ProductsDao;

import DiamonShop.Dto.ProductsDto;
import DiamonShop.Entity.Categorys;


@Service
public class HomeServiceImpl implements IHomeService{


	@Autowired
	private CategorysDao categoryDao;

	@Autowired
	private ProductsDao productsDao;

	public List<Categorys> GetDataCategorys() {
		return categoryDao.GetDataCategorys();
	}

	public List<ProductsDto> GetDataProducts() {
		List<ProductsDto> listProducts = productsDao.GetDataProducts();
		listProducts.get(0).getId_color();
		return listProducts;
	}

}