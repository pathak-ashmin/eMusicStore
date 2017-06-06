package com.emusicstore.service;

import java.util.List;

import com.emusicstore.model.Customer;

public interface CustomerService {

	void addCustomer(Customer customer);

	Customer getCustomerById(int customerId);

	List<Customer> getAllCustomers();

}
