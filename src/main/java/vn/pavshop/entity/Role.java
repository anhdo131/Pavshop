package vn.pavshop.entity;

import lombok.Data;

import javax.persistence.*;

@Entity
@Table(name = "role")
@Data
public class Role {
    @Id
    @GeneratedValue
    Integer id;
    String role;
    @ManyToOne
    @JoinColumn(name="customerId")
    Customer customer;
}
