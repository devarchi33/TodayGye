package com.michiget.todaygye.service;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.michiget.todaygye.beans.UserInfo;
import com.michiget.todaygye.controller.InsertController;
import com.michiget.todaygye.model.InsertDao;

public class InsertService implements InsertController {

	private static final Logger logger = LoggerFactory
			.getLogger(InsertService.class);

	@Autowired
	private InsertDao insertDao;

	@Override
	@RequestMapping(value = "/joinsite", method = RequestMethod.POST)
	public ModelAndView memberInsertAction(@ModelAttribute UserInfo userInfo,
			HttpServletRequest request) throws Exception {

		request.setCharacterEncoding("UTF-8");

		logger.info("회원가입DB접속 페이지");
		logger.info("TodayGyeService : " + userInfo.getId());
		logger.info("TodayGyeService : " + userInfo.getNick());

		userInfo.setRegIp(request.getRemoteAddr());
		insertDao.insertMember(userInfo);

		return new ModelAndView("redirect:");

	}

}
