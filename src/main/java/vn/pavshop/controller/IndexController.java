package vn.pavshop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import vn.pavshop.entity.OrderDetail;
import vn.pavshop.entity.Product;
import vn.pavshop.repository.OrderDetailRepository;
import vn.pavshop.repository.ProductRepository;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Controller
public class IndexController extends BaseController {

    @Autowired
    ProductRepository productRepository;

    @Autowired
    OrderDetailRepository orderDetailRepository;

    private static final int dataPerPage = 9; // moi trang co 7 data
    private static int totalPages = 0;

    public IndexController(ProductRepository productRepository,OrderDetailRepository orderDetailRepository) {
        this.productRepository = productRepository;
        this.orderDetailRepository = orderDetailRepository;}

    @GetMapping(value = "")
    public String index(Model model, HttpServletRequest request) {
        List<Product> productList =
                (List<Product>) productRepository.listproduct6();
        HttpSession httpSession = request.getSession();
        return "index";
    }

    /// list product ở trang chủ
    @ModelAttribute("listproduct6")
    public List<Product> listproduct6(Model model) {
        List<Product> productList =
                (List<Product>) productRepository.listproduct6();
        return productList;
    }

    @ModelAttribute("producttop")
    public String reporttop(Model model) {
        OrderDetail orderDetail = new OrderDetail();
        model.addAttribute("orderDetail", orderDetail);
        List<Object[]> listTest1 =  orderDetailRepository.topdathangnhieu();
        model.addAttribute("listTest1", listTest1);
        return "producttop";
    }

    @RequestMapping(value = "detail")
    public String showProductDetail(
            @RequestParam("id") String id,
            Model model) {
        Optional<Product> product =
                productRepository.findById(Integer.valueOf(id));
        model.addAttribute("product", product);
        return "detail";
    }

    // show check out page
    @RequestMapping(value = "/header")
    public String showseachr(Model model, @RequestParam("name") String name) {
        List<Product> productList =
                (List<Product>) productRepository.searchProduct(name);
        model.addAttribute("productList", productList);
        return "shop";
    }

}
