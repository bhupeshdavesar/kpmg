package com.test.kpmg.service;

import com.test.kpmg.model.RequestObject;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

@Service
public class ServiceClass {

    public String process(RequestObject requestObject) {

        String requestObjKey = requestObject.getKey();
        long depthLevel = requestObjKey.chars().filter(ch -> ch == '/').count();
        String inputObject = requestObject.getInputObject();

        // searching "/a" or "a/b/" in "{“a”:{“b”:{“c”:”d”}}}"
        if(requestObject.getKey().startsWith("/") || requestObject.getKey().endsWith("/")){
            return "Invalid Input";
        }
        // searching "a/b/c/d"  in "{“a”:{“b”:{“c”:”d”}}}"
        if(inputObject.indexOf(":") < 0){
            return "No Match found";
        }

        char currentKey = inputObject.charAt(inputObject.indexOf(":") - 2);

        // searching "a/d"  in "{“a”:{“b”:{“c”:”d”}}}"
        if (requestObjKey.charAt(0) != currentKey) {
            return "No Match found";
        }
        String unprocessedTempOutput = inputObject.substring(inputObject.indexOf(":") + 1);
        String processedTempOutput = StringUtils.chop(unprocessedTempOutput);

        if (depthLevel == 0) {
            return processedTempOutput;
        } else {
            requestObject.setInputObject(processedTempOutput);
            requestObject.setKey(requestObjKey.substring(requestObjKey.indexOf("/") + 1));
            return process(requestObject);
        }
    }


}
