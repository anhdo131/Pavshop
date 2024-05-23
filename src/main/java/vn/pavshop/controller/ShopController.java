package vn.pavshop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import vn.pavshop.entity.Category;
import vn.pavshop.entity.Product;
import vn.pavshop.repository.CategoryRepository;
import vn.pavshop.repository.OrderDetailRepository;
import vn.pavshop.repository.ProductRepository;
import vn.pavshop.repository.SuppliersRepository;

import java.util.ArrayList;
import java.util.List;

@Controller
public class ShopController extends BaseController {

    @Autowired
    ProductRepository productRepository;

    @Autowired
    CategoryRepository categoryRepository;

    @Autowired
    SuppliersRepository suppliersRepository;

    private static final int dataPerPage = 9; // moi trang co 9 data
    private static int totalPages = 0;

    public ShopController(ProductRepository productRepository, CategoryRepository categoryRepository , SuppliersRepository suppliersRepository) {
        this.productRepository = productRepository;
        this.categoryRepository = categoryRepository;
        this.suppliersRepository = suppliersRepository;
    }

    @GetMapping(value = "shop")
    public String shop(Model model,
                       @RequestParam(value = "page", required = false, defaultValue = "1") String page) {
        int selectedPage = Integer.valueOf(page);
        model.addAttribute("productList", getProductsPerPage(Integer.valueOf(selectedPage)));
        model.addAttribute("startPage", selectedPage);
        model.addAttribute("totalPages", totalPages);
        model.addAttribute("visiblePages", totalPages > 3 ? (totalPages / 2) : totalPages);
        return "shop";
    }

    private List<Product> getProductsPerPage(int page) {
        List<Product> productList = (List<Product>) productRepository.findAll();
        totalPages = (int) Math.ceil((double) productList.size() / dataPerPage);

        int start = (page - 1) * dataPerPage;
        int end = start + dataPerPage;
        if (end >= productList.size()) {
            end = productList.size();
        }
        List<Product> productsPerPage = new ArrayList<>();
        for (int i = start; i < end; i++) {
            productsPerPage.add(productList.get(i));
        }
        return productsPerPage;
    }

    @ModelAttribute("listAndCountCategory")
    public String listAndCountCategory(Model model) {
        List<Object[]> listAndCountCategory = categoryRepository.listAndCountCategory();
        model.addAttribute("listAndCountCategory", listAndCountCategory);
        return "listAndCountCategory";
    }

    @ModelAttribute("listAndCountSuppliers")
    public String listAndCountSuppliers(Model model) {
        List<Object[]> listAndCountSuppliers = suppliersRepository.listAndCountSuppliers();
        model.addAttribute("listAndCountSuppliers", listAndCountSuppliers);
        return "listAndCountSuppliers";
    }

    //product by category
    @RequestMapping(value = "productbycategory")
    public String showproductbyid(Model model, @RequestParam("categoryId") int categoryId) {
        List<Product> productList =
                (List<Product>) productRepository.listproductBycategory(categoryId);
        model.addAttribute("productList", productList);
        return "shop";
    }

    // product by supline
    @RequestMapping(value = "productbysupplier")
    public String showproductbysup(Model model, @RequestParam("supplierId") int supplierId) {
        List<Product> productList =
                (List<Product>) productRepository.listproductBysupper(supplierId);
        model.addAttribute("productList", productList);
        return "shop";
    }
}
