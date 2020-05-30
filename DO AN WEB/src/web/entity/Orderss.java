package web.entity;

import java.util.*;

import javax.persistence.*;
@Entity
@Table(name="Orders")
public class Orderss {
	@Id @GeneratedValue
	private int id_order;
	private int amount_product;
	@ManyToOne
	@JoinColumn(name="id_Product")
	private Product product;
	
	@ManyToOne
	@JoinColumn(name="id_Cart")
	private Cart cart;

	public int getId_order() {
		return id_order;
	}

	public void setId_order(int id_order) {
		this.id_order = id_order;
	}
	public int getAmount_product() {
		return amount_product;
	}

	public void setAmount_product(int amount_product) {
		this.amount_product = amount_product;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}

	public Orderss(int id_order, int amount_product, Product product, Cart cart) {
		super();
		this.id_order = id_order;

		this.amount_product = amount_product;
		this.product = product;
		this.cart = cart;
	}

	public Orderss() {
		super();
		// TODO Auto-generated constructor stub
	}

	
}
