package com.gl.customer_management.dao;

import java.util.List;

import com.gl.customer_management.model.Customer;

public interface CustomerDao {

	public void saveOrUpdate(Customer customer);
	public void delete(int id);
	public Customer findById(int id);
	public List<Customer>findAll();
}
