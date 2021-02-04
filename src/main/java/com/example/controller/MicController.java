package com.example.controller;

import com.example.domain.Board;
import com.example.service.DetectIntentServiceImpl;
import com.example.util.DetectIntentTexts;
import com.example.util.InfiniteStreamRecognize;
import com.example.util.StreamingMic;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
public class MicController {

    @Autowired
    private StreamingMic streamingMic;

    @Autowired
    private InfiniteStreamRecognize infiniteStreamRecognize;

    @Autowired
    private DetectIntentServiceImpl detectIntentService;

    @RequestMapping(value = "/mic2", method = RequestMethod.GET)
    public String main() throws Exception {
//        streamingMic.streamingMicRecognize();
//        infiniteStreamRecognize.infiniteStreamingRecognize("ko-KR");
        return "mic2";
    }

    @ResponseBody
    @RequestMapping(value = "/api/mic/{word}", method=RequestMethod.GET)
    public ResponseEntity requestMic(@PathVariable("word") String word) throws IOException {
//        List<String> testList = new ArrayList<>();
//        testList.add(word);
//        Map<String, Object> result = detectIntentTexts.detectIntentTexts("smartorder-klwg", testList, "12345", "ko-kr");
//        Map<String, Object> result = detectIntentTexts.detectIntentTexts("smartordersystem-fnvd", testList, "12345", "ko-kr");
        return new ResponseEntity<Map<String, Object>>(detectIntentService.getDetectIntentTexts(word), HttpStatus.OK);
    }


}
