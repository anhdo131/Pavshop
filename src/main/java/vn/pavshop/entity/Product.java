package vn.pavshop.entity;

import java.io.Serializable;
import java.util.Collection;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.google.common.base.MoreObjects;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "products")
@Data
public class Product implements Serializable {
    @Id
    @GeneratedValue
    Integer id;
    String name;
    String unitBrief;
    Double unitPrice;
    String image;
    Integer view;
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern = "yyyy-MM-dddd")
    Date productDate;
    String description;
    Integer quantity;
    Double discount;
    @ManyToOne
    @JoinColumn(name = "categoryId")
    Category category;
    @ManyToOne
    @JoinColumn(name = "supplierId")
    Supplier supplier;
    @OneToMany(mappedBy = "product")
    Collection<OrderDetail> orderDetails;

    @Override
    public String toString() {
        return MoreObjects.toStringHelper(this)
                .toString();
    }
}
