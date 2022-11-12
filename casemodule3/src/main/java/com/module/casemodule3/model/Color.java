package com.module.casemodule3.model;

public class Color {
    private int idColor;
    private String nameColor;
    public  Color(){};

    public Color(int idColor, String nameColor) {
        this.idColor = idColor;
        this.nameColor = nameColor;
    }

    public int getIdColor() {
        return idColor;
    }

    public void setIdColor(int idColor) {
        this.idColor = idColor;
    }

    public String getNameColor() {
        return nameColor;
    }

    public void setNameColor(String nameColor) {
        this.nameColor = nameColor;
    }
}
