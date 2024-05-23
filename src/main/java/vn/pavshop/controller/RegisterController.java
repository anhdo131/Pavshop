package vn.pavshop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import vn.pavshop.entity.Customer;
import vn.pavshop.entity.Role;
import vn.pavshop.repository.CustomersRepository;

@Controller
public class RegisterController extends BaseController {

	@Autowired
	CustomersRepository customersRepository;

	@Autowired
	BCryptPasswordEncoder bCryptPasswordEncoder;

//	@Autowired
//	RoleRepository roleRepository;
	
	@GetMapping(value = "register")
	public String register() {
		return "register";
	}


	// thêm category
	@RequestMapping(value = "/registered", method = RequestMethod.POST)
	public String addCourse(@ModelAttribute("customer") Customer customer, ModelMap model) {

		customer.setEnabled(true);
		customer.setRoleId("0");
		customer.setPassword(bCryptPasswordEncoder.encode(customer.getPassword()));

		Customer c = customersRepository.save(customer);
		Role role = new Role();
		role.setRole("ROLE_USER");
		role.setCustomer(customer);
		//roleRepository.save(role);
		if (null != c) {
			model.addAttribute("message", "Update success");
			model.addAttribute("customer",customer);
		} else {
			model.addAttribute("message", "Update failure");
			model.addAttribute("customer", customer);
		}
		return "redirect:/login";
	}

}
