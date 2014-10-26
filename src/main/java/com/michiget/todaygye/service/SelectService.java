package com.michiget.todaygye.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.michiget.todaygye.beans.UserInfo2;
import com.michiget.todaygye.controller.SelectController;
import com.michiget.todaygye.model.SelectDao;

@Service
public class SelectService implements SelectController {

	@Autowired
	private SelectDao selectDao;

	private static final Logger logger = LoggerFactory
			.getLogger(SelectService.class);

	@Override
	@RequestMapping("/memberlist")
	public ModelAndView memberListAction(HttpServletRequest request)
			throws Exception {
		logger.info("memberlist page!!");

		int page = 0;

		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}

		ArrayList<UserInfo2> userList = selectDao.getMemberList(page);
		ModelAndView mav = new ModelAndView("list/memberlist.tiles");
		mav.addObject("userList", userList);
		mav.addObject("page", page);

		return mav;
	}

}
