package vn.pavshop.entity;

import com.google.common.base.MoreObjects;
import lombok.Data;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import java.io.Serializable;
import java.util.Collection;

import javax.persistence.*;

@Entity
@Table(name="suppliers")
@Data
public class Supplier implements Serializable {
	@Id
	@GeneratedValue
	Integer id;
	String name;
	String logo;
	String email;
	String phone;
	@OneToMany(mappedBy="supplier", fetch=FetchType.EAGER)
	Collection<Product> products;
}