package com.module.casemodule3.service;

import com.module.casemodule3.model.Product;

import java.sql.SQLException;
import java.util.List;

public interface IProductService {
    void insertProduct(Product product);

    Product selectProduct(int id);

    List<Product> selectAllProduct();

    boolean deleteProduct(int id);

    boolean updateProduct(Product product);

    //Phân trang va tim kiem
    List<Product> selecAllProduct(int i, int recordsPerPage, String search) throws SQLException;

    int getNoOfRecords();
}
