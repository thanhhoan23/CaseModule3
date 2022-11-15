package com.module.casemodule3.service;

import com.module.casemodule3.model.Product;

import java.sql.*;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

public class ProductService implements IProductService{
    private static final String INSERT_PRODUCT = "INSERT INTO `product` (`name`, `price`, `quantity`, `idcolor`, `idsize`, `idcategory`, `create_datetime`, `image`) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
    private static final String SELECT_ALL_PRODUCT = "SELECT * FROM product";
    private static final String SELECT_PRODUCT_BY_ID = "SELECT * FROM product WHERE idproduct =?";

    private static final String UPDATE_PRODUCT = "UPDATE `product` SET `name` = ?, `price` = ?, `quantity` = ?, `idcolor` = ?, `idsize` = ?, `idcategory` = ?, `update_datetime` = ?, `image`=? WHERE (`idproduct` = ?);";
    private static final String DELETE_PRODUCT_BY_ID ="DELETE FROM product WHERE idproduct= ?" ;
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
        Connection connection = getConnection();
        Product product = new Product();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_PRODUCT_BY_ID);
            preparedStatement.setInt(1,id);
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            System.out.println(rs);
            while (rs.next()) {
                int idproduct = rs.getInt("idproduct");
                String name = rs.getString("name");
                double price = rs.getDouble("price");
                int quantity =rs.getInt("quantity");
                int idColor= rs.getInt("idcolor");
                int idSize = rs.getInt("idsize");
                int idCategory = rs.getInt("idcategory");
                Date createDateTime = rs.getDate("create_datetime");
                Date updateDateTime = rs.getDate("update_datetime");
                String image = rs.getString("image");
                product =new Product(idproduct,name,price,quantity,idColor,idSize, idCategory,createDateTime,updateDateTime,image);

            }
        }catch(SQLException e) {
            e.printStackTrace();
        }
        return product;
    }

    @Override
    public List<Product> selectAllProduct() {
        Connection connection = getConnection();
        List<Product> listProduct = new ArrayList<>();
        try {
            PreparedStatement preparedStatement =connection.prepareStatement(SELECT_ALL_PRODUCT);
            ResultSet rs =preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("idproduct");
                String name = rs.getString("name");
                double price = rs.getDouble("price");
                int quantity =rs.getInt("quantity");
                int idColor= rs.getInt("idcolor");
                int idSize = rs.getInt("idsize");
                int idCategory = rs.getInt("idcategory");
                Date createDateTime = rs.getDate("create_datetime");
                Date updateDateTime = rs.getDate("update_datetime");
                String image = rs.getString("image");
                listProduct.add(new Product(id,name,price,quantity,idColor,idSize, idCategory,createDateTime,updateDateTime,image));

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
        boolean check=false;
        Connection connection= getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_PRODUCT);
            preparedStatement.setString(1,product.getName());
            preparedStatement.setDouble(2,product.getPrice());
            preparedStatement.setInt(3, product.getQuantity());
            preparedStatement.setInt(4,product.getIdColor());
            preparedStatement.setInt(5,product.getIdSize());
            preparedStatement.setInt(6, product.getIdCategory());
            preparedStatement.setDate(7,Date.valueOf(LocalDate.now()));
            preparedStatement.setString(8,product.getImage());
            preparedStatement.setInt(9,product.getIdProduct());
            System.out.println(this.getClass() + "update" + preparedStatement);
            check = preparedStatement.executeUpdate()>0;
            connection.close();

        }catch (SQLException e) {
            e.printStackTrace();
        }
        return check;
    }
}
