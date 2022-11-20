package com.example.thuchanh.service;

import com.example.thuchanh.model.Product;

import java.sql.SQLException;
import java.util.List;

public interface IProductService {
    void insertProduct(Product product);
    Product selectProduct(int id);
    List<Product>selectAllProduct();
    boolean deleteProduct(int id);
    boolean updateProduct(Product product);
    List<Product> selecAllProduct( String search)throws SQLException;

}
