package com.example.service;

import com.example.domain.Payment;
import com.example.domain.Rating;
import com.example.domain.User;

import java.util.Map;

public interface UserService {

    public Map<String, Object> register(User user);
    public Map<String, Object> loginById(User user);
    public Map<String, Object> loginByPhone_number(String phone_number);
    public boolean login(User user);
    public Long registerRatings(Map<String, Integer> ratingMap);
    public boolean registerRating(Rating rating);
    public boolean createPayment(Payment payment);
    public boolean logout();

}