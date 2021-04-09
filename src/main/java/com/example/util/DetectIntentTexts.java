package com.example.util;

import com.google.api.gax.rpc.ApiException;
import com.google.cloud.dialogflow.v2.DetectIntentResponse;
import com.google.cloud.dialogflow.v2.QueryInput;
import com.google.cloud.dialogflow.v2.QueryResult;
import com.google.cloud.dialogflow.v2.SessionName;
import com.google.cloud.dialogflow.v2.SessionsClient;
import com.google.cloud.dialogflow.v2.TextInput;
import com.google.common.collect.Maps;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Component
public class DetectIntentTexts {
    private String projectId = "smartordersystem-fnvd";
    private String sessionId = "1234";
    private String languageCode = "ko-kr";

    // DialogFlow API Detect Intent sample with text inputs.
    public QueryResult detectIntentTexts(String inputText)
            throws IOException, ApiException {
        List<String> texts = new ArrayList<>();
        texts.add(inputText);
        QueryResult queryResult = null;
//        Map<String, Object> queryResults = new HashMap<String, Object>();
        // Instantiates a client
        try (SessionsClient sessionsClient = SessionsClient.create()) {
            // Set the session name using the sessionId (UUID) and projectID (my-project-id)
            SessionName session = SessionName.of(projectId, sessionId);
            System.out.println("Session Path: " + session.toString());

            // Detect intents for each text input
            for (String text : texts) {
                // Set the text (hello) and language code (en-US) for the query
                TextInput.Builder textInput =
                        TextInput.newBuilder().setText(text).setLanguageCode(languageCode);

                // Build the query with the TextInput
                QueryInput queryInput = QueryInput.newBuilder().setText(textInput).build();

                // Performs the detect intent request
                DetectIntentResponse response = sessionsClient.detectIntent(session, queryInput);

                // Display the query result
                queryResult = response.getQueryResult();

                System.out.println("====================");
                System.out.format("Query Text: '%s'\n", queryResult.getQueryText());
                System.out.format(
                        "Detected Intent: %s (confidence: %f)\n",
                        queryResult.getIntent().getDisplayName(), queryResult.getIntentDetectionConfidence());
                System.out.format("Fulfillment Text: '%s'\n", queryResult.getFulfillmentText());
//                if(queryResult.getDiagnosticInfo()!=null){
//                    System.out.println(queryResult.getDiagnosticInfo().getFieldsMap().get("end_conversation"));
//                }

//                queryResults.put("QueryText", queryResult.getFulfillmentText());
//                queryResults.put("DetectedIntent", queryResult.getIntent().getDisplayName());
//                queryResults.put("FulfillmentText", queryResult.getFulfillmentText());
//                System.out.println("피자의 개수:" + queryResult.getParameters().getFieldsMap().get("number").getNumberValue());
//                System.out.println("피자의 이름 개수:" + queryResult.getParameters().getFieldsMap().get("PIZZA_NAME"));
            }
        }
        return queryResult;
    }
}

