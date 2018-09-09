package com.kh.respect.meet.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class MeetDaoImpl implements MeetDao {

	@Override
	public List<Map<String, String>> selectMeetList(SqlSessionTemplate sqlSession, int cPage, int numPerPage) {
		
		return sqlSession.selectList("meet.selectMeetList", null, new RowBounds((cPage-1)*numPerPage, numPerPage));
	}
	
	@Override
	public int selectTotalCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("meet.selectTotalCount");
	}

}
