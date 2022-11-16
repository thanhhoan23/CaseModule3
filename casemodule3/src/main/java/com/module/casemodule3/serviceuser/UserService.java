package com.module.casemodule3.serviceuser;

import com.module.casemodule3.model.User;

import java.sql.*;
import java.util.List;

public class UserService implements IUserService {
    private static final String INSERT_USER = "INSERT INTO `user` (`username`, `email`, `password`) VALUES (?, ?, ?);";
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
    public void insertUser(User user) {
        Connection connection = getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USER);
            preparedStatement.setString(1, user.getUserName());
            preparedStatement.setString(2,user.getEmail());
            preparedStatement.setString(3,user.getPassWord());
            preparedStatement.executeQuery();
            preparedStatement.close();
        }catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public User selectUser(int id) {
        return null;
    }

    @Override
    public List<User> selectAllUser() {
        return null;
    }

    @Override
    public boolean deleteUser(int id) {
        return false;
    }
}
