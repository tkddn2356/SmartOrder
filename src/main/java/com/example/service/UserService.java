package com.example.service;

import com.example.domain.Payment;
import com.example.domain.User;

import java.util.Map;

public interface UserService {

    public Map<String, Object> register(User user);
    public Map<String, Object> loginById(User user);
    public Map<String, Object> loginByPhone_number(String phone_number);
    public Long registerRating(Map<String, Integer> ratingMap);
    public boolean createPayment(Payment payment);

}