package com.module.casemodule3.controller;

import com.module.casemodule3.model.Category;
import com.module.casemodule3.model.Color;
import com.module.casemodule3.model.Product;
import com.module.casemodule3.model.Size;
import com.module.casemodule3.service.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
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
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Set;

@WebServlet(name = "productServlet", urlPatterns = "/product")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 50, // 50MB
        maxRequestSize = 1024 * 1024 * 50) // 50MB

public class productServlet extends HttpServlet {
    private IProductService productService;
    private IColorService colorService;
    private ISizeService sizeService;
    private ICategoryService categoryService;
    List<Color> listColor;
    List<Size> listSize;
    List<Category> listCategory;

    @Override
    public void init() throws ServletException {
        productService = new ProductService();
        colorService = new ColorService();
        sizeService = new SizeService();
        categoryService = new CategoryService();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                showCreateProductForm(req, resp);
                break;
            case "edit":
                showEditProductForm(req, resp);
                break;
            case "delete":
                showDeleteForm(req, resp);
                break;
            case "view":
                showDetailProduct(req,resp);
                break;
            default:
                showListProduct(req, resp);
        }
    }

    private void showDetailProduct(HttpServletRequest req, HttpServletResponse resp) {
        List<Product> listProduct = this.productService.selectAllProduct();
        listColor = colorService.selectAllColor();
        System.out.println(listColor);
        listSize = sizeService.selectAllSize();
        listCategory = categoryService.selectAllCategory();
        req.setAttribute("listProduct", listProduct);
        req.setAttribute("listColor", listColor);
        req.setAttribute("listSize", listSize);
        req.setAttribute("listCategory", listCategory);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/product/detailproduct.jsp");
        try {
            requestDispatcher.forward(req, resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showDeleteForm(HttpServletRequest req, HttpServletResponse resp) {
        try {
            listColor = colorService.selectAllColor();
            listSize = sizeService.selectAllSize();
            listCategory = categoryService.selectAllCategory();
            int id = Integer.parseInt(req.getParameter("id"));
            Product product = this.productService.selectProduct(id);
            RequestDispatcher requestDispatcher;
            if (product == null) {
                requestDispatcher = req.getRequestDispatcher("");
            } else {
                req.setAttribute("product", product);
                req.setAttribute("listColor", listColor);
                req.setAttribute("listSize", listSize);
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

    private void showEditProductForm(HttpServletRequest req, HttpServletResponse resp) {
        try {
            listColor = colorService.selectAllColor();
            listSize = sizeService.selectAllSize();
            listCategory = categoryService.selectAllCategory();
            int id = Integer.parseInt(req.getParameter("id"));
            System.out.println(id);
            Product product = productService.selectProduct(id);
            RequestDispatcher requestDispatcher;
            if (product == null) {
                requestDispatcher = req.getRequestDispatcher("");
            } else if (product.getIdProduct() != id) {
                List<Product> listProduct = productService.selectAllProduct();
                req.setAttribute("listProduct", listProduct);
                req.setAttribute("listColor", listColor);
                req.setAttribute("listSize", listSize);
                req.setAttribute("listCategory", listCategory);
                requestDispatcher = req.getRequestDispatcher("/WEB-INF/product/list.jsp");
            } else {
                req.setAttribute("product", product);
                req.setAttribute("listColor", listColor);
                req.setAttribute("listSize", listSize);
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

    private void showListProduct(HttpServletRequest req, HttpServletResponse resp) {
        List<Product> listProduct = this.productService.selectAllProduct();
        listColor = colorService.selectAllColor();
        System.out.println(listColor);
        listSize = sizeService.selectAllSize();
        listCategory = categoryService.selectAllCategory();
        req.setAttribute("listProduct", listProduct);
        req.setAttribute("listColor", listColor);
        req.setAttribute("listSize", listSize);
        req.setAttribute("listCategory", listCategory);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/product/list.jsp");
        try {
            requestDispatcher.forward(req, resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showCreateProductForm(HttpServletRequest req, HttpServletResponse resp) {
        List<Color> listColor = colorService.selectAllColor();
        System.out.println("Serverpath:" + this.getServletContext().getRealPath("/"));
        List<Size> listSize = sizeService.selectAllSize();
        List<Category> listCategory = categoryService.selectAllCategory();
        req.setAttribute("listColor", listColor);
        req.setAttribute("listSize", listSize);
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

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                createProduct(req, resp);
                break;
            case "edit":
                updateProduct(req, resp);
                break;
            case "delete":
                deleteProduct(req, resp);
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
//            sau khi xóa sẽ in ra lại danh sách
            List<Product> listProduct = productService.selectAllProduct();
            listColor = colorService.selectAllColor();
            System.out.println(listColor);
            listSize = sizeService.selectAllSize();
            listCategory = categoryService.selectAllCategory();
            req.setAttribute("listProduct", listProduct);
            req.setAttribute("listColor", listColor);
            req.setAttribute("listSize", listSize);
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
        listColor = this.colorService.selectAllColor();
        listSize = this.sizeService.selectAllSize();
        listCategory = this.categoryService.selectAllCategory();
        RequestDispatcher requestDispatcher;
        int id = Integer.parseInt(req.getParameter("id"));
        Product product = this.productService.selectProduct(id);
        if (product == null) {
            requestDispatcher = req.getRequestDispatcher("/");
        } else {
            String name = req.getParameter("name");
            product.setName(name);
            double price = Double.parseDouble(req.getParameter("price"));
            product.setPrice(price);
            int quantity = Integer.parseInt(req.getParameter("quantity"));
            product.setQuantity(quantity);
            int color = Integer.parseInt(req.getParameter("idcolor"));
            product.setIdColor(color);
            int size = Integer.parseInt(req.getParameter("idsize"));
            product.setIdSize(size);
            int category = Integer.parseInt(req.getParameter("idcategory"));
            product.setIdCategory(category);
            String img = req.getParameter("file");

            ValidatorFactory validatorFactory = Validation.buildDefaultValidatorFactory();
            Validator validator = validatorFactory.getValidator();
            Set<ConstraintViolation<Product>> constraintViolations = validator.validate(product);
            if (!constraintViolations.isEmpty()) {
                for (ConstraintViolation<Product> item : constraintViolations) {
                    errors.add(item.getMessage());
                }
                req.setAttribute("errors", errors);
                req.setAttribute("listColor", listColor);
                req.setAttribute("listSize", listSize);
                req.setAttribute("listCategory", listCategory);
            } else {
                if (colorService.selectByIdColor(color) != null && sizeService.selectByIdSize(size) != null && categoryService.selectByIdCategory(category) != null) {
                    for (Part part : req.getParts()) {
                        System.out.println("Content type of Part" + part.getContentType());
                        System.out.println("Name of Part" + part.getName());
                        if (part.getName().equals("file")) {
                            String fileName = extractFileName(part);
                            if (fileName != null && !fileName.isEmpty()) {
                                // refines the fileName in case it is an absolute path
                                fileName = new File(fileName).getName();
                                part.write("/Users/nguyenthithanhhoan/Downloads/workspace/CaseModule3/casemodule3/src/main/webapp/images/" + fileName);
                                String servletRealPath = this.getServletContext().getRealPath("/") + "images\\" + fileName;
                                part.write(servletRealPath);
                                product.setImage("images/" + fileName);
                                part.write(this.getFolderUpload().getAbsolutePath() + File.separator + fileName);
//                String servletRealPath = this.getServletContext().getRealPath("/") + "\\images\\" + fileName;
//                System.out.println("servletRealPath: " + servletRealPath);
//                part.write(servletRealPath);
//                part.write(this.getFolderUpload().getAbsolutePath() + File.separator+fileName);
//                newUser.setUrlImage("images\\" + fileName);
                            }
                        }
                    }
                            productService.updateProduct(product);
                            req.setAttribute("listColor", listColor);
                            req.setAttribute("listSize", listSize);
                            req.setAttribute("listCategory", listCategory);

                        } else {
                            errors.add("Product type is not available");
                            req.setAttribute("error", errors);
                            req.setAttribute("listColor", listColor);
                            req.setAttribute("listSize", listSize);
                            req.setAttribute("listCategory", listCategory);
                        }
            }
        }
                    requestDispatcher = req.getRequestDispatcher("/WEB-INF/product/edit.jsp");
                    requestDispatcher.forward(req, resp);
    }

    private void createProduct(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<String> errors = new ArrayList<>();
        Product product = new Product();
        listColor = this.colorService.selectAllColor();
        listSize = this.sizeService.selectAllSize();
        listCategory = this.categoryService.selectAllCategory();
            String name = req.getParameter("name");
            product.setName(name);
            double price = Double.parseDouble(req.getParameter("price"));
            product.setPrice(price);
            int quantity = Integer.parseInt(req.getParameter("quantity"));
            product.setQuantity(quantity);
            int color = Integer.parseInt(req.getParameter("idcolor"));
            product.setIdColor(color);
            int size = Integer.parseInt(req.getParameter("idsize"));
            product.setIdSize(size);
            int category = Integer.parseInt(req.getParameter("idcategory"));
            product.setIdCategory(category);

            ValidatorFactory validatorFactory = Validation.buildDefaultValidatorFactory();
            Validator validator = validatorFactory.getValidator();
            Set<ConstraintViolation<Product>> constraintViolations = validator.validate(product);
            if (!constraintViolations.isEmpty()) {
                for (ConstraintViolation<Product> item : constraintViolations) {
                    errors.add(item.getMessage());
                }
                req.setAttribute("error", errors);
                req.setAttribute("listColor", listColor);
                req.setAttribute("listSize", listSize);
                req.setAttribute("listCategory", listCategory);
            } else {
                if (colorService.selectByIdColor(color) != null && sizeService.selectByIdSize(size) != null && categoryService.selectByIdCategory(category) != null) {
                    for (Part part : req.getParts()) {
                        System.out.println("Content type of Part" + part.getContentType());
                        System.out.println("Name of Part" + part.getName());
                        if (part.getName().equals("file")) {
                            String fileName = extractFileName(part);
                            if (fileName != null && !fileName.isEmpty()) {
                                // refines the fileName in case it is an absolute path
                                fileName = new File(fileName).getName();
                                part.write("/Users/nguyenthithanhhoan/Downloads/workspace/CaseModule3/casemodule3/src/main/webapp/images/" + fileName);
                                String servletRealPath = this.getServletContext().getRealPath("/") + "images\\" + fileName;
                                part.write(servletRealPath);
                                product.setImage("images/" + fileName);
                                part.write(this.getFolderUpload().getAbsolutePath() + File.separator + fileName);
//                String servletRealPath = this.getServletContext().getRealPath("/") + "\\images\\" + fileName;
//                System.out.println("servletRealPath: " + servletRealPath);
//                part.write(servletRealPath);
//                part.write(this.getFolderUpload().getAbsolutePath() + File.separator+fileName);
//                newUser.setUrlImage("images\\" + fileName);
                            } else {
                                product.setImage("no img");
                            }
                        }
                    }

                    productService.insertProduct(product);
                    req.setAttribute("listColor", listColor);
                    req.setAttribute("listSize", listSize);
                    req.setAttribute("listCategory", listCategory);

                }else {
                        errors.add("Product type is not available");
                        req.setAttribute("error", errors);
                        req.setAttribute("listColor", listColor);
                        req.setAttribute("listSize", listSize);
                        req.setAttribute("listCategory", listCategory);
                    }
                }
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/product/create.jsp");
        requestDispatcher.forward(req, resp);
    }



    private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length() - 1);
            }
        }
        return "";
    }
    public File getFolderUpload() {
        File folderUpload = new File(System.getProperty("user.home") + "/Uploads");
        System.out.println(System.getProperty("user.home") + "/Uploads");
        if (!folderUpload.exists()) {
            folderUpload.mkdirs();
        }
        return folderUpload;
    }
    }