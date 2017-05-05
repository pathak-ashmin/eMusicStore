package com.emusicstore.controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.emusicstore.dao.ProductDao;
import com.emusicstore.model.Product;

@Controller
public class AdminController {
	
	@Autowired
	ProductDao productDao;
	
	@RequestMapping("/admin")
	public String adminPage() {
		return "admin";
	}

	@RequestMapping("/admin/productInventory")
	public String inventoryPage(Model model) {
		model.addAttribute("products", productDao.getAllProducts());
		return "productInventory";
	}

	@RequestMapping("/admin/productInventory/addProduct")
	public String addProduct(Model model) {
		Product product = new Product();
		product.setProductCondition("New");
		product.setProductStatus("Active");
		product.setProductCategory("Instrument");

		model.addAttribute("product", product);
		return "addProduct";
	}

	@RequestMapping(value = "/admin/productInventory/addProduct", method = RequestMethod.POST)
	public String addProductPost(@Valid @ModelAttribute("product") Product product, BindingResult result, HttpServletRequest request) {
		
		if(result.hasErrors()){
			return "addProduct";
		}
		productDao.addProduct(product);

		/*
		 * String rootDirectory =
		 * request.getSession().getServletContext().getRealPath("/"); Path path
		 * = Paths.get(rootDirectory + "/WEB-INF/resources/images/" +
		 * product.getProductId() + ".png");
		 * 
		 * if(productImage != null && !productImage.isEmpty()){ try{
		 * productImage.transferTo(new File(path.toString())); }catch(Exception
		 * ex){ ex.printStackTrace(); throw new RuntimeException(
		 * "Failed to save product image"); } }
		 */

		return "redirect:/admin/productInventory";
	}

	@RequestMapping("/admin/productInventory/deleteProduct/{id}")
	public String deleteProduct(@PathVariable int id, Model model) {

		productDao.deleteProduct(id);

		return "redirect:/admin/productInventory";

	}

	@RequestMapping("/admin/productInventory/editProduct/{id}")
	public String updateProduct(@PathVariable("id") int id, Model model) {
		Product product = productDao.getProductById(id);

		model.addAttribute("product", product);
		return "editProduct";

	}

	@RequestMapping(value = "/admin/productInventory/editProduct", method = RequestMethod.POST)
	public String updateProduct(@Valid @ModelAttribute("product") Product product, BindingResult result) {
		
		if(result.hasErrors()){
			return "editProduct";
		}

		productDao.editProduct(product);

		return "redirect:/admin/productInventory";

	}

}
