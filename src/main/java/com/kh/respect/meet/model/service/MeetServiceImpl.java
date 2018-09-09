package com.kh.respect.meet.model.service;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.respect.meet.model.dao.MeetDao;

@Service
public class MeetServiceImpl implements MeetService {

	@Autowired
	MeetDao dao;
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	
	@Override
	public List<Map<String, String>> selectMeetList(int cPage, int numPerPage) {
		
		return dao.selectMeetList(sqlSession, cPage, numPerPage);
	}


	@Override
	public int selectTotalCount() {
		return dao.selectTotalCount(sqlSession);
	}

}
