package vn.pavshop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import vn.pavshop.entity.*;
import vn.pavshop.repository.OrderDetailRepository;
import vn.pavshop.repository.OrderRepository;
import vn.pavshop.repository.ProductRepository;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
public class CartController extends BaseController {

    @Autowired
    ProductRepository productRepository;

    @Autowired
    OrderRepository orderRepository;

    @Autowired
    OrderDetailRepository orderDetailRepository;

    public CartController(ProductRepository productRepository, OrderRepository orderRepository, OrderDetailRepository orderDetailRepository) {
        this.productRepository = productRepository;
        this.orderRepository = orderRepository;
        this.orderDetailRepository = orderDetailRepository;
    }

    @GetMapping(value = "addToCart")
    public String addToCart(@RequestParam(value = "id") String id,
                            HttpServletRequest request) {
        int productId = Integer.valueOf(id);
        Product product =
                productRepository.findByIdProduct(productId);

        HttpSession session = request.getSession();
        List<CartItem> carts =
                (List<CartItem>) session.getAttribute("carts");
        if (carts != null) {
            boolean isExistingId = false;
            for (CartItem item : carts) {
                // da co 1 product ID trong cart -> tang quantity len 1
                if (item.getProduct().getId() == productId) {
                    item.setQuantity(item.getQuantity() + 1);
                    isExistingId = true;
                    break;
                }
            }
            if (!isExistingId) {
                CartItem cartItem = new CartItem();
                cartItem.setQuantity(1);
                cartItem.setProduct(product);
                carts.add(cartItem);
            }
        } else {
            carts = new ArrayList<>();
            CartItem cartItem = new CartItem();
            cartItem.setQuantity(1);
            cartItem.setProduct(product);
            carts.add(cartItem);
        }

        double totalPrice = 0;
        for (CartItem cartItem : carts) {
            double price = cartItem.getQuantity() * cartItem.getProduct().getUnitPrice();
            totalPrice += price;
        }

        session.setAttribute("totalPrice", totalPrice);
        session.setAttribute("carts", carts);

        return "redirect:/shoppingCart";
    }


    @GetMapping(value = "shoppingCart")
    public String viewCart(Model model, HttpServletRequest request) {
        HttpSession httpSession = request.getSession();
        Object s = httpSession.getAttribute("SPRING_SECURITY_CONTEXT");
        return "shoppingCart";
    }


    @GetMapping(value = "/checkout")
    public String checkOut(Model model, HttpServletRequest request) {
        HttpSession httpSession = request.getSession();
        Order order = new Order();
        model.addAttribute("order", order);

        return "checkOut";
    }


    // handle form submit
    @PostMapping(value = "/checkout")
    @Transactional
    public String doCheckOut(Model model,
                             Order order,
                             HttpServletRequest request) {
        HttpSession session = request.getSession();

        orderRepository.save(order);

        List<CartItem> cartItems
                = (List<CartItem>) session.getAttribute("carts");
        double totalPrice = 0;

        for (CartItem cartItem : cartItems) {
            OrderDetail orderDetail = new OrderDetail();
            orderDetail.setQuantity(cartItem.getQuantity());
            orderDetail.setProduct(cartItem.getProduct());
            orderDetail.setOrder(order);
            double price = cartItem.getQuantity() * cartItem.getProduct().getUnitPrice();
            totalPrice += price;
            orderDetail.setTotalPrice(price);
            orderDetail.setStatus("Đang Giao Dịch");
            orderDetailRepository.save(orderDetail);
        }
        order.setTotalPrice(totalPrice);
        Date date = new Date();
        order.setOrderDate(date);
        orderRepository.save(order);
        order.getId();
        System.out.println(order.getId());

        session.removeAttribute("carts");
//        session.setAttribute("carts", null);
//        session.invalidate();
        model.addAttribute("orderId", order.getId());
        return "checkout_success";
    }


    @InitBinder
    public void initBinder(WebDataBinder binder) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        sdf.setLenient(true);
        binder.registerCustomEditor(Date.class,
                new CustomDateEditor(sdf, true));
    }
}
