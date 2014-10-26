package com.michiget.todaygye.model;

import java.sql.SQLException;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;
import org.springframework.stereotype.Repository;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.michiget.todaygye.beans.UserInfo2;

@Repository
public class LoginDao extends SqlMapClientDaoSupport {

	static Logger logger = LoggerFactory.getLogger(LoginDao.class);

	@Resource(name = "sqlMapClient")
	public void setSuperSqlMapClient(SqlMapClient sqlMapClient) {
		super.setSqlMapClient(sqlMapClient);
	}

	public UserInfo2 getLoginId(String id) throws SQLException {
		return (UserInfo2) getSqlMapClient().queryForObject("getLoginId", id);
	}

}