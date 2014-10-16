package com.michiget.todaygye.model;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;
import org.springframework.stereotype.Repository;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.michiget.todaygye.beans.UserInfo;

@Repository
public class SelectDao extends SqlMapClientDaoSupport {
	@Resource(name = "sqlMapClient")
	public void setSuperSqlMapClient(SqlMapClient sqlMapClient) {
		super.setSqlMapClient(sqlMapClient);
	}

	@SuppressWarnings("unchecked")
	public ArrayList<UserInfo> getMemberList(int page) throws SQLException {
		return (ArrayList<UserInfo>) getSqlMapClient().queryForList(
				"getMemberList", null, page, 8);
	}
}
