package com.example.repository;

import com.example.domain.Menu;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MenuMapper {
    public List<Menu> getListByCategory(String category);
    public Menu getMenuByName(String name);
    public List<Menu> getListByIs_spicy(Boolean is_spicy);

}
