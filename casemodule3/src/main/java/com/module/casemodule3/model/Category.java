package com.module.casemodule3.model;

public class Category {
    private int idCategory;
    private String typeProduct;

    public Category(){}

    public Category(int idCategory, String typeProduct) {
        this.idCategory = idCategory;
        this.typeProduct = typeProduct;
    }

    public int getIdCategory() {
        return idCategory;
    }

    public void setIdCategory(int idCategory) {
        this.idCategory = idCategory;
    }

    public String getTypeProduct() {
        return typeProduct;
    }

    public void setTypeProduct(String typeProduct) {
        this.typeProduct = typeProduct;
    }
}
