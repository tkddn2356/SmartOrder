package com.example.domain;

import java.io.Serializable;
import java.sql.Date;
import java.sql.Timestamp;


public class User implements Serializable {
    private Long id;
    private String account_id;
    private String password;
    private String name;
    private String phone_number;
    private Timestamp created_at;
    private Timestamp updated_at;
    private int auth;

    public void setAuth(int auth) {
        this.auth = auth;
    }

    public int getAuth() {
        return auth;
    }

    public Long getId() {
        return id;
    }

    public String getAccount_id() {
        return account_id;
    }

    public String getPassword() {
        return password;
    }

    public String getName() {
        return name;
    }

    public String getPhone_number() {
        return phone_number;
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

    public void setAccount_id(String account_id) {
        this.account_id = account_id;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }

    public void setCreated_at(Timestamp created_at) {
        this.created_at = created_at;
    }

    public void setUpdated_at(Timestamp updated_at) {
        this.updated_at = updated_at;
    }
}
