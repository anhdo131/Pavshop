package vn.pavshop.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import vn.pavshop.entity.Category;

import java.util.List;

@Repository
public interface CategoryRepository extends CrudRepository<Category, Integer> {

    //Tìm kiểm sản phẩm
    @Query(value = "SELECT  c.id , c.name ,\n" +
            "  COUNT(*) AS count\n" +
            "FROM products p\n" +
            "JOIN categories c ON p.categoryId = c.id\n" +
            "GROUP BY c.name, c.id;", nativeQuery = true)
    public List<Object[]> listAndCountCategory();


}

