package web.bean;

public class Cart {
	private int id;
	private String name;
	private double count;
	private int amount;
	private String gender;
	private String brand;
	private String color;
	
	

	public Cart(int id, String name, double count, int amount, String gender, String brand, String color) {
		super();
		this.id = id;
		this.name = name;
		this.count = count;
		this.amount = amount;
		this.gender = gender;
		this.brand = brand;
		this.color = color;
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
	public double getCount() {
		return count;
	}
	public void setCount(double count) {
		this.count = count;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public Cart() {
		super();
		// TODO Auto-generated constructor stub
	}
	public long thanhtien() {
		return (long) (amount*count);
	}
}
