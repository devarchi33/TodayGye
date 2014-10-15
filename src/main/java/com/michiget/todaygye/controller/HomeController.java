package com.michiget.todaygye.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

@Controller
public interface HomeController {

	public String home(Locale locale, Model model) throws Exception;
	
	// login page
	public String loginForm() throws Exception;
	// joinpage
	public String joinForm() throws Exception;

}
