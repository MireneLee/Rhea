package web.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.hibernate.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import web.bean.Cart;
import web.entity.Orderss;
import web.entity.Product;
import web.entity.User;

@Transactional
@Controller
@RequestMapping("/user/")
public class UserController {
	@Autowired
	SessionFactory factory;
	String ten="";
	int idpro;
	@RequestMapping("index")
	public String index(ModelMap model) {
		Session session = factory.getCurrentSession();

		String hql = "FROM User";
		Query query = session.createQuery(hql);
		List<User> list = query.list();

		model.addAttribute("users", list);
		return "user/index";

	}
	// đăng ký
	@RequestMapping(value = "register", method = RequestMethod.GET)
	public String insert(ModelMap model) {
		model.addAttribute("user", new User());
		return "user/register";
	}

	@RequestMapping(value = "register", method = RequestMethod.POST)
	public String insert(ModelMap model, @ModelAttribute("user") User user,BindingResult bin) {

		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		if(user.getUsername().trim().length()==0) {
			bin.rejectValue("username","User","Vui lòng nhập user-name");
		}
		if(user.getPassword().trim().length()==0) {
			bin.rejectValue("password","User","Vui lòng nhập password");
		}
		if(user.getFirstname().trim().length()==0) {
			bin.rejectValue("firstname","User","Vui lòng nhập first-name");
		}
		if(user.getLastname().trim().length()==0) {
			bin.rejectValue("lastname","User","Vui lòng nhập last-name");
		}
		if(user.getEmail().trim().length()==0) {
			bin.rejectValue("email","User","Vui lòng nhập email");
		}
		if(user.getAddress().trim().length()==0) {
			bin.rejectValue("address","User","Vui lòng nhập address");
		}
		if(user.getPhone().trim().length()==0) {
			bin.rejectValue("phone","User","Vui lòng nhập số điện thoại");
		}
		if(bin.hasErrors()) {
			model.addAttribute("message", "Đăng kí không thành công");
			
		}else {
			
			try {
				user.setStatus("false");
				session.save(user);
				t.commit();
				model.addAttribute("message", "Đăng kí thành công !");
			} catch (Exception e) {
				// TODO: handle exception
				t.rollback();
				model.addAttribute("message", "Đăng kí thất baị !");
			} finally {
				session.close();
			}
		}
		
		return "user/register";
	}

	// đăng nhập
	@RequestMapping(value = "login", method = RequestMethod.GET)

	public String insert2(ModelMap model) {
		model.addAttribute("user", new User());
		return "user/login";
	}

	@RequestMapping(value = "login", method = RequestMethod.POST)

	public String insert2(ModelMap model, @ModelAttribute("user") User user) {
		Session session = factory.getCurrentSession();

		String hql = "FROM User";
		boolean check = true;
		Query query = session.createQuery(hql);
		List<User> list = query.list();
		for (User user1 : list) {
			if (user.getUsername().trim().equals(user1.getUsername().trim())&& user.getPassword().trim().equals(user1.getPassword().trim())) {
				check = false;
				if (check == false && user1.getStatus().equals("false")) {
					//model.addAttribute("message", "Đăng nhập thành công");
					ten=user1.getUsername();

					return "redirect:/admin/homeForm.htm";

				} else {

					//model.addAttribute("message", "Đăng nhập thất bại");
					return "redirect:/admin/home.htm";
				}
				
//				System.out.println(user.getUsername());
//				System.out.println(user1.getUsername());
//				System.out.println(user.getPassword());
//				System.out.println(user1.getPassword());
			}

		}
		
		return "user/login";
	}
	// show sản phẩm
	@RequestMapping(value="/show", method = RequestMethod.GET)
	public String show(ModelMap model,HttpServletRequest request) {
		
		idpro=Integer.parseInt(request.getParameter("idpro")) ;
		model.addAttribute("pro", payment(idpro));
		model.addAttribute("dem",dem);
		return"user/showpro";
	}
	
	@RequestMapping(value="/show", method = RequestMethod.POST)
	public String show() {
		return"user/showpro";
	}
	
	// trang thanh toán
	public static List<Cart> cartlist = new ArrayList<Cart>();
	@RequestMapping(value = "/down")
	public String down(ModelMap model,@RequestParam("idprod") int idprod, HttpServletRequest request) {
		for (Cart a : cartlist) {
			if(a.getId()==idprod && a.getAmount()>0) {
				a.setAmount(a.getAmount()-1);
			}
			if(a.getAmount()==0) {cartlist.remove(a);
			dem--;
			break;
			}
		}
		model.addAttribute("cartlist", cartlist);
		model.addAttribute("thanhtien",tongtien());
		model.addAttribute("dem",dem);
		return"user/payment";
	}
	
	// hàm tính tiền
	public long tongtien() {
		long tongtien=0;
		for (Cart a : cartlist) {
			
			tongtien=tongtien+a.thanhtien();
		}
		return tongtien;
	}
	
	// hàm đếm giỏ hàng
	public static int dem=0;
	@RequestMapping(value="/pay")
	public String pay(ModelMap model,@RequestParam("idprod") String idprod, HttpServletRequest request) {
		int idpro=Integer.parseInt(idprod);
		boolean isExit = false;
//		System.out.print("thu"+idpro+"ne");
		for (Cart a : cartlist) {
			if(a.getId()==idpro) {
				a.setAmount(a.getAmount()+1);
				isExit=true;
				break;
			}
			
		}
		if(!isExit) {
			dem++;
			Cart ghi = new Cart();
			ghi.setId(payment(idpro).getId());
			ghi.setName(payment(idpro).getName());
			ghi.setGender(payment(idpro).getGender());
			ghi.setColor(payment(idpro).getColor());
			ghi.setBrand(payment(idpro).getBrand());
			ghi.setCount(payment(idpro).getCount());
			ghi.setAmount(1);
			cartlist.add(ghi);
		}
		
		model.addAttribute("cartlist", cartlist);
		model.addAttribute("thanhtien",tongtien());
		model.addAttribute("dem",dem);
		return"user/payment";
	}
	
//	@RequestMapping(value="/pay", method = RequestMethod.POST)
//	public String pay() {
//		
//		return"user/payment";
//	}
	
	// hàm chung cho show và pay
	public Product payment(int masp) {
		ModelMap model=null;
		Session session =factory.getCurrentSession();
		
		String hql="FROM Product";
		Product p=null;
		Query query=session.createQuery(hql);
		List<Product> list=query.list();
		for(Product pro:list) {
			if(pro.getId()==masp) {
				p = pro;	
			}
		}
		return p;
	}
	
	@RequestMapping("/cart")
	public String cart(ModelMap model) {
		Session session=factory.getCurrentSession();// taoj 1 session 1 phien get laf de mo
		String hql="FROM User where username=:username";// truy van trong entity
		Query query=session.createQuery(hql);// tao truy van sql
	//	System.out.print(ten);
		query.setParameter("username", ten);//gan thanh ten
		List <User> userlist=query.list();//dua vao list
		model.addAttribute("cartlist",userlist );
		
		
		Session session1=factory.getCurrentSession();
		String hql1="FROM Product where id=:id";
		Query query1=session.createQuery(hql1);
	//	System.out.print(idpro);
		query1.setParameter("id", idpro);
		List <Product> prolist=query1.list();
		model.addAttribute("plist",cartlist );
		model.addAttribute("thanhtien",tongtien());
		return"user/cart";
	}
	
	@RequestMapping("/save")
	public String save(ModelMap model) {
		web.entity.Cart carts = new web.entity.Cart();
		Orderss od = new Orderss();
		Session session=factory.openSession();// taoj 1 session 1 phien get laf de mo
		Transaction t = session.beginTransaction();
		String hql="FROM User where username=:username";// truy van trong entity
		Query query=session.createQuery(hql);// tao truy van sql
		//System.out.print(ten);
		query.setParameter("username", ten);//gan thanh ten
		List <User> userlist=query.list();
		for (User user : userlist) {
			carts.setName_user(user.getFirstname()+" "+user.getLastname()+" "+user.getUsername());
			carts.setAddress(user.getAddress());
			carts.setPhone(user.getPhone());
			carts.setSum_money(tongtien()+30000);
		}//dua vao list
		System.out.print(carts);
		model.addAttribute("cartlist",userlist );
		
		
		Session session1=factory.getCurrentSession();
		String hql1="FROM Product where id=:id";
		Query query1=session.createQuery(hql1);
		//System.out.print(idpro);
		query1.setParameter("id", idpro);
		List <Product> prolist=query1.list();
		model.addAttribute("plist",cartlist );
		model.addAttribute("thanhtien",tongtien());
		try {
			session.save(carts);
			t.commit();
			model.addAttribute("message","Đặt hàng thành công");
		} catch (Exception e) {
			// TODO: handle exception
			t.rollback();
			model.addAttribute("message","Đặt hàng thất bại");
		}
		finally {
			session.close();
		}
		return"user/cart";
	}
	
	
}
