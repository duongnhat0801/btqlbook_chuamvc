package com.codegym.demo_jsb.model;

public class Book {
    private int id;
    private String name;
    private double price;
    private String description;
    private String auth;
    public static int lastID=0;

    public Book(String name, double price, String description, String auth) {
        this.id = ++lastID;
        this.name = name;
        this.price = price;
        this.description = description;
        this.auth = auth;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public double getPrice() {
        return price;
    }

    public String getDescription() {
        return description;
    }

    public String getAuth() {
        return auth;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setAuth(String auth) {
        this.auth = auth;
    }

    @Override
    public String toString() {
        return "Book{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", description='" + description + '\'' +
                ", auth='" + auth + '\'' +
                ", lastID=" + lastID +
                '}';
    }
}

