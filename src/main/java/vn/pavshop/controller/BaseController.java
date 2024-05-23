package vn.pavshop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import vn.pavshop.entity.Category;
import vn.pavshop.entity.Customer;
import vn.pavshop.entity.Supplier;
import vn.pavshop.repository.CategoryRepository;
import vn.pavshop.repository.SuppliersRepository;

import java.security.Principal;
import java.util.List;

@Controller
@RequestMapping(value = "/")
public class BaseController {

    @Autowired
    CategoryRepository categoryRepository;

    @Autowired
    SuppliersRepository suppliersRepository;

    @ModelAttribute(value = "customer")
    public Customer initCustomer(Principal principal) {
        Customer customer = new Customer();
        if (principal != null) {
            customer = (Customer) ((Authentication) principal).getPrincipal();
        }
        return customer;
    }

    @ModelAttribute("categoryList")
    public List<Category> showCategory(Model model) {
        List<Category> categoryList =
                (List<Category>) categoryRepository.findAll();
        return categoryList;
    }

    @ModelAttribute("supplierList")
    public List<Supplier> supplierList(Model model) {
        List<Supplier> supplierList =
                (List<Supplier>) suppliersRepository.findAll();
        return supplierList;
    }

}
