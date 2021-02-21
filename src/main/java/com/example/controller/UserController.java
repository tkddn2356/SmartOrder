package com.example.controller;

import com.example.domain.User;
import com.example.repository.UserMapper;
import com.example.service.UserServiceImpl;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Controller
public class UserController {

    @Autowired
    private UserServiceImpl userService;

    @Autowired
    private UserMapper userMapper;

    @RequestMapping(value = "/user/join", method = RequestMethod.GET)
    public String join() {
        return "user/join";
    }

    @RequestMapping(value = "/user/login", method = RequestMethod.GET)
    public String login() {
        return "user/login";
    }

    @RequestMapping(value = "/user/rating", method = RequestMethod.GET)
    public String rating() {
        return "user/rating";
    }

//    @ResponseBody
//    @RequestMapping(value = "/user/join", method = RequestMethod.POST, consumes = "application/json")
//    public ResponseEntity<String> join(@RequestBody User user) {
//        return userService.register(user) ? new ResponseEntity<>("회원가입 성공", HttpStatus.OK) :
//                new ResponseEntity<>("fail", HttpStatus.INTERNAL_SERVER_ERROR);
//    }

    @ResponseBody
    @RequestMapping(value = "/user/join", method = RequestMethod.POST, consumes = "application/json")
    public ResponseEntity join(@RequestBody User user) {
        Map<String,Object> result = userService.register(user);
        if(result != null){
            return new ResponseEntity<Map<String, Object>>(result, HttpStatus.OK);
        }
        else{
            return new ResponseEntity<>("fail", HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @ResponseBody
    @RequestMapping(value="/user/login", method = RequestMethod.POST, consumes = "application/json")
    public ResponseEntity login(@RequestBody User user){
        if(user.getAccount_id() == null && user.getPhone_number() != null){
            Map<String,Object> result = userService.loginByPhone_number(user.getPhone_number());
            if ( result!= null) { // login 성공
                return new ResponseEntity<Map<String, Object>>(result, HttpStatus.OK);
            }
            else{ // login 실패
                return new ResponseEntity<String>("login Fail", HttpStatus.BAD_REQUEST);
            }
        }
        else{
            Map<String,Object> result = userService.loginById(user);
            if ( result!= null) { // login 성공
                return new ResponseEntity<Map<String, Object>>(result, HttpStatus.OK);
            }
            else{ // login 실패
                return new ResponseEntity<String>("login Fail", HttpStatus.BAD_REQUEST);
            }
        }
    }

//    @ResponseBody
//    @RequestMapping(value="/user/rating/{id}", method = RequestMethod.POST, consumes = "application/json")
//    public String getRatings(@RequestBody String param, @PathVariable("id") Long id){
//        ObjectMapper mapper = new ObjectMapper();
//        String json = param;
//        try {
//            Map<String, Integer> map = mapper.readValue(json, Map.class);
//            userService.registerRating(id, map);
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
//        return "success";
//        // 예외처리 및 레이어 구분 막장임.. 나중에 추가할꺼.
//    }

    @ResponseBody
    @RequestMapping(value="/user/rating", method = RequestMethod.POST, consumes = "application/json")
    public ResponseEntity<Long> getRatings(@RequestBody String param){
        ObjectMapper mapper = new ObjectMapper();
        String json = param;
        try {
            Map<String, Integer> map = mapper.readValue(json, Map.class);
            return new ResponseEntity<>(userService.registerRating(map), HttpStatus.OK);
            // 반환값은 평가 등록한 user_id가 반환됨
        } catch (IOException e) {
            e.printStackTrace();
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
        // 예외처리 및 레이어 구분 막장임.. 나중에 추가할꺼.
    }


//    @ResponseBody
//    @RequestMapping(value="/user/login", method = RequestMethod.POST, consumes = "application/json")
//    public ResponseEntity loginByPhone_number(@RequestBody User user){
//        Map<String,Object> result = userService.loginById(user);
//        if ( result!= null) { // login 성공
//            return new ResponseEntity<Map<String, Object>>(result, HttpStatus.OK);
//        }
//        else{ // login 실패
//            return new ResponseEntity<String>("login Fail", HttpStatus.BAD_REQUEST);
//        }
//    }

//    @ResponseBody
//    @RequestMapping(value = "/create/randomUser", method = RequestMethod.GET)
//    public String createRandom() {
//        for (int i = 1; i <= 500; i++) {
//            User randomUser = new User();
//            randomUser.setAccount_id("test" + i);
//            randomUser.setPassword("testpwd" + i);
//            randomUser.setName("유저" + i);
//            randomUser.setPhone_number("01000000000");
//            userService.register(randomUser);
//        }
//        return "success";
//    }
//
//    @ResponseBody
//    @RequestMapping(value = "/create/randomRating", method = RequestMethod.GET)
//    public String createRandomRating() {
//
//        for (int i = 1; i <= 500; i++) {
//            System.out.println("데이터생성중 - " + i);
//            int random = getRandom(1, 67);
//            int[] randomMenu = new int[random];
//            for (int x = 0; x <random; x++) {
//                randomMenu[x] = (int) (Math.random() * 67 + 1);
//                for (int y = 0; y < x; y++) {
//                    if (randomMenu[y] == randomMenu[x]) {
//                        x--;
//                        break;
//                    }
//                }
//            }
//
//            for(int j=0; j<random; j++){
//                int random3 = getRandom(1, 6); // 1~5점을 부여한다.
//                userMapper.createRandomRating(Long.valueOf(i), Long.valueOf(randomMenu[j]), random3);
//            }
//        }
//        return "success";
//    }
//
//    public int getRandom(int min, int max) {
//        int random = (int) ((Math.random() * (max - min)) + min);
//        return random;
//    }


}
