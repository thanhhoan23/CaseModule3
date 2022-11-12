package com.module.casemodule3.controller;

import com.module.casemodule3.service.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet(name = "productServlet", urlPatterns = "/product")

public class productServlet extends HttpServlet {
    private IProductService productService;
    private IColorService colorService;
    private ISizeService sizeService;
    private ICategoryService categoryService;

    @Override
    public void init() throws ServletException {
        productService= new ProductService();
        colorService = new ColorService();
        sizeService = new SizeService();
        categoryService = new CategoryService();
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if(action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                createProductForm(req,resp);
                break;
            case "edit":
                break;
            default:
        }
    }

    private void createProductForm(HttpServletRequest req, HttpServletResponse resp) {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
