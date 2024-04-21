package DiamonShop.Entity;

import DiamonShop.Utils.Constant;

import java.util.Objects;

public class Categorys {
    private int id;
    private String name;
    private String description;

    public Categorys() {
        super();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "Categorys{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                '}';
    }

    public Object[] toObjArr(String query) {
        if (Objects.equals(query, Constant.UPDATE_CATEGORYS)) {
            return new Object[]{name, description, id};
        } else if (Objects.equals(query, Constant.DELETE_CATEGORYS)) {
            return new Object[]{id};
        } else if (Objects.equals(query, Constant.INSERT_CATEGORYS)) {
            return new Object[]{name, description};
        }
        return new Object[]{};
    }
}
