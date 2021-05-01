package com.example.domain;

import java.sql.Timestamp;

public class Payment {
    private Long id;
    private Long user_id;
    private Long menu_id;
    private int menu_count;
    private int total_price;
    private Timestamp created_at;
    private Timestamp updated_at;

    public Long getId() {
        return id;
    }

    public Long getUser_id() {
        return user_id;
    }

    public Long getMenu_id() {
        return menu_id;
    }

    public int getMenu_count() {
        return menu_count;
    }

    public int getTotal_price() {
        return total_price;
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

    public void setUser_id(Long user_id) {
        this.user_id = user_id;
    }

    public void setMenu_id(Long menu_id) {
        this.menu_id = menu_id;
    }

    public void setMenu_count(int menu_count) {
        this.menu_count = menu_count;
    }

    public void setTotal_price(int total_price) {
        this.total_price = total_price;
    }

    public void setCreated_at(Timestamp created_at) {
        this.created_at = created_at;
    }

    public void setUpdated_at(Timestamp updated_at) {
        this.updated_at = updated_at;
    }
}


