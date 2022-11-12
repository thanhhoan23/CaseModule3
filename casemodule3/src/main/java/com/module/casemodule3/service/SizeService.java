package com.module.casemodule3.service;

import com.module.casemodule3.model.Color;
import com.module.casemodule3.model.Size;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class SizeService implements ISizeService{
    private static final String SELECT_ALL_SIZE = "SELECT * FROM size";
    private static final String SELECT_SIZE_BY_ID = "SELECT * FROM size where idsize = ?";
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
    public List<Size> selectAllSize() {
        List<Size> listSize = new ArrayList<>();
        Connection connection = getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_SIZE);
            ResultSet rs= preparedStatement.executeQuery();
            System.out.println(this.getClass() + " selectAllSize: " + preparedStatement);
            while (rs.next()) {
                int idSize= rs.getInt("idsize");
                int numberSize = rs.getInt("numbersize");
                Size size = new Size(idSize,numberSize);
                listSize.add(size);
            }
        }catch (SQLException e) {
            e.printStackTrace();
        }
        return listSize;

    }

    @Override
    public Size selectByIdSize(int id) {
        Connection connection = getConnection();
        Size size = new Size();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_SIZE_BY_ID);
            preparedStatement.setInt(1, id);

            ResultSet rs = preparedStatement.executeQuery();
            int idSize= rs.getInt("idsize");
            int numberSize = rs.getInt("numbersize");
            size = new Size(idSize,numberSize);

        }catch (SQLException e) {
            e.printStackTrace();
        }
        return size;
    }
}
