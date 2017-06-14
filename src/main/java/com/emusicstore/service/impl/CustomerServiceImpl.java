package com.emusicstore.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.emusicstore.dao.CustomerDao;
import com.emusicstore.model.Customer;
import com.emusicstore.service.CustomerService;

@Service
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private CustomerDao customerDao;

	@Override
	public void addCustomer(Customer customer) {
		customerDao.addCustomer(customer);

	}

	@Override
	public Customer getCustomerById(int customerId) {
		return customerDao.getCustomerById(customerId);
	}

	@Override
	public List<Customer> getAllCustomers() {
		return customerDao.getAllCustomers();
	}

	@Override
	public Customer getCustomerByUserName(String username) {
		return customerDao.getCustomerByUserName( username);
	}

}
