package vn.pavshop.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import vn.pavshop.entity.Category;
import vn.pavshop.entity.Product;
import vn.pavshop.entity.Supplier;
import vn.pavshop.repository.CategoryRepository;
import vn.pavshop.repository.OrderDetailRepository;
import vn.pavshop.repository.ProductRepository;
import vn.pavshop.repository.SuppliersRepository;

import java.util.List;

@Controller
@RequestMapping(value = "/")
public class AdminController {

    @Autowired
    CategoryRepository categoryRepository;

    @Autowired
    SuppliersRepository suppliersRepository;

    @Autowired
    ProductRepository productRepository;

    @Autowired
    OrderDetailRepository orderDetailRepository;

    public AdminController(CategoryRepository categoryRepository, SuppliersRepository suppliersRepository, ProductRepository productRepository, OrderDetailRepository orderDetailRepository) {
        this.productRepository = productRepository;
        this.orderDetailRepository = orderDetailRepository;
        this.categoryRepository = categoryRepository;
        this.suppliersRepository = suppliersRepository;
    }

    @RequestMapping(value = "/admin/user")
    public String admin(Model model) {
        return "admin/user";
    }

    // Hiển thị ListProduct ở trang admin
    @RequestMapping(value = "/admin/listproduct")
    public String listProduct(Model model) {
        return "admin/listproduct";
    }


    @RequestMapping(value = "/admin/tablelist")
    public String tables(Model model) {
        return "admin/tablelist";
    }


    // show check out page
    @RequestMapping(value = "/admin/addcategory")
    public String checkOut(Model model) {
        Category category = new Category();
        model.addAttribute("category", category);
        return "admin/addcategory";
    }


    // thêm category
    @RequestMapping(value = "/admin/addcategory", method = RequestMethod.POST)
    public String addCourse(@Validated @ModelAttribute("category") Category category,
                            ModelMap model,
                            BindingResult bindingResult) {
        Category c = categoryRepository.save(category);
        if (bindingResult.hasErrors()) {
            model.addAttribute("message", "vui lòng");
            return "/admin/addcategory";
        } else {
            model.addAttribute("message", "Chúc mừng");
        }
        return "admin/tablelist";
    }


    /// list category ở table list
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

    @ModelAttribute("productList")
    public List<Product> showproduct(Model model) {
        List<Product> productList =
                (List<Product>) productRepository.listproductdesc();
        return productList;
    }

    // Edit category
    @RequestMapping(value = "/admin/editCategory", method = RequestMethod.GET)
    public String editCategory(@RequestParam("id") int id,
                               ModelMap model) {
        model.addAttribute("category1", categoryRepository.findById(id));
        return "admin/editcategory";
    }

    @RequestMapping(value = "/admin/editCategory", method = RequestMethod.POST)
    public String editStudent(@ModelAttribute("category") Category category, Model model, RedirectAttributes rs) {
        Category cs = categoryRepository.save(category);
        if (null != cs) {
            model.addAttribute("message", "Update success");
            model.addAttribute("category", categoryRepository.findById(cs.getId()));
        } else {
            model.addAttribute("message", "Update failure");
            model.addAttribute("category", category);
        }
        return "admin/tablelist";
    }

    /// delete Category
    @RequestMapping(value = "delete/{id}", method = RequestMethod.GET)
    public String addCourse(@PathVariable("id") int id, ModelMap model) {
        categoryRepository.deleteById(id);
        return "redirect:/admin/tablelist";
    }

}
