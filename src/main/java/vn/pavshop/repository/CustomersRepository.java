package vn.pavshop.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import vn.pavshop.entity.Customer;
import vn.pavshop.entity.Order;

import java.util.List;

public interface CustomersRepository extends CrudRepository<Customer, Integer> {

    @Query(value = "select *from customers where id = ?", nativeQuery = true)
    public Customer findCustomersLogin (String id);

}
