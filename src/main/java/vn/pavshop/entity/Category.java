package vn.pavshop.entity;


import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Collection;

@Entity
@Table(name = "categories")
@Data
public class Category implements Serializable {
    @Id
    @GeneratedValue
    Integer id;
    String nameVN;
    String name;
    @OneToMany(mappedBy = "category", fetch = FetchType.EAGER)
    Collection<Product> products;
}
