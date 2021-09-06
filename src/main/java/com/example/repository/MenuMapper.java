package com.example.repository;

import com.example.domain.Menu;
import com.example.domain.Payment;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.sql.Timestamp;
import java.util.List;

@Repository
public interface MenuMapper {
    public List<Menu> getListByCategory(String category);
    public Menu getMenuByName(String name);
    public List<Menu> getListByIs_spicy(int is_spicy);
    public List<Menu> getListByIs_hot(int is_hot);
    public List<Menu> getListByHow_muchUnder(int number);
    public List<Menu> getListByHow_muchOver(int number);
    public Menu getMenuById(Long id);
    public Payment getRecentPaymentById(Long user_id);

    public List<Long> getRecentPaymentList(@Param("user_id")Long user_id, @Param("date")String date);


//    public List<Menu> getListByRelease(Timestamp time);
}
