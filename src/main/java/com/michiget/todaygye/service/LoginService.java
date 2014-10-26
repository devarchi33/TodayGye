package com.michiget.todaygye.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.michiget.todaygye.beans.UserInfo2;
import com.michiget.todaygye.controller.LoginController;
import com.michiget.todaygye.model.LoginDao;

@Service
public class LoginService implements LoginController {

	private static final Logger logger = LoggerFactory
			.getLogger(LoginService.class);

	@Autowired
	private LoginDao loginDao;

	@Override
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView loginAction(@RequestParam(value = "loginId") String id,
			@RequestParam(value = "pass") String pass,
			HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("UTF-8");

		int check_return = 0;

		UserInfo2 userInfo2 = loginDao.getLoginId(id);
		String loginId = userInfo2.getUSERID();
		String loginPass = userInfo2.getPASS();

		HttpSession session = request.getSession();
		session.setAttribute("userInfo2", userInfo2);
		session.setAttribute("loginId", loginId);

		// logger.debug("userInfo = " + userInfo);
		if (loginId != null || loginId != "") {
			if ((userInfo2.getPASS().equals(pass))) {

				ModelAndView mav = new ModelAndView("login/loginsuccess.tiles");
				check_return = 2;
				mav.addObject("check", check_return);

				return mav;
			}
		}

		ModelAndView mav = new ModelAndView("login/loginfail.tiles");
		check_return = 0;
		mav.addObject("check", check_return);
		mav.addObject("name", userInfo2.getNAME());

		logger.info("db id = " + loginId);
		logger.info("db pass = " + loginPass);
		logger.info("input id = " + id);
		logger.info("input pass = " + pass);
		logger.debug("db name = " + userInfo2.getNAME());

		return mav;
	}

	@RequestMapping("/logout")
	public ModelAndView logout() throws Exception {
		logger.info("logout page");

		return new ModelAndView("login/logout.tiles");
	}
}
