package com.example.service;

import com.example.util.DetectIntentTexts;
import com.google.cloud.dialogflow.v2.QueryResult;
import com.google.protobuf.Value;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class DetectIntentServiceImpl {

    @Autowired
    private DetectIntentTexts detectIntentTexts;

    public Map<String, Object> getDetectIntentTexts(String inputText) throws IOException {
        QueryResult queryResult = detectIntentTexts.detectIntentTexts(inputText);

        Map<String, Object> parameters = new HashMap<String, Object>();
        for(String key : queryResult.getParameters().getFieldsMap().keySet()){
//            System.out.println("[key]:" + key);
            List<Object> values = new ArrayList<>();

            for(Value value : queryResult.getParameters().getFieldsMap().get(key).getListValue().getValuesList()){
                if(value.getStringValue()!=""){
//                    System.out.println(value.getStringValue());
                    values.add(value.getStringValue());
                }
                else{
//                    System.out.println(value.getNumberValue());
                    values.add((int)value.getNumberValue());
                }
            }
            parameters.put(key, values);
        }

        Map<String, Object> queryResults = new HashMap<String, Object>();
        queryResults.put("QueryText", queryResult.getFulfillmentText());
        queryResults.put("DetectedIntent", queryResult.getIntent().getDisplayName());
        queryResults.put("FulfillmentText", queryResult.getFulfillmentText());
        queryResults.put("Parameters", parameters);
        if(queryResult.getDiagnosticInfo().getFieldsMap().get("end_conversation")!=null){
            queryResults.put("endOfConversation",queryResult.getDiagnosticInfo().getFieldsMap().get("end_conversation").getBoolValue());
        }
        else{
            queryResults.put("endOfConversation",false);
        }


//        if(queryResult.getDiagnosticInfo()!=null){
//            System.out.println(queryResult.getDiagnosticInfo().getFieldsMap().get("end_conversation").getBoolValue());
//        }
//        System.out.println("피자의 개수:" + queryResult.getParameters().getFieldsMap().get("PIZZA_NUMBER").getListValue().getValues(0).getStringValue());
//        System.out.println("피자의 개수:" + queryResult.getParameters().getFieldsMap().get("PIZZA_NUMBER").getListValue().getValues(0).getNumberValue());
//        System.out.println("피자의 이름 개수:" + queryResult.getParameters().getFieldsMap().get("PIZZA_NAME").getListValue().getValues(0).getStringValue());
//        System.out.println("피자의 이름 개수:" + queryResult.getParameters().getFieldsMap().get("PIZZA_NAME").getListValue().getValues(0).getNumberValue());
        return queryResults;
    }


}
