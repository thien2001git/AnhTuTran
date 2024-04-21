package DiamonShop.Dao;

import java.util.ArrayList;
import java.util.List;

import DiamonShop.Utils.Constant;
import DiamonShop.Utils.Utils;
import org.springframework.stereotype.Repository;

import DiamonShop.Entity.Categorys;
import DiamonShop.Entity.MapperCategorys;
@Repository
public class CategorysDao extends BaseDao{

	public List<Categorys> GetDataCategorys() {
		List<Categorys> list = new ArrayList<Categorys>();
		String sql = "SELECT * FROM categorys";
		list = _jdbcTemplate.query(sql, new MapperCategorys());
		return list;
	}

    public int Insert(Categorys categorys) {
        return _jdbcTemplate.update(Utils.GetStatement(Constant.INSERT_CATEGORYS), categorys.toObjArr(Constant.INSERT_CATEGORYS));
    }

    public int Update(Categorys categorys) {
        return _jdbcTemplate.update(Utils.GetStatement(Constant.UPDATE_CATEGORYS), categorys.toObjArr(Constant.UPDATE_CATEGORYS));
    }

    public int Delete(Categorys categorys) {
        return _jdbcTemplate.update(Utils.GetStatement(Constant.DELETE_CATEGORYS), categorys.toObjArr(Constant.DELETE_CATEGORYS));
    }
}
