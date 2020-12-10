package com.example.service;

import com.example.domain.User;

import java.util.Map;

public interface UserService {

    public Map<String, Object> login(User user);
    public boolean register(User user);

}