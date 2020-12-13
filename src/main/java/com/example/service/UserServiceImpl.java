package com.example.service;

import com.example.domain.User;
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
    private JwtUtil jwtUtil;


    @Override
    public boolean register(User user) {
        String hashedPassword = BCrypt.hashpw(user.getPassword(), BCrypt.gensalt());
        user.setPassword(hashedPassword);
        return userMapper.createUser(user) == 1;
    }

    @Override
    public Map<String, Object> login(User user) {
        User selectUser = userMapper.getUserByAccountId(user.getAccount_id()); // 아이디로 User를 가져옴
        if (selectUser != null && BCrypt.checkpw(user.getPassword(), selectUser.getPassword())) { // User의 비밀번호 검사
            //login을 한 경우 token을 반환해줌
            String token = jwtUtil.generate(selectUser.getId());
            Map<String,Object> map = new HashMap<String, Object>();
            map.put("userId", user.getAccount_id());
            map.put("token",token);
            return map;
        }
        else
            return null;
    }

}