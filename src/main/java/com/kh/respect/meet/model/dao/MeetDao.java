package com.kh.respect.meet.model.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

public interface MeetDao {
	
	List<Map<String,String>> selectMeetList(SqlSessionTemplate sqlSession, int cPage, int numPerPage);
	int selectTotalCount(SqlSessionTemplate sqlSession);
	
	
}
