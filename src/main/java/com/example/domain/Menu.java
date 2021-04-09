package com.example.domain;

import java.sql.Timestamp;

public class Menu {
    private Long id;
    private String name;
    private String information;
    private String category;
    private int price;
    private int is_spicy;
    private int is_hot;
    private Timestamp released_at;
    private Timestamp created_at;
    private Timestamp updated_at;
    private String img;

    public void setCategory(String category) {
        this.category = category;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getCategory() {
        return category;
    }

    public int getPrice() {
        return price;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getImg() {
        return img;
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getInformation() {
        return information;
    }


    public Timestamp getReleased_at() {
        return released_at;
    }

    public Timestamp getCreated_at() {
        return created_at;
    }

    public Timestamp getUpdated_at() {
        return updated_at;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setInformation(String information) {
        this.information = information;
    }

    public void setReleased_at(Timestamp released_at) {
        this.released_at = released_at;
    }

    public void setCreated_at(Timestamp created_at) {
        this.created_at = created_at;
    }

    public void setUpdated_at(Timestamp updated_at) {
        this.updated_at = updated_at;
    }

    public int getIs_spicy() {
        return is_spicy;
    }

    public int getIs_hot() {
        return is_hot;
    }

    public void setIs_spicy(int is_spicy) {
        this.is_spicy = is_spicy;
    }

    public void setIs_hot(int is_hot) {
        this.is_hot = is_hot;
    }
}

