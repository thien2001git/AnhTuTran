package DiamonShop.Entity;

import DiamonShop.Dto.ProductsDto;

public class BillDetail {
	private long id;
	private long id_product;
	private ProductsDto productsDto;

    public ProductsDto getProductsDto() {
        return productsDto;
    }

    public void setProductsDto(ProductsDto productsDto) {
        this.productsDto = productsDto;
    }

    private long id_bills;
	private int quanty;
	private double total;

    public BillDetail(long id, long id_product, long id_bills, int quanty, double total) {
        this.id = id;
        this.id_product = id_product;
        this.id_bills = id_bills;
        this.quanty = quanty;
        this.total = total;
    }

    public BillDetail() {
		super();
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public long getId_product() {
		return id_product;
	}
	public void setId_product(long id_product) {
		this.id_product = id_product;
	}
	public int getQuanty() {
		return quanty;
	}
	public void setQuanty(int quanty) {
		this.quanty = quanty;
	}
	
	public long getId_bills() {
		return id_bills;
	}
	public void setId_bills(long id_bills) {
		this.id_bills = id_bills;
	}
	public double getTotal() {
		return total;
	}
	public void setTotal(double total) {
		this.total = total;
	}
	
	
}
