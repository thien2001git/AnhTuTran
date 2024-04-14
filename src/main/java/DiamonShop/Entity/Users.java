package DiamonShop.Entity;

public class Users {
    public Users() {
        super();
        this.id = id;
        this.user = user;
        this.password = password;
        this.display_name = display_name;
        this.address = address;
    }

    private long id;
    private String user;
    private String password;
    private String display_name;
    private String address;
    private int role;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
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

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "Users{" +
                "id=" + id +
                ", user='" + user + '\'' +
                ", password='" + password + '\'' +
                ", display_name='" + display_name + '\'' +
                ", address='" + address + '\'' +
                ", role=" + role +
                '}';
    }
}
