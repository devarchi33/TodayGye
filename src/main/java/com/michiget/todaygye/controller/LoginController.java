package com.michiget.todaygye.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public interface LoginController {
	
	public ModelAndView loginAction(@RequestParam(value = "loginId") String id,
			@RequestParam(value = "pass") String pass,
			HttpServletRequest request) throws Exception;
	
	public ModelAndView logout() throws Exception;
}
