package DiamonShop.Dao;

import DiamonShop.Utils.Constant;
import org.springframework.stereotype.Repository;

import DiamonShop.Entity.MapperUsers;
import DiamonShop.Entity.Users;

@Repository
public class UsersDao extends BaseDao {
    public int AddAccount(Users user) {
        StringBuffer sql = new StringBuffer();
        sql.append("INSERT ");
        sql.append("INTO users ");
        sql.append("( ");
        sql.append("	user, ");
        sql.append("	password, ");
        sql.append("	display_name, ");
        sql.append("	address ");
        sql.append(") ");
        sql.append("VALUES ");
        sql.append("( ");
        sql.append("	'" + user.getUser() + "', ");
        sql.append("	'" + user.getPassword() + "', ");
        sql.append("	'" + user.getDisplay_name() + "', ");
        sql.append("	'" + user.getAddress() + "' ");
        sql.append(")");
        int insert = _jdbcTemplate.update(sql.toString());
        return insert;
    }

    ;

    public Users GetUserByAcc(Users user) {
        String sql = String.format("SELECT * FROM users WHERE user = '%s'", user.getUser());
        Users rerult = _jdbcTemplate.queryForObject(sql, new MapperUsers());
        return rerult;
    }

    public Users GetAdminByAcc(Users user) {
        String sql = String.format("SELECT * FROM users WHERE user = '%s'", user.getUser());

        Users rerult = _jdbcTemplate.queryForObject(sql, new MapperUsers());

        if (rerult.getRole() == Constant.Role.ADMIN) {
            System.out.println("UsersDao " + (rerult.getRole() == Constant.Role.ADMIN) + " " + rerult);
            return rerult;
        }
        System.out.println("UsersDao " + (rerult.getRole() == Constant.Role.ADMIN));
        return null;
    }

    public int DeleteUserByAcc(Users user) {
        String sql = String.format("DELETE FROM `users` WHERE user = '%s'", user.getUser());
        return _jdbcTemplate.update(sql);
    }
}
