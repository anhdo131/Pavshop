package vn.pavshop.controller.admin;


import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import vn.pavshop.entity.Category;
import vn.pavshop.entity.Product;
import vn.pavshop.entity.Supplier;
import vn.pavshop.repository.CategoryRepository;
import vn.pavshop.repository.ProductRepository;
import vn.pavshop.repository.SuppliersRepository;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping(value = "/")
public class ProductController {

    @Value("${pavshop-global-config.pathUploadImage}")
    private String pathUploadImage;

    @Autowired
    ProductRepository productRepository;

    @Autowired
    CategoryRepository categoryRepository;

    @Autowired
    SuppliersRepository suppliersRepository;

    public ProductController(CategoryRepository categoryRepository, SuppliersRepository suppliersRepository, ProductRepository productRepository) {
        this.productRepository = productRepository;
        this.categoryRepository = categoryRepository;
        this.suppliersRepository = suppliersRepository;
    }

    //// show trang add product
    @RequestMapping(value = "/admin/addproduct")
    public String addproduct(Model model) {
        Product product = new Product();
        model.addAttribute("product", product);
        return "admin/addproduct";
    }

    // thêm category
    @RequestMapping(value = "/admin/addproduct", method = RequestMethod.POST)
    public String addProduct(@ModelAttribute("product") Product product,
                             ModelMap model,
                             @RequestParam("file") MultipartFile file
            , HttpServletRequest httpServletRequest) {

        try {

            File convFile = new File( pathUploadImage + "/"+file.getOriginalFilename());
            FileOutputStream fos = new FileOutputStream( convFile );
            fos.write( file.getBytes() );
            fos.close();
        }catch (IOException e){

        }


        product.setImage(file.getOriginalFilename());
        Product p = productRepository.save(product);
        if (null != p) {
            model.addAttribute("message", "Update success");
            model.addAttribute("product", product);
        } else {
            model.addAttribute("message", "Update failure");
            model.addAttribute("product", product);
        }
        return "redirect:/admin/listproduct";
    }

    // showw select option ở add
    @ModelAttribute("categoryList")
    public List<Category> showCaegory(Model model) {
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

    // Edit product
    @RequestMapping(value = "/admin/editproduct", method = RequestMethod.GET)
    public String editSupper(@RequestParam("id") int id,
                             Model model) {
        Optional<Product> product = productRepository.findById(id);
        model.addAttribute("product1", product);
        return "admin/editproduct";
    }

    // product by category
    @RequestMapping(value = "/admin/editproduct", method = RequestMethod.POST)
    public String editSupp(@ModelAttribute("product") Product product, Model model,
                           @RequestParam("file") MultipartFile file
            , HttpServletRequest httpServletRequest) {

        try {

            File convFile = new File( pathUploadImage + "/"+file.getOriginalFilename());
            FileOutputStream fos = new FileOutputStream( convFile );
            fos.write( file.getBytes() );
            fos.close();
        }catch (IOException e){

        }
        product.setImage(file.getOriginalFilename());
        Product cs = productRepository.save(product);
        if (null != cs) {
            model.addAttribute("message", "Update success");
            model.addAttribute("product", productRepository.findById(cs.getId()));
        } else {
            model.addAttribute("message", "Update failure");
            model.addAttribute("product", product);
        }
        return "admin/listproduct";
    }

    ///delete Category
    @RequestMapping(value = "deletepro/{id}", method = RequestMethod.GET)
    public String deleteProduct(@PathVariable("id") int id, ModelMap model) {
        productRepository.deleteById(id);
        return "redirect:/admin/listproduct";
    }

    @InitBinder
    public void initBinder(WebDataBinder binder) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        sdf.setLenient(true);
        binder.registerCustomEditor(Date.class,
                new CustomDateEditor(sdf, true));
    }
}
