package DiamonShop.Entity;

import DiamonShop.Utils.Constant;

public class Bills {
    private long id;
    private String user;
    private String phone;
    private String display_name;
    private String address;
    private double total;
    private int quanty;
    private String note;
    private long uid;
    private long time_create;

    public long getTime_create() {
        return time_create;
    }

    public void setTime_create(long time_create) {
        this.time_create = time_create;
    }

    public long getUid() {
        return uid;
    }

    public void setUid(long uid) {
        this.uid = uid;
    }

    public Bills() {
        super();
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getDisplay_name() {
        return display_name;
    }

    public void setDisplay_name(String display_name) {
        this.display_name = display_name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getTotal() {
        return Constant.FORMATTER.format((long) total);
    }
    public double getTotal(int stt) {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public int getQuanty() {
        return quanty;
    }

    public void setQuanty(int quanty) {
        this.quanty = quanty;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }


}
