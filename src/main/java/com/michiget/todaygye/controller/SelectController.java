package com.michiget.todaygye.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

@Controller
public interface SelectController {

	public ModelAndView memberListAction(HttpServletRequest request)
			throws Exception;

}
