package com.boardimak.main.controller;

import java.security.Principal;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.boardimak.main.model.Property;


import com.boardimak.main.repository.PropertyRepository;

import com.boardimak.main.services.UserService;

import com.google.gson.JsonObject;
import com.stripe.exception.StripeException;

@Controller
public class UsersController {

	
	@Autowired 
	UserService usersService;
	
	PropertyRepository propRepo;

	

	@GetMapping("/register-payment")
	public String registerPay() {
		return "register-payment";
	}

	

	@GetMapping("/register-owner")
	public String index() {
		return "custom-account";
	} 
	
}
