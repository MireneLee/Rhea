package web.controller;

import java.io.File;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.sun.xml.internal.ws.api.policy.PolicyResolver.ServerContext;

import web.entity.ListDS;
import web.entity.Product;

@Controller
@Transactional
@RequestMapping("/admin/")
public class AdminController {
	@Autowired
	SessionFactory factory;

	@Autowired
	UserController uc;// lien ket controller voi nhau

	@RequestMapping("/homeForm")
	public String index(ModelMap model) {
		Session session = factory.getCurrentSession();

		String hqlpro = "FROM Product";
		Query querypro = session.createQuery(hqlpro);
		List<Product> listpro = querypro.list();
		model.addAttribute("product", listpro);

		String hqlli = "FROM ListDS";
		Query queryli = session.createQuery(hqlli);
		List<ListDS> listli = queryli.list();
		model.addAttribute("list", listli);
		model.addAttribute("dem", uc.dem);
		return "trangchu";
	}

//	@RequestMapping("index")
//	public String index(ModelMap model) {
//		Session session = factory.getCurrentSession();
//
//		String hql = "FROM User";
//		Query query = session.createQuery(hql);
//		List<User> list = query.list();
//
//		model.addAttribute("users", list);
//		return "user/index";
//
//	}
	// save sản phẩm
	@RequestMapping(value = "/savepro", method = RequestMethod.GET)
	public String savepro(ModelMap model) {
		model.addAttribute("pro", new Product());
		return "admin/save";
	}

	@Autowired
	ServletContext context;

	@RequestMapping(value = "/savepro", method = RequestMethod.POST)
	public String savepro(ModelMap model, @RequestParam(value = "images") MultipartFile img1, HttpServletRequest re) {
		Product product = new Product();
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();

		try {
			product.setName(re.getParameter("name"));
			product.setCount(Integer.parseInt(re.getParameter("count")));
			product.setAmount(Integer.parseInt(re.getParameter("amount")));
			product.setGender(re.getParameter("gender"));
			product.setBrand(re.getParameter("brand"));
			product.setColor(re.getParameter("color"));
			product.setDate(new Date());
			product.setStatus("false");
			// saveImage(img1);
			String img1path = context.getRealPath("./images/"+img1.getOriginalFilename());
			img1.transferTo(new File(img1path));
			product.setImages(img1.getOriginalFilename());
			session.save(product);
			t.commit();
			model.addAttribute("message", "Lưu thành công !");

		} catch (Exception e) {
			// TODO: handle exception
			t.rollback();
			model.addAttribute("message", "Lưu thất bại!");
		} finally {
			session.close();
		}
		return "admin/save";
	}

	@RequestMapping("/home")
	public String admin_home() {

		return "admin/home";
	}
	// show sản phẩm admin và xóa sửa
	@RequestMapping(value = "/pro", method = RequestMethod.GET)
	public String delete_product(ModelMap model, HttpServletRequest request) {
		Session session = factory.getCurrentSession();
		String hql = "FROM Product";
		Query query = session.createQuery(hql);
		List<Product> list = query.list();
		model.addAttribute("product", list);
		return "admin/product-admin";
	}
	// xóa
	@RequestMapping(value = "/pro", method = RequestMethod.POST)
	public String delete_product(ModelMap model, Product product, HttpServletRequest request) {
		Session session = factory.openSession();
		String hql = "FROM Product";
		Transaction t = session.beginTransaction();
		Query query = session.createQuery(hql);
		List<Product> list = query.list();
		int idpro = Integer.parseInt(request.getParameter("idpro"));
		for (Product pro : list) {
			if (pro.getId() == idpro) {
				try {
					session.delete(pro);
					t.commit();
					model.addAttribute("message", "Xóa thành công !");
					return "redirect:/admin/pro.htm";
				} catch (Exception e) {
					// TODO: handle exception
					t.rollback();
					model.addAttribute("message", "Xóa thất baị !");

					return "redirect:/admin/pro.htm";
				} finally {
					session.close();
				}
			}
		}
		return "admin/product-admin";
	}

	@RequestMapping("/control")
	public String control_pro() {

		return "admin/control-pro";
	}

	int idpro = 0;

	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String update_pro(ModelMap model, Product product, HttpServletRequest request) {
		Session session = factory.openSession();
		String hql = "FROM Product";
		Query query = session.createQuery(hql);
		List<Product> list = query.list();
		idpro = Integer.parseInt(request.getParameter("idpro"));
		for (Product pro : list) {
			if (pro.getId() == idpro) {
				model.addAttribute("prod", pro);

			}

		}
		return "admin/update";
	}
	// update
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String supdate_pro(ModelMap model, @ModelAttribute("prod") Product product) {

		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		String hql = "FROM Product";
		Query query = session.createQuery(hql);
		List<Product> list = query.list();
		for (Product p : list) {
			if (p.getId() == idpro) {

				try {

					p.setAmount(product.getAmount());
					p.setBrand(product.getBrand());
					p.setColor(product.getColor());
					p.setCount(product.getCount());
					p.setGender(product.getGender());
					p.setName(product.getName());
					product.setDate(new Date());
					session.update(p);
					t.commit();
					model.addAttribute("message", "Cập nhật thành công !");

				} catch (Exception e) {
					// TODO: handle exception
					t.rollback();
					model.addAttribute("message", "Cập nhật thất bại!");

				} finally {
					session.close();
				}
			}
		}
		return "admin/update";
	}

//	public void saveImage(MultipartFile image) {
//		try {
//			image.transferTo(new File(
//					"C:\\Users\\HP\\eclipse-workspace\\DO AN WEB\\WebContent\\images\\" + image.getOriginalFilename()));
//		} catch (Exception e) {
//			System.out.println("Lỗi Lưu Ảnh");
//			e.printStackTrace();
//		}
//	}
}
