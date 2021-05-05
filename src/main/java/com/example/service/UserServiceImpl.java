package com.example.service;

import com.example.domain.Payment;
import com.example.domain.Rating;
import com.example.domain.User;
import com.example.repository.MenuMapper;
import com.example.repository.UserMapper;
import com.example.util.JwtUtil;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.util.WebUtils;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private MenuMapper menuMapper;

    @Autowired
    private HttpServletRequest request;

    @Override
    public Map<String, Object> register(User user) {
        Map<String, Object> map = new HashMap<String, Object>();
        if (userMapper.getUserById(user.getAccount_id()) != null
                || userMapper.getUserByPhone_number(user.getPhone_number()) != null) {
            //만약 입력한 값이 이미 등록된 아이디거나 전화번호이면 회원가입 실패함
            return null;
        } else {
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
        if (selectUser.getPassword().equals(user.getPassword())) {
            Map<String, Object> map = new HashMap<String, Object>();
            map.put("user_id", selectUser.getId());
            map.put("user_name", selectUser.getName());
            return map;
        } else {
            System.out.println("로그인실패");
            return null;
        }
    }

    @Override
    public Map<String, Object> loginByPhone_number(String phone_number) {
        User selectUser = userMapper.getUserByPhone_number(phone_number);
        if (selectUser != null) { // 있는 유저이면
            Map<String, Object> map = new HashMap<String, Object>();
            map.put("user_id", selectUser.getId());
            map.put("user_name", selectUser.getName());
            return map;
        } else {
            System.out.println("로그인실패");
            return null;
        }
    }

    @Override
    public boolean login(User user) {
        HttpSession session = request.getSession(); // request 요청을 받고 세션을 생성함.
        if (session.getAttribute("loginUser") != null) {
            session.removeAttribute("loginUser");
        } // 만약 로그인세션이 이미 존재하고 있었으면 그 로그인세션을 삭제
        User userInfo = userMapper.getUserById(user.getAccount_id());
        if (userInfo != null && user.getPassword().equals(userInfo.getPassword())) { // 데이터베이스상에 있는 비밀번호와 일치하면 실행.
            User loginUser = new User();
            loginUser.setId(userInfo.getId());
            loginUser.setName(userInfo.getName());
            session.setAttribute("loginUser", loginUser);
            // 비밀번호는 빼고 아이디와 이름만 가진 user객체를 세션에 넣는다.
            System.out.println(session.getAttribute("loginUser"));
            return true;
        } else
            return false;
    }

    @Override
    public boolean logout() {
        HttpSession session = request.getSession(); // request 요청을 받고 세션을 생성함.
        if(session == null){
            return false;
        }
        else{
            session.invalidate();
            System.out.println("로그아웃 성공");
            return true;
        }
    }

    //    @Override
//    public boolean registerRating(Long user_id, Map<String, Integer> ratingMap) {
//        for(String key : ratingMap.keySet()){
//            Long menu_id = menuMapper.getMenuByName(key).getId();
//            System.out.println("menu_id : " + menu_id);
//            int rating = Integer.parseInt(String.valueOf(ratingMap.get(key)));
//            userMapper.createRating(user_id, menu_id, rating);
//        }
//        return true;
//    }
    @Override
    public Long registerRatings(Map<String, Integer> ratingMap) {
        Long user_id = null;
        try {
            user_id = userMapper.getRecentUserId() + 1;
            User anonymousUser = new User();
            anonymousUser.setAccount_id("test" + user_id);
            anonymousUser.setPassword("testpwd" + user_id);
            anonymousUser.setName("유저" + user_id);
            anonymousUser.setPhone_number("01000000000");
            anonymousUser.setAuth(0);
            userMapper.createUser(anonymousUser);

            for (String key : ratingMap.keySet()) {
                Long menu_id = menuMapper.getMenuByName(key).getId();
                System.out.println("menu_id : " + menu_id);
                int rating = Integer.parseInt(String.valueOf(ratingMap.get(key)));
                userMapper.createRatings(user_id, menu_id, rating);
            }
        } catch (Exception e) {
            System.out.println("평점 등록중 에러가 발생했습니다!");
            System.out.println("에러 내용 : " + e.toString());
            return null;
        }
        return user_id;
    }

    @Override
    public boolean registerRating(Rating rating) {
        return userMapper.createRating(rating) ==1;
    }

//    @Override
//    public Long registerRating(Map<String, Integer> ratingMap) {
//        Long user_id = null;
//        HttpSession session = request.getSession(); // request 요청을 받고 세션을 생성함.
//        try{
//            if (session.getAttribute("loginUser") == null) {
//                user_id = userMapper.getRecentUserId() + 1;
//                User anonymousUser = new User();
//                anonymousUser.setAccount_id("test" + user_id);
//                anonymousUser.setPassword("testpwd"+user_id);
//                anonymousUser.setName("유저"+user_id);
//                anonymousUser.setPhone_number("01000000000");
//                anonymousUser.setAuth(0);
//                userMapper.createUser(anonymousUser);
//                //로그인 안한 사람이 평가를 하면
//            }
//            else if(session.getAttribute("loginUser") != null){
//                User loginUser = (User)session.getAttribute("loginUser");
//                user_id = loginUser.getId();
//            }
//
//            for(String key : ratingMap.keySet()){
//                Long menu_id = menuMapper.getMenuByName(key).getId();
//                System.out.println("menu_id : " + menu_id);
//                int rating = Integer.parseInt(String.valueOf(ratingMap.get(key)));
//                userMapper.createRating(user_id, menu_id, rating);
//            }
//        }catch(Exception e){
//            System.out.println("평점 등록중 에러가 발생했습니다!");
//            System.out.println("에러 내용 : " + e.toString());
//            return null;
//        }
//        return user_id;
//    }

    @Override
    public boolean createPayment(Payment payment) {
        return userMapper.createPayment(payment) == 1;
    }




}