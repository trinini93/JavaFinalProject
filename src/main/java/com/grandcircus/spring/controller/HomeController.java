package com.grandcircus.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by trina2 on 5/22/17.
 */


@Controller //first: do this annotation, when red, import class.
public class HomeController {

    //second: do this annotation, and import class again.
    @RequestMapping("/")

    //third:create method, import ModelAndView. Must return ModelAndView
    public ModelAndView helloWorld() {
        return new ModelAndView("welcome", "hello", "Hello, World!");
    }
}


