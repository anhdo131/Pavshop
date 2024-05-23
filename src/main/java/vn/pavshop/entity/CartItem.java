package vn.pavshop.entity;

import lombok.Data;

@Data
public class CartItem {
    private Product product;
    private int quantity;
    private Double totalPrice;
}