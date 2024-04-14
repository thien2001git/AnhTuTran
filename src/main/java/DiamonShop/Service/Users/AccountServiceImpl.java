package DiamonShop.Service.Users;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DiamonShop.Dao.UsersDao;
import DiamonShop.Entity.Users;

@Service
public class AccountServiceImpl implements IAccountService {
    @Autowired
    UsersDao usersDao = new UsersDao();

    public int AddAccount(Users users) {
        users.setPassword(BCrypt.hashpw(users.getPassword(), BCrypt.gensalt(12)));
        return usersDao.AddAccount(users);
    }

    public Users CheckAccount(Users users) {
        String pass = users.getPassword();
        users = usersDao.GetUserByAcc(users);
        if (users != null) {
            if (BCrypt.checkpw(pass, users.getPassword())) {
                return users;
            } else {
                return null;
            }
        }
        return null;
    }

    public Users CheckAdminAccount(Users users) {
        String pass = users.getPassword();
        System.out.println("AccountServiceImpl " + pass);
        Users users1 = usersDao.GetAdminByAcc(users);
        System.out.println("AccountServiceImpl " + users1);
        if (users1 != null) {
            if (BCrypt.checkpw(pass, users1.getPassword())) {
                return users;
            } else {
                return null;
            }
        }
        return null;
    }

    public int DeleteAccount(Users users) {
        int x = usersDao.DeleteUserByAcc(users);
        System.out.printf("AccountServiceImpl.DeleteAccount email %s res %d", users.getUser(), x);
        return x;
    }
}