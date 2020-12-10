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
        User selectUser = userMapper.getUserByAccountId(user.getAccount_id());

        if (selectUser != null && BCrypt.checkpw(user.getPassword(), selectUser.getPassword())) {

            String getToken = userMapper.getJwtTokenByAccountId(user.getAccount_id());
            if (getToken.equals("") || jwtUtil.isExpired(getToken)) {
                getToken = jwtUtil.generate(user.getAccount_id());
                userMapper.setJwtTokenByAccountId(getToken, user.getAccount_id());
            }

            Map<String,Object> map = new HashMap<String, Object>();
            map.put("userId", user.getAccount_id());
            map.put("token", getToken);
            return map;
        }
        else
            return null;
    }

}