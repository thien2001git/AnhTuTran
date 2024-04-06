package DiamonShop.Dao;

import DiamonShop.Entity.BillDetail;
import DiamonShop.Entity.Bills;
import DiamonShop.Utils.Constant;
import DiamonShop.Utils.Utils;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BillDetailDao extends BaseDao {
    public List<BillDetail> GetAllBillDetail(Bills bills) {
        return _jdbcTemplate.query(Utils.GetStatement(Constant.SELLECT_BILL_DETAIL), new Object[]{bills.getId()}, (rs, rowNum) ->
                new BillDetail(
                        rs.getLong("id"),
                        rs.getLong("id_product"),
                        rs.getLong("id_bills"),
                        rs.getInt("quanty"),
                        rs.getDouble("total")
                )
        );
    }
}
