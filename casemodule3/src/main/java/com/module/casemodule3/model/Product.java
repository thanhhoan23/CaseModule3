package com.module.casemodule3.model;

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

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getIdColor() {
        return idColor;
    }

    public void setIdColor(int idColor) {
        this.idColor = idColor;
    }

    public int getIdSize() {
        return idSize;
    }

    public void setIdSize(int idSize) {
        this.idSize = idSize;
    }

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
