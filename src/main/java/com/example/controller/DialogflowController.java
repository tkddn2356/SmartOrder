package com.example.controller;


import com.example.util.DetectIntentTexts;
import com.google.cloud.dialogflow.v2.QueryResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
public class DialogflowController {

    @Autowired
    private DetectIntentTexts detectIntentTexts;

//    @ResponseBody
//    @RequestMapping(value = "/test", method = RequestMethod.GET)
//    public ResponseEntity test() throws IOException {
//        List<String> testList = new ArrayList<>();
//        testList.add("안녕");
//        Map<String, String> result =
//                detectIntentTexts.detectIntentTexts("smartorder-klwg", testList, "123456", "ko-kr");
//        return new ResponseEntity<Map<String, String>>(result, HttpStatus.OK);
//    }

//    @ResponseBody
//    @RequestMapping(value = "/test", method = RequestMethod.GET)
//    public Map<String, QueryResult> test() throws IOException {
//        List<String> testList = new ArrayList<>();
//        testList.add("안녕");
//        Map<String, QueryResult> result =
//                detectIntentTexts.detectIntentTexts("smartorder-klwg", testList, "123456", "ko-kr");
//        return result;
//    }

}
