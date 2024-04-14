package DiamonShop.Utils;

import java.text.NumberFormat;
import java.text.SimpleDateFormat;

public class Constant {
    public static class Role {
        public static int USER = 1;
        public static int ADMIN = 2;
    }
    public static String ROOT = "";
    static {
        ROOT = System.getProperty("user.dir") + "\\..\\webapps\\DiamonShop_war\\WEB-INF\\classes\\";
    }
    public static SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("dd/MM/yyyy HH:mm");
    public static NumberFormat FORMATTER = NumberFormat.getCurrencyInstance();

    public static String SELLECT_BILL_DETAIL = ROOT + "text\\select_bill_details";
    public static String INSERT_BILL = ROOT + "text\\insert_bill";
}
