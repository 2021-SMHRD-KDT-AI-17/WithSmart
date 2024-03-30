package kr.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.smhrd.Mapper.SuggBoardMapper;
import kr.smhrd.entity.SuggBoard;

@Controller
public class SuggBoardController {
	
	@Autowired
	private SuggBoardMapper suggBoardMapper;
	
	
	@RequestMapping("/goSuggBoard")
	public String goSuggBoard(Model model) {
		List<SuggBoard> s_list = suggBoardMapper.suggBoardList();
		model.addAttribute("s_list", s_list);
		return "SuggBoard";
	}
	
	@RequestMapping("/goSuggBoardWrite")
	public String goSuggBoardWrite() {
		return "SuggBoardWrite";
	}
	
	// 게시글 등록
	@RequestMapping("/SuggBoardInsert")
	public String SuggBoardInsert(SuggBoard Suggboard, HttpServletRequest request) {
//		System.out.println("controller접근");

		
		// 1. 요청객체(request)
		// 2. 파일을 저장할 경로(String)
		String path = request.getRealPath("resources/image");
		System.out.println(path);
		// 3. 허용가능한 용량 크기(int)
		int size = 1024 * 1024 * 10;
		// 4. 인코딩 타입(String)
		String encoding = "UTF-8";
		// 5. 파일 이름 중복제거
		DefaultFileRenamePolicy rename = new DefaultFileRenamePolicy();

		
		try {
			MultipartRequest multi = new MultipartRequest(request, path, size, encoding, rename);
			String title = multi.getParameter("title");
			String writer = multi.getParameter("writer");
			String filename="";
            if(multi.getFilesystemName("filename") == null) {
            	filename = "";
            }else {
            	filename = multi.getFilesystemName("filename");
            }
			String content = multi.getParameter("content");

			
			Suggboard = new SuggBoard(title, writer, filename, content);
			
			//  System.out.println(Suggboard.toString());
			
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		int cnt = suggBoardMapper.insertBoard(Suggboard);
		
		if(cnt>0) {
			System.out.println("업로드 성공");
		}else {
			System.out.println("업로드 실패");
		}
		
		return "redirect:/goSuggBoard";
	}
	
	@RequestMapping("/SboardContent")
	public String SboardContent(int suggboard_idx, Model model) {
		SuggBoard suggboard = suggBoardMapper.SboardContent(suggboard_idx);
		model.addAttribute("suggboard",suggboard);
		return "SuggBoardDetail";
	}
	
	// 게시물 삭제
	@RequestMapping("/deleteSBoard")
	public String deleteSBoard(@RequestParam("suggboard_idx") int suggboard_idx) {
		suggBoardMapper.deleteSBoard(suggboard_idx);
		return "redirect:/goSuggBoard";
	}

//	@RequestMapping("/goSuggBoardDetail")
//	public String goSuggBoardDetail() {
//		return "SuggBoardDetail";
//	}


}
