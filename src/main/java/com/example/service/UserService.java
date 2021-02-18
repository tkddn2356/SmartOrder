package com.example.service;

import com.example.domain.User;

import java.util.Map;

public interface UserService {

    public Map<String, Object> register(User user);
    public Map<String, Object> loginById(User user);
    public Map<String, Object> loginByPhone_number(String phone_number);

    public boolean registerRating(Long user_id, Map<String, Integer> ratingMap);

}