package com.example.service;

import com.example.domain.Menu;

import java.util.List;


public interface MenuService {
    public List<Menu> getListByCategory(String category);
    public Menu getMenuByName(String name);
    public List<Menu> getListByIs_spicy(int is_spicy);
    public List<Menu> getListByIs_hot(int is_hot);
    public List<Menu> getListByHow_muchUnder(int number);
    public List<Menu> getListByHow_muchOver(int number);

    public List<Long> getRecentPaymentList(Long id);

}
