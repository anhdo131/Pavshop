package vn.pavshop.entity;

import java.io.Serializable;
import java.util.Collection;
import java.util.Date;

import javax.persistence.*;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="orders")
@Data
public class Order implements Serializable {
	@Id
	@GeneratedValue
	Integer id;
	//String customerId;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern="MM/dd/yyyy")
	Date orderDate;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern="MM/dd/yyyy")
	Date requireDate;
	String receiver;
	String address;
	String description;
	Double amount;
	@Column(name = "total_price")
	private double totalPrice;
	@ManyToOne
	@JoinColumn(name="customerId")
	Customer customer;
	@OneToMany(mappedBy="order")
	Collection<OrderDetail> orderDetails;


}
