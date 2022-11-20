package com.example.thuchanh.service;

import com.example.thuchanh.model.Product;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductService implements IProductService{
    private static final String INSERT_PRODUCT = "INSERT INTO `product` (`name`, `price`, `quantity`, `color`, `description`, `idcategory`) VALUES (?, ?, ?, ?, ?, ?)";
    private static final String SELECT_PRODUCT_BY_ID = "SELECT * FROM product WHERE idproduct = ?";
    private static final String SELECT_ALL_PRODUCT = "SELECT  * FROM product";
    private static final String DELETE_PRODUCT_BY_ID = "DELETE FROM `product` WHERE (`idproduct` = ?);";
    private static final String UPDATE_PRODUCT = "UPDATE `product` SET `name` = ?, `price` = ?, `quantity` = ?, `color` = ?, `description`=?, `idcategory` = ? WHERE (`idproduct` = ?)" ;
    private String jdbcURL = "jdbc:mysql://localhost:3306/thuchanh?useSSL=false";
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
            PreparedStatement prepareStatement = connection.prepareStatement(INSERT_PRODUCT);
            prepareStatement.setString(1,product.getNameProduct());
            prepareStatement.setDouble(2, product.getPrice());
            prepareStatement.setInt(3,product.getQuantity());
            prepareStatement.setString(4,product.getColor());
            prepareStatement.setString(5,product.getDescription());
            prepareStatement.setInt(6,product.getIdCategory());
            prepareStatement.executeUpdate();
            prepareStatement.close();
            System.out.println(this.getClass() + "insertProduct(): " + prepareStatement );

//            `nameproduct`, `price`, `quantity`, `color`, `description`

        }catch (SQLException e) {
            e.printStackTrace();
        }
        
    }

    @Override
    public Product selectProduct(int id) {
        Connection connection = getConnection();
        Product product = new Product();
        try {
           PreparedStatement preparedStatement= connection.prepareStatement(SELECT_PRODUCT_BY_ID);
           preparedStatement.setInt(1,id);
           ResultSet rs=preparedStatement.executeQuery();
           while (rs.next()) {
               int idproduct = rs.getInt("idproduct");
               String name = rs.getString("name");
               double price = rs.getDouble("price");
               int quantity = rs.getInt("quantity");
               String color = rs.getString("color");
               String description = rs.getString("description");
               int idcategory = rs.getInt("idcategory");
               product = new Product(idproduct,name,price,quantity,color,description,idcategory);
           }
        }catch (SQLException e) {
            e.printStackTrace();
        }
        return product;
    }

    @Override
    public List<Product> selectAllProduct() {
        Connection connection =getConnection();
        List<Product> listProduct = new ArrayList<>();
        try {
            PreparedStatement preparedStatement =connection.prepareStatement(SELECT_ALL_PRODUCT);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int idproduct = rs.getInt("idproduct");
                String name = rs.getString("name");
                double price = rs.getDouble("price");
                int quantity = rs.getInt("quantity");
                String color = rs.getString("color");
                String description = rs.getString("description");
                int idcategory = rs.getInt("idcategory");
                listProduct.add(new Product(idproduct,name,price,quantity,color,description,idcategory));
            }
            
        }catch (SQLException e) {
            e.printStackTrace();
        }
        return listProduct;
    }

    @Override
    public boolean deleteProduct(int id) {
        Connection connection = getConnection();
        boolean check = false;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE_PRODUCT_BY_ID);
            preparedStatement.setInt(1,id);
            check = preparedStatement.executeUpdate()>0;

        }catch (SQLException e) {
            e.printStackTrace();
        }
        return check;
    }

    @Override
    public boolean updateProduct(Product product) {
        boolean check = false;
        Connection connection = getConnection();
        try{
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_PRODUCT);
            preparedStatement.setString(1,product.getNameProduct());
            preparedStatement.setDouble(2, product.getPrice());
            preparedStatement.setInt(3,product.getQuantity());
            preparedStatement.setString(4,product.getColor());
            preparedStatement.setString(5,product.getDescription());
            preparedStatement.setInt(6,product.getIdCategory());
            check = preparedStatement.executeUpdate()>0;
            preparedStatement.close();
        }catch (SQLException e) {
            e.printStackTrace();
        }
        return check;
    }
    @Override
    public List<Product> selecAllProduct(String search) throws SQLException {
        Connection connection = getConnection();
        List<Product> listProduct = new ArrayList<>();
        String query = "SELECT SQL_CALC_FOUND_ROWS * FROM product where name like ?";
        PreparedStatement ps = connection.prepareStatement(query);
        ps.setString(1, "%" + search + "%");
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            int idproduct = rs.getInt("idproduct");
            String name = rs.getString("name");
            double price = rs.getDouble("price");
            int quantity = rs.getInt("quantity");
            String color = rs.getString("color");
            String description = rs.getString("description");
            int category = rs.getInt("idcategory");
            listProduct.add(new Product(idproduct,name,price,quantity,color,description,category));
        }
        connection.close();
        return listProduct;
    }

}
