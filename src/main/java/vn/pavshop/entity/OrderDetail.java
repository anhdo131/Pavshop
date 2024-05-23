package vn.pavshop.entity;

import com.google.common.base.MoreObjects;
import lombok.Data;

import java.io.Serializable;

import javax.persistence.*;

@Entity
@Table(name = "orderdetails")
@Data
public class OrderDetail implements Serializable {
    @Id
    @GeneratedValue
    Integer id;
    Double unitPrice;
    Integer quantity;
    Double discount;
    String status;
    @Column(name = "total_price")
    private double totalPrice;
    @ManyToOne
    @JoinColumn(name = "orderId")
    Order order;
    @ManyToOne
    @JoinColumn(name = "productId")
    Product product;

    @Override
    public String toString() {
        return MoreObjects.toStringHelper(this)
                .toString();
    }
}
