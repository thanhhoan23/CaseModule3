package com.example.thuchanh.model;

import org.hibernate.validator.constraints.Length;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

public class Product {
    private int IdProduct;
    private String nameProduct;
    private double price;
    private int quantity;
    private String color;
    private String description;
    private int idCategory;
    public Product(){}

    public Product(int idProduct, String nameProduct, double price, int quantity, String color, String description, int idCategory) {
        IdProduct = idProduct;
        this.nameProduct = nameProduct;
        this.price = price;
        this.quantity = quantity;
        this.color = color;
        this.description = description;
        this.idCategory = idCategory;
    }

    public int getIdProduct() {
        return IdProduct;
    }

    public void setIdProduct(int idProduct) {
        IdProduct = idProduct;
    }
    @NotEmpty(message = "Product's name cannot be empty")
    @Length(min=1,max = 40, message = "Product name more than 1 and character less than 40" )
    public String getNameProduct() {
        return nameProduct;
    }

    public void setNameProduct(String nameProduct) {
        this.nameProduct = nameProduct;
    }
    @Min(value = 1000,message ="Price can be more than 1000")
    @Max(value = 10000000, message = "Price can be less than 10000000")
    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
    @Min(value = 1,message = "Quantity cannot be less than 1")
    @Max(value = 100, message = "Quantity can be less than 100")
    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    @NotEmpty(message = "Color's name cannot be empty")
    @Length(min=1,max = 100, message = "Color name more than 1 and character less than 100" )
    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }
    @NotEmpty(message = "Product's name cannot be empty")
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    @NotNull(message = "Category can not be empty")
    public int getIdCategory() {
        return idCategory;
    }

    public void setIdCategory(int idCategory) {
        this.idCategory = idCategory;
    }
}
