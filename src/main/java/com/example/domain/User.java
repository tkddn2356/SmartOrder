package com.example.domain;

import java.io.Serializable;
import java.sql.Date;


public class User implements Serializable {
    private Long id;
    private String account_id;
    private String password;
    private String name;
    private String nickname;
    private Date created_at;
    private Date updated_at;

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getNickname() {
        return nickname;
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

    public Date getCreated_at() {
        return created_at;
    }

    public Date getUpdated_at() {
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

    public void setCreated_at(Date created_at) {
        this.created_at = created_at;
    }

    public void setUpdated_at(Date updated_at) {
        this.updated_at = updated_at;
    }
}
