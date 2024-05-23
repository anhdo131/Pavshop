package vn.pavshop.controller;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import vn.pavshop.entity.Product;
import vn.pavshop.repository.ProductRepository;

import java.util.List;
import java.util.Optional;

@Controller
public class ProductDetailController extends BaseController {

    @Autowired
    ProductRepository productRepository;

    public ProductDetailController(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    @GetMapping(value = "productDetail")
    public String productDetail(@RequestParam("id") String id,
                                ModelMap modelMap) {
        Optional<Product> product =
                productRepository.findById(Integer.valueOf(id));

        List<Product> listProductByCategory = productRepository.findByCategoryId(product.get().getCategory().getId());

        if (product.isPresent()) {
            modelMap.addAttribute("product", product.get());
        }

        if (listProductByCategory != null) {
            modelMap.addAttribute("listProductByCategory", listProductByCategory);
        }

        return "productDetail";
    }
}
