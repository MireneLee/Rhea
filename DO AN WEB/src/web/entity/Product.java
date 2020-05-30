package web.entity;

import java.util.Collection;
import java.util.Date;

import javax.persistence.*;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="Products")
public class Product {
	@Id 
	@GeneratedValue
	private int id;
	private String name;
	private double count;
	private int amount;
	@DateTimeFormat(pattern = "MM/dd/yyyy")
	@Temporal(TemporalType.DATE)
	private Date date;
	private String gender;
	private String brand;
	private String color;
	private String images;
	private String status;
	
	@OneToMany(mappedBy = "product",fetch = FetchType.EAGER)
	private Collection<Orderss> orders;

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

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
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

	public String getImages() {
		return images;
	}

	public void setImages(String images) {
		this.images = images;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Collection<Orderss> getOrders() {
		return orders;
	}

	public void setOrders(Collection<Orderss> orders) {
		this.orders = orders;
	}

	public Product(int id, String name, double count, int amount, Date date, String gender, String brand, String color,
			String images, String status, Collection<Orderss> orders) {
		super();
		this.id = id;
		this.name = name;
		this.count = count;
		this.amount = amount;
		this.date = date;
		this.gender = gender;
		this.brand = brand;
		this.color = color;
		this.images = images;
		this.status = status;
		this.orders = orders;
	}

	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}
