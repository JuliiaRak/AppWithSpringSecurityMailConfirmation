package com.course.authorization.controller;

import com.course.authorization.domain.User;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
    @GetMapping("/")
    public String greeting(Model model) {
        return "greeting";
    }

    @GetMapping("/main")
    public String main(
            @AuthenticationPrincipal User user,
            Model model
    ) {
        String ourUserName = user.getUsername();
        if(ourUserName == null){
            ourUserName = "<none>";
        }

        model.addAttribute("someText", "hello, " + ourUserName + "!");
        return "main";
    }
}