package DiamonShop.Entity;

import DiamonShop.Dto.ProductsDto;
import DiamonShop.Service.Users.ProductServiceImpl;
import DiamonShop.Utils.Constant;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class BillWithDetail {
    private Bills bills;
    private String date;
    private List<BillDetail> billDetails;
    private List<ProductsDto> productsDtos;

    public void setDate(String date) {
        this.date = date;
    }

    public List<ProductsDto> getProductsDtos() {
        return productsDtos;
    }

    public void setProductsDtos(List<ProductsDto> productsDtos) {
        this.productsDtos = productsDtos;
    }

    public BillWithDetail(Bills bills, List<BillDetail> billDetails) {
        this.bills = bills;
        this.billDetails = billDetails;
        productsDtos = new ArrayList<>();
    }

    public String getDate() {
        Date _d = new Date(bills.getTime_create());
        return Constant.DATE_FORMAT.format(_d);
    }

    public Bills getBills() {
        return bills;
    }

    public void setBills(Bills bills) {
        this.bills = bills;
    }

    public List<BillDetail> getBillDetails() {
        return billDetails;
    }

    public void setBillDetails(List<BillDetail> billDetails) {
        this.billDetails = billDetails;
    }
}
