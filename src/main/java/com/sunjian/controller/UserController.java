package com.sunjian.controller;

import com.sunjian.entity.User;
import com.sunjian.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping("/index")
    public ModelAndView index() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("index");
        modelAndView.addObject("list", userService.findAll());
        return modelAndView;
    }

    @PostMapping("/add")
    public String add(User user) {
        userService.add(user);
        return "redirect:/index";
    }

    @GetMapping("/deleteById")
    public String deleteById(Long id) {
        userService.deleteById(id);
        return "redirect:/index";
    }

    @GetMapping("/findById")
    public ModelAndView findById(Long id) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("update");
        modelAndView.addObject("user", userService.findById(id));
        return modelAndView;
    }

    @PostMapping("/update")
    public String update(User user) {
        userService.update(user);
        return "redirect:/index";
    }
}
