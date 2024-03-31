package DiamonShop.Service.Users;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DiamonShop.Dao.ProductsDao;
import DiamonShop.Dto.ProductsDto;

@Service
public class ProductServiceImpl implements IProductService{
	
	@Autowired
	ProductsDao productdao = new ProductsDao();
	
	
	public ProductsDto GetProductsByID(long id) {
		List<ProductsDto> listProducts = productdao.GetProductsByID(id);
		return listProducts.get(0);
	}


	public List<ProductsDto> GetProductByIDCategory(int id) {
		
		return productdao.GetAllProductsByID(id);
	}

}
