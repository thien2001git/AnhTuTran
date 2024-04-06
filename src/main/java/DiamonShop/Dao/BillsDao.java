package DiamonShop.Dao;

import DiamonShop.Entity.Users;
import DiamonShop.Utils.Constant;
import DiamonShop.Utils.Utils;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import DiamonShop.Entity.BillDetail;
import DiamonShop.Entity.Bills;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.Instant;
import java.util.List;

@Repository
public class BillsDao extends BaseDao {
    static int addBillRes = 1;

    public int AddBills(Bills bill) {
        addBillRes = 1;
        try {
            return _jdbcTemplate.update(
                    Utils.GetStatement(Constant.INSERT_BILL),
                    bill.getUser(),
                    bill.getPhone(),
                    bill.getDisplay_name(),
                    bill.getAddress(),
                    bill.getTotal(0),
                    bill.getQuanty(),
                    bill.getNote(),
                    bill.getUid(),
                    Instant.now().getEpochSecond()
            );
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public long GetIDLastBills() {
        StringBuffer sql = new StringBuffer();
        sql.append("SELECT MAX(id) FROM bills;");
        long id = _jdbcTemplate.queryForObject(sql.toString(), new Object[]{}, Long.class);
        return id;
    }

    public int AddBillsDetail(BillDetail billDetail) {
        StringBuffer sql = new StringBuffer();
        sql.append("INSERT INTO billdetail ");
        sql.append("( ");
        sql.append("	id_product, ");
        sql.append("	id_bills, ");
        sql.append("	quanty, ");
        sql.append("	total ");
        sql.append(") ");
        sql.append("VALUES ");
        sql.append("( ");
        sql.append("	" + billDetail.getId_product() + ", ");
        sql.append("	" + billDetail.getId_bills() + ", ");
        sql.append("	" + billDetail.getQuanty() + ", ");
        sql.append("	" + billDetail.getTotal() + " ");
        sql.append(")");
        int insert = _jdbcTemplate.update(sql.toString());
        return insert;
    }

    public List<Bills> GetAllBill(Users users1) {
        return _jdbcTemplate.query("SELECT * FROM `bills` WHERE `uid` = " + String.format("'%s'", users1.getId()), (rs, rowNum) -> {
            Bills b = new Bills();
            b.setId(rs.getLong("id"));
            b.setUser(rs.getString("user"));
            b.setPhone(rs.getString("phone"));
            b.setDisplay_name(rs.getString("display_name"));
            b.setAddress(rs.getString("address"));
            b.setTotal(rs.getLong("total"));
            b.setQuanty(rs.getInt("quanty"));
            b.setNote(rs.getString("note"));
            b.setUid(rs.getLong("uid"));
            b.setTime_create(rs.getLong("time_create"));
            return b;
        });
    }
}
