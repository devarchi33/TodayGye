package com.michiget.todaygye.model;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;
import org.springframework.stereotype.Repository;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.michiget.todaygye.beans.UserInfo2;

@Repository
public class SelectDao extends SqlMapClientDaoSupport {
	@Resource(name = "sqlMapClient")
	public void setSuperSqlMapClient(SqlMapClient sqlMapClient) {
		super.setSqlMapClient(sqlMapClient);
	}

	@SuppressWarnings("unchecked")
	public ArrayList<UserInfo2> getMemberList(int page) throws SQLException {
		return (ArrayList<UserInfo2>) getSqlMapClient().queryForList(
				"getMemberList", null, page, 8);
	}
}
