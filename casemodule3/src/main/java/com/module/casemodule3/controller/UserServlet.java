package com.module.casemodule3.controller;

import com.module.casemodule3.model.User;
import com.module.casemodule3.serviceuser.IUserService;
import com.module.casemodule3.serviceuser.UserService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
@WebServlet(name ="UserServlet" ,urlPatterns = "/user")
public class UserServlet extends HttpServlet {
    private IUserService userService;

    public void init(){
        userService = new UserService();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if(action == null) {
           action="";
        }
        switch (action) {
            case "create":
                showCreateUserForm(req,resp);
                break;
            default:
        }
    }


    private void showCreateUserForm(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/user/registeruser.jsp");
        requestDispatcher.forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if(action == null) {
            action="";
        }
        switch (action) {
            case "create":
                CreateUserForm(req,resp);
                break;
            default:
        }
    }

    private void CreateUserForm(HttpServletRequest req, HttpServletResponse resp) {
        String name = req.getParameter("name");
        String email= req.getParameter("email");
        String password = req.getParameter("password");
        User user = new User(-1,name,email,password);
        try {
            userService.insertUser(user);
            req.setAttribute("message","add was successed");
            RequestDispatcher dispatcher = req.getRequestDispatcher("WEB-INF/user/create.jsp");
            dispatcher.forward(req, resp);
        }catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
