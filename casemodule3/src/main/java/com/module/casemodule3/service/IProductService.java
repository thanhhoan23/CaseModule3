package com.module.casemodule3.service;

import com.module.casemodule3.model.Product;

import java.util.List;

public interface IProductService {
void insertProduct(Product product);
Product selectProduct(int id);
List<Product> selectAllProduct();
boolean deleteProduct(int id);
boolean updateProduct(Product product);
}
