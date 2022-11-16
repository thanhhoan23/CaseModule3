package com.module.casemodule3.model;

public class User {
    private int idUser;
    private String userName;
    private String email;
    private String passWord;

    public User(){}

    public User(int idUser, String userName, String email, String passWord) {
        this.idUser = idUser;
        this.userName = userName;
        this.email = email;
        this.passWord = passWord;
    }

    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassWord() {
        return passWord;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }
}
