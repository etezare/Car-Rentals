package edu.miu.cs425.eCarRental.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomePageController {
    @GetMapping(value = {"/","/ecarrental","/public/home"})
    public String home0() {
        return "redirect:/ecarrental/public/home";
    }

    @GetMapping(value = {"/public/home","/ecarrental/public/home"})
    public String home1() {
        return "public/home/index";
    }

    @GetMapping(value = {"/public/about","/ecarrental/public/about"})
    public String about() {
        return "public/home/about";
    }


//    @GetMapping(value = {"/public/about","/ecarrental/public/contact"})
//    public String about() {
//        return "public/home/contact";
//    }

    @GetMapping(value = {"/public/services","/ecarrental/public/services"})
    public String service() {
        return "public/home/services";
    }



//    @GetMapping(value = {"/public/logout","/ecarrental/public/logout"})
//    public String logOut() {
//        return "login/login";
//    }

//    @GetMapping(value = {"/public/virtualtour","/ecarrental/public/virtualtour"})
//    public String virtualtour() {
//        return "public/virtualtour";
//    }
//
//    @GetMapping(value = {"/secured/home","/ecarrental/secured/home"})
//    public String home2() {
//        return "secured/index";
//    }
}
