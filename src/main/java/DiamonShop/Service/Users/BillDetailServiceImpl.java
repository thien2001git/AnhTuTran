package DiamonShop.Service.Users;

import DiamonShop.Dao.BillDetailDao;
import DiamonShop.Entity.BillDetail;
import DiamonShop.Entity.Bills;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BillDetailServiceImpl {
    @Autowired
    private BillDetailDao billDetailDao;
    public List<BillDetail> GetAllBillDetals(Bills bills) {
        return billDetailDao.GetAllBillDetail(bills);
    }
}
