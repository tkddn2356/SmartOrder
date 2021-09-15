package com.example.service;

import com.example.domain.Menu;
import com.example.domain.Payment;
import com.example.repository.MenuMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;

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

    @Override
    public List<Menu> getListByIs_hot(int is_hot) {
        return menuMapper.getListByIs_hot(is_hot);
    }

    @Override
    public List<Menu> getListByHow_muchUnder(int number) {
        return menuMapper.getListByHow_muchUnder(number);
    }

    @Override
    public List<Menu> getListByHow_muchOver(int number) {
        return menuMapper.getListByHow_muchOver(number);
    }

    @Override
    public List<Long> getRecentPaymentList(Long id) {

//        Calendar calendar = Calendar.getInstance();
//        calendar.setTime(date);
//        DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
//        String datestr = format.format(calendar.getTime());

        Payment payment = menuMapper.getRecentPaymentById(id);

        if(payment == null){
            return null;
        }

//        SimpleDateFormat format = new SimpleDateFormat( "yy-MM-dd" , Locale.KOREA );
//        String datestr = format.format(new Date(payment.getCreated_at().getTime()));
//        System.out.println(datestr);

        Calendar cal = Calendar.getInstance();
        cal.setTime(new Date(payment.getCreated_at().getTime()));
        DateFormat df = new SimpleDateFormat("yy-MM-dd");

        cal.add(Calendar.HOUR, -9);
        String datestr = df.format(cal.getTime());

        List<Long> paymentList = menuMapper.getRecentPaymentList(id, datestr);

        return paymentList;


    }

    @Override
    public List<Payment> getPaymentList(Long id) {
        return menuMapper.getPaymentList(id);
    }
}
