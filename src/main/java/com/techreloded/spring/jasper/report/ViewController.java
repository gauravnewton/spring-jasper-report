package com.techreloded.spring.jasper.report;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ViewController {
    @RequestMapping("/")
    public ModelAndView renderHomePage() {
        return new ModelAndView("index");
    }
}
