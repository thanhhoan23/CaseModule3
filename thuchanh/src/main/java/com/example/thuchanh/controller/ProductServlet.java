package com.example.thuchanh.controller;

import com.example.thuchanh.model.Category;
import com.example.thuchanh.model.Product;
import com.example.thuchanh.service.CategoryService;
import com.example.thuchanh.service.ICategoryService;
import com.example.thuchanh.service.IProductService;
import com.example.thuchanh.service.ProductService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.ValidatorFactory;
import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

@WebServlet(name = "ProductServlet", urlPatterns = "/product")
public class ProductServlet extends HttpServlet {
    private IProductService productService;
    private ICategoryService categoryService;
    List<Category> listCategory;
    List<Product> listProduct;

    @Override
    public void init() throws ServletException {
        productService = new ProductService();
        categoryService =new CategoryService();
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action== null) {
            action="";
        }
        switch (action) {
            case "create":
                showFormCreate(req,resp);
                break;
            case "edit":
                showEditForm(req,resp);
                break;
            case "delete":
                showDeleteForm(req,resp);
                break;
            default:
                showListProduct(req,resp);
        }
    }

    private void showDeleteForm(HttpServletRequest req, HttpServletResponse resp) {
        try {
            listCategory = categoryService.selectAllCategory();
            int id = Integer.parseInt(req.getParameter("id"));
            Product product = this.productService.selectProduct(id);
            RequestDispatcher requestDispatcher;
            if (product == null) {
                requestDispatcher = req.getRequestDispatcher("");
            } else {
                req.setAttribute("product", product);
                req.setAttribute("listCategory", listCategory);
                requestDispatcher = req.getRequestDispatcher("/WEB-INF/product/delete.jsp");
                requestDispatcher.forward(req, resp);
            }
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showEditForm(HttpServletRequest req, HttpServletResponse resp) {
        try {
            listCategory = categoryService.selectAllCategory();
            int id = Integer.parseInt(req.getParameter("id"));
            System.out.println(id);
            Product product = productService.selectProduct(id);
            RequestDispatcher requestDispatcher;
            if (product == null) {
                requestDispatcher = req.getRequestDispatcher("");
//            } else if (product.getIdProduct() != id) {
//                List<Product> listProduct = productService.selectAllProduct();
//                req.setAttribute("listProduct", listProduct);
//                req.setAttribute("listCategory", listCategory);
//                requestDispatcher = req.getRequestDispatcher("/WEB-INF/product/list.jsp");
            } else {
                req.setAttribute("product", product);
                req.setAttribute("listCategory", listCategory);
                requestDispatcher = req.getRequestDispatcher("/WEB-INF/product/edit.jsp");
            }
            requestDispatcher.forward(req, resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showFormCreate(HttpServletRequest req, HttpServletResponse resp) {
        listCategory = categoryService.selectAllCategory();
        req.setAttribute("listCategory", listCategory);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/product/create.jsp");
        try {
            requestDispatcher.forward(req, resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showListProduct(HttpServletRequest req, HttpServletResponse resp) {
        String search = "";
        listCategory = this.categoryService.selectAllCategory();

        if (req.getParameter("search") != null) {
            search = req.getParameter("search");
        }
        try {
            listProduct = this.productService.selecAllProduct(search);
            req.setAttribute("search", search);
            req.setAttribute("listProduct", listProduct);
            req.setAttribute("listCategory", listCategory);
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/product/list.jsp");
            requestDispatcher.forward(req, resp);
        }catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action== null) {
            action="";
        }
        switch (action) {
            case "create":
                createProduct(req,resp);
                break;
            case "edit":
                updateProduct(req,resp);
                break;
            case "delete":
                deleteProduct(req,resp);
                break;
            default:
        }
    }

    private void deleteProduct(HttpServletRequest req, HttpServletResponse resp) {

        try {
            int id = Integer.parseInt(req.getParameter("id"));
            Product product = this.productService.selectProduct(id);
            req.setAttribute("product", product);
            productService.deleteProduct(id);
            List<Product> listProduct = productService.selectAllProduct();
            listCategory = categoryService.selectAllCategory();
            req.setAttribute("listProduct", listProduct);
            req.setAttribute("listCategory", listCategory);
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/product/list.jsp");

            requestDispatcher.forward(req, resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void updateProduct(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<String> errors = new ArrayList<>();
        listCategory = this.categoryService.selectAllCategory();
        RequestDispatcher requestDispatcher;
        int id = Integer.parseInt(req.getParameter("id"));
        Product product = this.productService.selectProduct(id);
        if (product == null) {
            requestDispatcher = req.getRequestDispatcher("/WEB-INF/product/error.jsp");
        } else {
            String name = req.getParameter("name");
            product.setNameProduct(name);
            String priceTest= req.getParameter("price");
            System.out.println(priceTest);
            if (priceTest.isEmpty()) {
                errors.add("Price can not empty");
            } else {
                double price = Double.parseDouble(req.getParameter("price"));
                product.setPrice(price);
            }
            String quantityTest = req.getParameter("quantity");
            if (quantityTest.isEmpty()) {
                errors.add("Quantity can not be empty");
            } else {
                int quantity = Integer.parseInt(req.getParameter("quantity"));
                product.setQuantity(quantity);
            }
            String color = req.getParameter("color");
            product.setColor(color);
            String description = req.getParameter("description");
            product.setDescription(description);

            int category = Integer.parseInt(req.getParameter("idcategory"));
            product.setIdCategory(category);

            ValidatorFactory validatorFactory = Validation.buildDefaultValidatorFactory();
            Validator validator = validatorFactory.getValidator();
            Set<ConstraintViolation<Product>> constraintViolations = validator.validate(product);
            if (!constraintViolations.isEmpty()) {
                for (ConstraintViolation<Product> item : constraintViolations) {
                    errors.add(item.getMessage());
                }
                req.setAttribute("errors", errors);
                req.setAttribute("product",product);
                req.setAttribute("listCategory", listCategory);
            } else {
                productService.insertProduct(product);
                req.setAttribute("message","Product was added successly");
                req.setAttribute("listCategory", listCategory);
            }
            requestDispatcher = req.getRequestDispatcher("/WEB-INF/product/create.jsp");
            requestDispatcher.forward(req, resp);
            }
        requestDispatcher = req.getRequestDispatcher("/WEB-INF/product/edit.jsp");
        requestDispatcher.forward(req, resp);
    }

    private void createProduct(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher;
        List<String> errors = new ArrayList<>();
        Product product = new Product();
        listCategory = this.categoryService.selectAllCategory();
        try {
            String name = req.getParameter("name");
            product.setNameProduct(name);
            String priceTest= req.getParameter("price");
            System.out.println(priceTest);
            if (priceTest.isEmpty()) {
                errors.add("Price can not empty");
            } else {
                double price = Double.parseDouble(req.getParameter("price"));
                product.setPrice(price);
            }
            String quantityTest = req.getParameter("quantity");
            if (quantityTest.isEmpty()) {
                errors.add("Quantity can not be empty");
            } else {
                int quantity = Integer.parseInt(req.getParameter("quantity"));
                product.setQuantity(quantity);
            }
            String color = req.getParameter("color");
            product.setColor(color);
            String description = req.getParameter("description");
            product.setDescription(description);

            int category = Integer.parseInt(req.getParameter("idcategory"));
            product.setIdCategory(category);

            ValidatorFactory validatorFactory = Validation.buildDefaultValidatorFactory();
            Validator validator = validatorFactory.getValidator();
            Set<ConstraintViolation<Product>> constraintViolations = validator.validate(product);
            if (!constraintViolations.isEmpty()) {
                for (ConstraintViolation<Product> item : constraintViolations) {
                    errors.add(item.getMessage());
                }
                req.setAttribute("errors", errors);
                req.setAttribute("product",product);
                req.setAttribute("listCategory", listCategory);
            } else {
                productService.insertProduct(product);
                req.setAttribute("message","Product was added successly");
                req.setAttribute("listCategory", listCategory);
            }
            requestDispatcher = req.getRequestDispatcher("/WEB-INF/product/create.jsp");
            requestDispatcher.forward(req, resp);
        }catch (NumberFormatException numberFormatException) {
            errors.add("Input format");
            req.setAttribute("errors", errors);
            req.setAttribute("product", product);
            req.setAttribute("listCategory", listCategory);
            requestDispatcher = req.getRequestDispatcher("/WEB-INF/product/create.jsp");
            requestDispatcher.forward(req, resp);
        } catch (Exception e){
            e.printStackTrace();
        }
    }


}
