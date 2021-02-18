package com.example.service;

import com.example.domain.Menu;
import com.example.repository.MenuMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MenuServiceImpl implements MenuService{

    @Autowired
    private MenuMapper menuMapper;

    @Override
    public List<Menu> getListByCategory(String category) {
        return menuMapper.getListByCategory(category);
    }

    @Override
    public Menu getMenuByName(String name) {
        return menuMapper.getMenuByName(name);
    }

    @Override
    public List<Menu> getListByIs_spicy(int is_spicy) {
        return menuMapper.getListByIs_spicy(is_spicy);
    }
}
