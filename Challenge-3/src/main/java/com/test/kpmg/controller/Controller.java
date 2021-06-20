package com.test.kpmg.controller;


import com.test.kpmg.model.RequestObject;
import com.test.kpmg.service.ServiceClass;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controller {

    @Autowired
    private ServiceClass serviceClass;

    @PostMapping ("/challenge3")
    public String evaluate(@RequestBody RequestObject request) {
          return serviceClass.process(request);
    }
}
