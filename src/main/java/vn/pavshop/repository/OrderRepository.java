package vn.pavshop.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import vn.pavshop.entity.Order;

import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
public interface OrderRepository extends CrudRepository<Order, Integer> {

    //List sản phẩm đã order by custommer ID
    @Query(value = "select *from orders where customerId = ?", nativeQuery = true)
    public List<Order> listoderbycus (String customerId);

}
