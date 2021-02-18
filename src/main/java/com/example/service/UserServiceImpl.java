package com.example.service;

import com.example.domain.User;
import com.example.repository.MenuMapper;
import com.example.repository.UserMapper;
import com.example.util.JwtUtil;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

@Service
public class UserServiceImpl implements UserService{

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private MenuMapper menuMapper;

    @Override
    public Map<String, Object> register(User user) {
        Map<String,Object> map = new HashMap<String, Object>();
        if(userMapper.getUserById(user.getAccount_id()) != null ||
                userMapper.getUserByPhone_number(user.getPhone_number()) != null){
            //만약 입력한 값이 이미 등록된 아이디거나 전화번호이면 회원가입 실패함
            return null;
        }
        else{
            userMapper.createUser(user);
            User selectUser = userMapper.getUserById(user.getAccount_id());
            map.put("is_success", "success");
            map.put("user_id", selectUser.getId());
            return map;
        }
    }

    @Override
    public Map<String, Object> loginById(User user) {
        User selectUser = userMapper.getUserById(user.getAccount_id());
        if(selectUser.getPassword().equals(user.getPassword())){
            Map<String,Object> map = new HashMap<String, Object>();
            map.put("user_id", selectUser.getId());
            map.put("user_name", selectUser.getName());
            return map;
        }
        else{
            System.out.println("로그인실패");
            return null;
        }
    }

    @Override
    public Map<String, Object> loginByPhone_number(String phone_number) {
        User selectUser = userMapper.getUserByPhone_number(phone_number);
        if(selectUser != null){ // 있는 유저이면
            Map<String,Object> map = new HashMap<String, Object>();
            map.put("user_id", selectUser.getId());
            map.put("user_name", selectUser.getName());
            return map;
        }
        else{
            System.out.println("로그인실패");
            return null;
        }
    }

    @Override
    public boolean registerRating(Long user_id, Map<String, Integer> ratingMap) {
        for(String key : ratingMap.keySet()){
            Long menu_id = menuMapper.getMenuByName(key).getId();
            System.out.println("menu_id : " + menu_id);
            int rating = Integer.parseInt(String.valueOf(ratingMap.get(key)));
            userMapper.createRating(user_id, menu_id, rating);
        }
        return true;
    }


}