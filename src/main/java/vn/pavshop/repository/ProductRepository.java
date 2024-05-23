package vn.pavshop.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import vn.pavshop.entity.Product;

import java.util.List;

@Repository
public interface ProductRepository  extends CrudRepository<Product, Integer>{


    @Query(value = " select  *from products where id = ?" , nativeQuery = true)
    public Product findByIdProduct (int id);

    //Hiển thị danh sách product mới nhất  ở trang chủ LIMIT = 6
    @Query(value = " SELECT * FROM products ORDER BY productDate DESC limit 8" , nativeQuery = true)
    public List<Product> listproduct6 ();

    //List Sản phẩm by danh mục
    @Query(value = "select  *from products where categoryId = ? ", nativeQuery = true)
    public List<Product> listproductBycategory (int categoryId);


    //List Sản phẩm by danh mục
    @Query(value = "select  *from products where categoryId = ? ORDER BY productDate DESC limit 4", nativeQuery = true)
    public List<Product> findByCategoryId (int categoryId);

    //List Sản phẩm by nhà cung cấp
    @Query(value = "select  *from products where supplierId = ? ", nativeQuery = true)
    public List<Product> listproductBysupper (int supplierId);

    @Query(value = "select *from products ORDER BY id desc", nativeQuery = true)
    public List<Product> listproductdesc ();


    //Tìm kiểm sản phẩm
    @Query(value = "select *from products where name LIKE %:name%", nativeQuery = true)
    public List<Product> searchProduct(String name);

    List<Product> findByNameContainingOrCategoryNameContaining(String productName, String categoryName);

    //lọc giá cả
    @Query(value = "SELECT * FROM products WHERE unitPrice >= 1 AND unitPrice <= 5 " , nativeQuery = true)
    public List<Product> filterprice();

    //lọc giá cả
    @Query(value = "SELECT * FROM products WHERE unitPrice >= 5 AND unitPrice <= 10 " , nativeQuery = true)
    public List<Product> filterprice010();

    //lọc giá cả
    @Query(value = "SELECT * FROM products WHERE unitPrice >= 10 AND unitPrice <= 15 " , nativeQuery = true)
    public List<Product> filterprice1015();


    //lọc giá cả
    @Query(value = "SELECT * FROM products WHERE unitPrice >= 15 AND unitPrice <= 20 " , nativeQuery = true)
    public List<Product> filterprice1520();

    //lọc giá cả
    @Query(value = "select  *from  products where unitPrice >= 20 " , nativeQuery = true)
    public List<Product> filterprice20();

    // tìm kiếm sản phẩm sale
    @Query(value = "SELECT * FROM  products where discount = ?" , nativeQuery = true)
    public  List<Product> sale(Double discount);

}
