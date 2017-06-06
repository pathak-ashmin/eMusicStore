package com.emusicstore.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.emusicstore.model.Product;
import com.emusicstore.service.ProductService;

@Controller
@RequestMapping(value = "/product")
public class ProductController {
	
	@Autowired
	ProductService productService;
	
	@RequestMapping("/productList")
	public String getProducts(Model model){
		List<Product> products = productService.getProductList();
		model.addAttribute("products", products);
		
		return "productList";
		
	}
	

}
