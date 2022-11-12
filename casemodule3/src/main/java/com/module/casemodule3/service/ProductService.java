package com.module.casemodule3.service;

import com.module.casemodule3.model.Product;

import java.sql.*;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

public class ProductService implements IProductService{
    private static final String INSERT_PRODUCT = "INSERT INTO `product` (`name`, `price`, `quantity`, `idcolor`, `idsize`, `idcategory`, `create_datetime`, `image`) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
    private String jdbcURL = "jdbc:mysql://localhost:3306/shoe_shop?useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "12345678";

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return connection;
    }

    @Override
    public void insertProduct(Product product) {
        Connection connection = getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_PRODUCT);
            preparedStatement.setString(1,product.getName());
            preparedStatement.setDouble(2,product.getPrice());
            preparedStatement.setInt(3,product.getQuantity());
            preparedStatement.setInt(4,product.getIdColor());
            preparedStatement.setInt(5,product.getIdSize());
            preparedStatement.setInt(6,product.getIdCategory());
            preparedStatement.setDate(7, Date.valueOf(LocalDate.now()));
            preparedStatement.setString(8,product.getImage());
            preparedStatement.executeUpdate();
            preparedStatement.close();
            System.out.println(this.getClass() + " insertProduct() : " + preparedStatement);

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public Product selectProduct(int id) {
//        Connection connection = getConnection();
//        PreparedStatement preparedStatement =connection.prepareStatement(SELECT_PRODUCT_BY_ID);
        return null;
    }

    @Override
    public List<Product> selectAllProduct() {
        return null;
    }

    @Override
    public boolean deleteProduct(int id) {
        return false;
    }

    @Override
    public boolean updateProduct(Product product) {
        return false;
    }
}
