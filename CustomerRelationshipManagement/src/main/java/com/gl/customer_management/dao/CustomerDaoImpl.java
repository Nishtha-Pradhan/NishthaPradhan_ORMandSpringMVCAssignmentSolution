package com.gl.customer_management.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.gl.customer_management.model.Customer;


@Repository
public class CustomerDaoImpl implements CustomerDao {
	@Autowired
	SessionFactory factory;

	@Override
	@Transactional 
	public void saveOrUpdate(Customer customer) {
		Session currentSession = factory.getCurrentSession();
		currentSession.saveOrUpdate(customer);
	}

	@Override
	@Transactional
	public void delete(int id) {
		Session currentSession = factory.getCurrentSession();
		Customer delCustomer = currentSession.get(Customer.class, id);
		currentSession.delete(delCustomer);
	}

	@Override
	@Transactional
	public Customer findById(int id) {
		Session currentSession = factory.getCurrentSession();
		Customer findCustomer = currentSession.get(Customer.class, id);
		return findCustomer;
	}

	@Override
	@Transactional
	public List<Customer> findAll() {
		Session currentSession = factory.getCurrentSession();
		Criteria c = currentSession.createCriteria(Customer.class);
		return c.list();
	}

}
