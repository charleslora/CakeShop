package com.niit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {


public HomeController(){
		
		System.out.println("HomeController  bean is created ");
	}


@RequestMapping(value="/all/home")   //  /home - KEY in Handler Map
	public String getHomePage(){  //  getHomePage() is the Value in Handler map
		return "home";   //logical view name
	}

@RequestMapping(value="/all/aboutus")
public String aboutUs(){
	return "aboutus";
}

@RequestMapping(value="/login")   //  /home - KEY in Handler Map
public String getHomePag(){  //  getHomePage() is the Value in Handler map
	return "login";   //logical view name
}
   

}