package com.gl.customer_management.contoller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gl.customer_management.dao.CustomerDao;
import com.gl.customer_management.model.Customer;

@Controller
@RequestMapping("customers")
public class CustomerController {

	@Autowired
	CustomerDao customerDao;

	@GetMapping("list")
	public String showStudetList(Model model) {
		List<Customer> customers = customerDao.findAll();
		model.addAttribute("customers", customers);
		return "customer-list";
	}

	@GetMapping("showFormToAdd")
	public String customerForm(Model model) {
		Customer customer = new Customer();
		model.addAttribute("customer", customer);
		return "customer-form";
	}

	@PostMapping("save")
	public String saveCustomer(Model model, @ModelAttribute("customer") Customer customer) {
		customerDao.saveOrUpdate(customer);
		return "redirect:/customers/list";
	}

	@GetMapping("update")
	public String updateCustomer(Model model, @RequestParam("id") int id) {
		Customer customer = customerDao.findById(id);
		System.out.println(customer);
		model.addAttribute("customer", customer);
		return "customer-form";
	}

	@GetMapping("delete")
	public String deleteCustomer(Model model, @RequestParam("id") int id) {
		customerDao.delete(id);
		return "redirect:/customers/list";
	}

}
