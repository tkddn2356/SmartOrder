package com.example.controller;

import com.example.domain.User;
import com.example.service.UserService;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;


@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/user/join", method = RequestMethod.GET)
    public String join() {
        return "user/join";
    }

    @RequestMapping(value = "/user/login", method = RequestMethod.GET)
    public String login() {
        return "user/login";
    }

    @ResponseBody
    @RequestMapping(value = "/user/join", method = RequestMethod.POST, consumes = "application/json")
    public ResponseEntity<String> join(@RequestBody User user) {
        return userService.register(user) ? new ResponseEntity<>("success", HttpStatus.OK) :
                new ResponseEntity<>("fail", HttpStatus.INTERNAL_SERVER_ERROR);
    }

    @ResponseBody
    @RequestMapping(value="/user/login", method = RequestMethod.POST, consumes = "application/json")
    public ResponseEntity login(@RequestBody User user){
        return new ResponseEntity<Map<String, Object>>(userService.login(user), HttpStatus.OK);
    }
}
