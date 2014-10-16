package com.michiget.todaygye.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.michiget.todaygye.beans.UserInfo;

@Controller
public interface InsertController {

	public ModelAndView memberInsertAction(@ModelAttribute UserInfo userInfo,
			HttpServletRequest request) throws Exception;
}
