package web.entity;

import java.util.Collection;

import javax.persistence.*;
@Entity
@Table(name="Carts")
public class Cart {
	@Id @GeneratedValue
	private int idcart;
	private String name_user;
	private String phone;
	private String address;
	private long sum_money;
	@OneToMany(mappedBy = "cart",fetch = FetchType.EAGER)
	private Collection<Orderss> orders;
	public int getIdcart() {
		return idcart;
	}
	public void setIdcart(int idcart) {
		this.idcart = idcart;
	}
	public String getName_user() {
		return name_user;
	}
	public void setName_user(String name_user) {
		this.name_user = name_user;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public long getSum_money() {
		return sum_money;
	}
	public void setSum_money(long sum_money) {
		this.sum_money = sum_money;
	}
	public Collection<Orderss> getOrders() {
		return orders;
	}
	public void setOrders(Collection<Orderss> orders) {
		this.orders = orders;
	}
	public Cart(int idcart, String name_user, String phone, String address, long sum_money, Collection<Orderss> orders) {
		super();
		this.idcart = idcart;
		this.name_user = name_user;
		this.phone = phone;
		this.address = address;
		this.sum_money = sum_money;
		this.orders = orders;
	}
	public Cart() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	
	
}
