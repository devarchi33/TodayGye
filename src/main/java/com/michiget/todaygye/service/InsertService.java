package com.michiget.todaygye.service;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.michiget.todaygye.beans.UserInfo;
import com.michiget.todaygye.controller.InsertController;
import com.michiget.todaygye.model.InsertDao;

@Service
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

		logger.info("ȸ����DB���� ������");
		logger.info("TodayGyeService Idx : " + userInfo.getIdx());
		logger.info("TodayGyeService Id: " + userInfo.getId());
		logger.info("TodayGyeService Nick: " + userInfo.getNick());

		userInfo.setRegIp(request.getRemoteAddr());
		logger.info("TodayGyeService : " + userInfo.getRegIp());
		insertDao.insertMember(userInfo);

		return new ModelAndView("redirect:");
	}

}
