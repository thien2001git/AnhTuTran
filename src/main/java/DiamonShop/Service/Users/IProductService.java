package DiamonShop.Service.Users;


import java.util.List;

import org.springframework.stereotype.Service;

import DiamonShop.Dto.ProductsDto;

@Service
public interface IProductService {
	
	public ProductsDto GetProductsByID(long id);
	
	public List<ProductsDto> GetProductByIDCategory(int id);
}
