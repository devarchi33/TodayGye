package com.michiget.todaygye.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.michiget.todaygye.beans.UserInfo2;
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
	public ModelAndView memberInsertAction(@ModelAttribute UserInfo2 userInfo2,
			HttpServletRequest request) throws Exception {

		request.setCharacterEncoding("UTF-8");

		logger.info("TodayGye Join");
		logger.info("TodayGyeService Idx : " + userInfo2.getIDX());
		logger.info("TodayGyeService Id: " + userInfo2.getUSERID());

		SimpleDateFormat mSimpleDateFormat = new SimpleDateFormat(
				"yyyy.MM.dd HH:mm:ss", Locale.KOREA);
		Date currentTime = new Date();
		String mTime = mSimpleDateFormat.format(currentTime);
		userInfo2.setREGDATE(mTime);

		userInfo2.setREGIP(request.getRemoteAddr());
		logger.info("TodayGyeService : " + userInfo2.getREGIP());
		insertDao.insertMember(userInfo2);

		return new ModelAndView("redirect:");
	}

}
