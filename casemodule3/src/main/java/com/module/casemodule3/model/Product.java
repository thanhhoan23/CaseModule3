package com.module.casemodule3.model;

import org.hibernate.validator.constraints.Length;

import javax.validation.constraints.*;
import java.util.Date;

public class Product {
    private int idProduct;
    private String name;
    private String image;
    private double price;
    private int quantity;
    private int idColor;
    private int idSize;
    private int idCategory;
    private Date createTimeDate;
    private Date updateTimeDate;

    public Product(){}

    public Product(int idProduct, String name, double price, int quantity, int idColor, int idSize, int idCategory, Date createTimeDate, Date updateTimeDate,String image) {
        this.idProduct = idProduct;
        this.name = name;
        this.price = price;
        this.quantity = quantity;
        this.idColor = idColor;
        this.idSize = idSize;
        this.idCategory = idCategory;
        this.createTimeDate = createTimeDate;
        this.updateTimeDate = updateTimeDate;
        this.image = image;

    }
    public int getIdProduct() {
        return idProduct;
    }

    public void setIdProduct(int idProduct) {
        this.idProduct = idProduct;
    }

    @NotEmpty(message = "Product's name cannot be empty")
    @Length(min=1,max = 40, message = "Product name more than 1 and character less than 40" )
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
//    @NotEmpty(message = "Product's image can't be empty")

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
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
    @NotNull(message = "Color can not be empty")
    public int getIdColor() {
        return idColor;
    }

    public void setIdColor(int idColor) {
        this.idColor = idColor;
    }
    @NotNull(message = "Size can not be empty")
    public int getIdSize() {
        return idSize;
    }

    public void setIdSize(int idSize) {
        this.idSize = idSize;
    }
    @NotNull(message = "Category can not be empty")
    public int getIdCategory() {
        return idCategory;
    }

    public void setIdCategory(int idCategory) {
        this.idCategory = idCategory;
    }

    public Date getCreateTimeDate() {
        return createTimeDate;
    }

    public void setCreateTimeDate(Date createTimeDate) {
        this.createTimeDate = createTimeDate;
    }

    public Date getUpdateTimeDate() {
        return updateTimeDate;
    }

    public void setUpdateTimeDate(Date updateTimeDate) {
        this.updateTimeDate = updateTimeDate;
    }
}
