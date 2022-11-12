package com.module.casemodule3.service;

import com.module.casemodule3.model.Color;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ColorService implements IColorService{
    private static final String SELECT_ALL_COLOR = "SELECT * FROM color";
    private static final String SELECT_COLOR_BY_ID = "SELECT * FROM color where idcolor = ?";
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
    public List<Color> selectAllColor() {
        List<Color> listColor = new ArrayList<>();
        Connection connection = getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_COLOR);
            ResultSet rs= preparedStatement.executeQuery();
            System.out.println(this.getClass() + " selectAllColor: " + preparedStatement);
            while (rs.next()) {
                int idColor= rs.getInt("idcolor");
                String nameColor = rs.getString("namecolor");
                Color color = new Color(idColor,nameColor);
                listColor.add(color);
            }
        }catch (SQLException e) {
            e.printStackTrace();
        }
        return listColor;
    }

    @Override
    public Color selectByIdColor(int id) {
        Connection connection = getConnection();
        Color color = new Color();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_COLOR_BY_ID);
            preparedStatement.setInt(1, id);

            ResultSet rs = preparedStatement.executeQuery();
                int idColor= rs.getInt("idcolor");
                String nameColor = rs.getString("namecolor");
                color = new Color(idColor,nameColor);

        }catch (SQLException e) {
            e.printStackTrace();
        }
        return color;
    }
}
