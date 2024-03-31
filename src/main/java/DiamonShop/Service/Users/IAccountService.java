package DiamonShop.Service.Users;

import DiamonShop.Entity.Users;

public interface IAccountService {
	
	public int AddAccount(Users users);
	
	public Users CheckAccount(Users users);
}
