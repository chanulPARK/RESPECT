package com.kh.respect.meet.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;


public interface MeetService {
	
	List<Map<String,String>> selectMeetList(int cPage, int numPerPage);
	int selectTotalCount();
	
	
}
