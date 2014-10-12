package com.michiget.todaygye.model;

import java.sql.SQLException;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;
import org.springframework.stereotype.Repository;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.michiget.todaygye.beans.UserInfo;

@Repository
public class MichigetDao extends SqlMapClientDaoSupport {

	static Logger logger = LoggerFactory.getLogger(MichigetDao.class);

	@Resource(name = "sqlMapClient")
	public void setSuperSqlMapClient(SqlMapClient sqlMapClient) {
		super.setSqlMapClient(sqlMapClient);
	}

	public UserInfo getLoginId(String id) throws SQLException {
		return (UserInfo) getSqlMapClient().queryForObject("getLoginId", id);
	}

}