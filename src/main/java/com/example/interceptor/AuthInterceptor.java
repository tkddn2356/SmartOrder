package com.example.interceptor;

import com.example.domain.User;
import com.example.util.JwtUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AuthInterceptor extends HandlerInterceptorAdapter {
//    @Autowired
//    private JwtUtil jwtUtil;
//
//    @Override
//    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
//        if (jwtUtil.getUserByToken(request.getHeader("Authorization")) == null) {
//            response.sendRedirect("/user/login");
//            return false;
//        } else
//            return true;
//    }
}
