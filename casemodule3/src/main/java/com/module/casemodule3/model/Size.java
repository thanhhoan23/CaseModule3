package com.module.casemodule3.model;

public class Size {
    private int idSize;
    private int numberSize;

    public Size(){}

    public Size(int idSize, int numberSize) {
        this.idSize = idSize;
        this.numberSize = numberSize;
    }

    public int getIdSize() {
        return idSize;
    }

    public void setIdSize(int idSize) {
        this.idSize = idSize;
    }

    public int getNumberSize() {
        return numberSize;
    }

    public void setNumberSize(int numberSize) {
        this.numberSize = numberSize;
    }
}
