package DiamonShop.Service.Users;

import DiamonShop.Dao.BillsDao;
import DiamonShop.Dto.CartDto;
import DiamonShop.Entity.BillDetail;
import DiamonShop.Entity.Bills;
import DiamonShop.Entity.Users;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class BillsServiceImpl implements IBillsService {
    @Autowired
    private BillsDao billsDao;

    public int AddBills(Bills bill) {
        return billsDao.AddBills(bill);
    }

    public void AddBillsDetail(HashMap<Long, CartDto> carts) {
        long idBills = billsDao.GetIDLastBills();

        for (Map.Entry<Long, CartDto> itemCart : carts.entrySet()) {
            BillDetail billDetail = new BillDetail();
            billDetail.setId_bills(idBills);
            billDetail.setId_product(itemCart.getValue().getProduct().getId_product());
            billDetail.setQuanty(itemCart.getValue().getQuanty());
            billDetail.setTotal(itemCart.getValue().getTotalPrice());
            billsDao.AddBillsDetail(billDetail);
        }
    }

    public List<Bills> GetBills(Users users1) {
        return billsDao.GetAllBill(users1);
    }
}
