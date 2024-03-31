package DiamonShop.Service.Users;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DiamonShop.Dto.ProductsDto;
import DiamonShop.Entity.Categorys;

@Service
public interface IHomeService {
	@Autowired

	public List<Categorys> GetDataCategorys();

	public List<ProductsDto> GetDataProducts();
}
