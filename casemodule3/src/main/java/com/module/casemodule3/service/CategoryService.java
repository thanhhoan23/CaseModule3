package com.module.casemodule3.service;

import com.module.casemodule3.model.Category;
import com.module.casemodule3.model.Color;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CategoryService implements ICategoryService{
    private static final String SELECT_ALL_CATEGORY ="SELECT * FROM category" ;
    private static final String SELECT_CATEGORY_BY_ID = "SELECT * FROM category where idcategory = ?";
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
    public List<Category> selectAllCategory() {
        List<Category> listCategory = new ArrayList<>();
        Connection connection = getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_CATEGORY);
            ResultSet rs= preparedStatement.executeQuery();
            System.out.println(this.getClass() + " selectAllCategory: " + preparedStatement);
            while (rs.next()) {
                int idCategory= rs.getInt("idcategory");
                String nameCategory = rs.getString("namecategory");
                Category category = new Category(idCategory,nameCategory);
                listCategory.add(category);
            }
        }catch (SQLException e) {
            e.printStackTrace();
        }
        return listCategory;
    }

    @Override
    public Category selectByIdCategory(int id) {
        Connection connection = getConnection();
        Category category = new Category();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_CATEGORY_BY_ID);
            preparedStatement.setInt(1, id);

            ResultSet rs = preparedStatement.executeQuery();
            int idCategory= rs.getInt("idcategory");
            String nameCategory = rs.getString("namecategory");
            category = new Category(idCategory,nameCategory);
        }catch (SQLException e) {
            e.printStackTrace();
        }
        return category;
    }
}
