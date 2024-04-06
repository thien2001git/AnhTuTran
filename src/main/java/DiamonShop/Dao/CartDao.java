package DiamonShop.Dao;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import DiamonShop.Dto.CartDto;
import DiamonShop.Dto.ProductsDto;
@Repository
public class CartDao extends BaseDao {
	@Autowired
	ProductsDao productsDao = new ProductsDao();
	public HashMap<Long, CartDto> AddCart(long id, HashMap<Long, CartDto> cart) {
		CartDto itemCart = new CartDto();
		ProductsDto product = productsDao.FindProductsByID(id);
		if(product != null && cart.containsKey(id)) {
			itemCart = cart.get(id);
			itemCart.setQuanty(itemCart.getQuanty()+1);
			itemCart.setTotalPrice(itemCart.getQuanty()* itemCart.getProduct().getPrice(0));
		}else {
			itemCart.setProduct(product);
			itemCart.setQuanty(1);
            assert product != null;
            itemCart.setTotalPrice(product.getPrice(0));
		}
		cart.put(id, itemCart);
		return cart;
	}
	
	public HashMap<Long, CartDto> EditCart(long id, int quanty, HashMap<Long, CartDto> cart) {
		if(cart == null)
			return cart;
		CartDto itemCart = new CartDto();
		if(cart.containsKey(id)) {
			itemCart= cart.get(id);
			itemCart.setQuanty(quanty);
			double totalPrice = quanty * itemCart.getProduct().getPrice(0);
			itemCart.setTotalPrice(totalPrice);
		}
		cart.put(id, itemCart);
		return cart;
	}
	
	public HashMap<Long, CartDto> DeleteCart(long id, HashMap<Long, CartDto> cart) {
		if(cart == null)
			return cart;
		if(cart.containsKey(id)) {
			cart.remove(id);
		}
		return cart;
	}
	public int TotalQuanty(HashMap<Long, CartDto> cart) {
		int totalQuanty = 0;
		for(Map.Entry<Long, CartDto> itemCart: cart.entrySet()) {
			totalQuanty += itemCart.getValue().getQuanty();
			 
		}
		return totalQuanty;
	}
	public double TotalPrice(HashMap<Long, CartDto> cart) {
		int totalPrice = 0;
		for(Map.Entry<Long, CartDto> itemCart: cart.entrySet()) {
			totalPrice += itemCart.getValue().getTotalPrice();
			 
		}
		return totalPrice;
	}
}
