package com.kh.respect.meet.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.kh.respect.common.Page;
import com.kh.respect.meet.model.service.MeetService;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;



@Controller
public class MeetController {
	
	private Logger logger=LoggerFactory.getLogger(MeetController.class);
	
	@Autowired
	MeetService service;
	
	@RequestMapping("/meet/meetList.do")
	public ModelAndView meetList(@RequestParam(value="cPage", required=false, defaultValue="1") int cPage)
	{
		ModelAndView mv = new ModelAndView();
		int numPerPage = 10;
		
		List<Map<String,String>> list = service.selectMeetList(cPage, numPerPage);
		
		int totalCount=service.selectTotalCount();
		
		mv.addObject("list", list);
		mv.addObject("pagebar", Page.getPage(cPage, numPerPage, totalCount, "meetList.do"));
		mv.setViewName("meet/meetList");
		
		return mv;
	}
	
	@RequestMapping("/meet/meetForm.do")
	public String meetForm()
	{
		return "/meet/meetForm";
	}
	
	@RequestMapping()
	public String selectOne()
	{
		return "";
	}
	
	@RequestMapping(value="/imageUpload.do", method = RequestMethod.POST)
	public void imageUpload(@RequestParam (value="files") MultipartFile[] files, HttpServletRequest request) throws IOException
	{
		logger.debug("request : "+request);
		ModelAndView mv = new ModelAndView();
		System.out.println(files);
		logger.debug("파일이름 : "+files);
		MultipartHttpServletRequest mt = (MultipartHttpServletRequest)request;
		System.out.println(mt);
		String fileName = ""; // 파일명
		
		String saveDir = request.getSession().getServletContext().getRealPath("/resources/uploadImg");
		int size = 10*1024*1024; //업로드 사이즈 제한 10MB이하
		MultipartRequest multi = new MultipartRequest(request, saveDir, size, "utf-8", new DefaultFileRenamePolicy());
		
		
		
		Enumeration filen = multi.getFileNames();
		String file = (String)filen.nextElement();
		fileName = multi.getFilesystemName(file);
		
		System.out.println(fileName);
		
		//List<MeetAttachment> attList = new ArrayList();
		
		logger.debug("multi :: "+multi);
		logger.debug("file :: "+file);
		logger.debug("fileName :: "+fileName);
		
		
		File dir = new File(saveDir);
		// 폴더가 없을경우 생성
		if(dir.exists()==false)
		{
			dir.mkdirs();
		}
		
		/*for(MultipartFile f : files)
		{
			if(!f.isEmpty())
			{
				String originName = f.getOriginalFilename();
				String ext = originName.substring(originName.lastIndexOf(".")+1);
				SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd_HHmmssSS");
				int rndNum = (int)(Math.random()*1000);
				String renamed = sdf.format(new Date(System.currentTimeMillis()));
				renamed += "_" + rndNum + "." + ext;
				try {
					// 서버 경로에 파일을 저장
					f.transferTo(new File(saveDir+"/"+renamed));
				}
				catch(Exception e)
				{
					e.printStackTrace();
				}
				BungAttachment battach = new BungAttachment();
				battach.setOriginName(originName);
				battach.setRenamed(renamed);
				attList.add(battach);
			}
		}*/
		
		/*mv.addObject(attList);
		mv.setViewName("jsonView");
		
		return mv;*/
		
	}
	
	
}
