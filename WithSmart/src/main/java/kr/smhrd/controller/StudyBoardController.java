package kr.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import org.springframework.ui.Model;
import kr.smhrd.Mapper.StudyBoardMapper;
import kr.smhrd.entity.CompetBoard;
import kr.smhrd.entity.FriendBoard;
import kr.smhrd.entity.StudyBoard;

@Controller
public class StudyBoardController {
	
	@Autowired
	private StudyBoardMapper studyBoardMapper;
	
	@RequestMapping("/goStudyBoard")
	public String goStudyBoard(@RequestParam(defaultValue = "1") int page, Model model) {
		int pagesize = 10;
	    int totalCount = studyBoardMapper.getTotalCount();
	    int totalPages = (int) Math.ceil((double) totalCount / pagesize);
	    if (page > totalPages) {
	        page = totalPages;
	    }
	    int startIndex = (page - 1) * pagesize; // 시작 인덱스 계산
		/*List<StudyBoard> st_list = studyBoardMapper.studyBoardList();*/
		List<StudyBoard> st_list = studyBoardMapper.getStudyBoardList(startIndex);
		 /*model.addAttribute("st_list", st_list);*/
		model.addAttribute("st_list", st_list);
		model.addAttribute("totalPages", totalPages);
		model.addAttribute("currentPage", page);
		return "StudyBoard";
	}

	@RequestMapping("/goStudyBoardWrite")
	public String goStudyBoardWrite() {
		return "StudyBoardWrite";
	}
	
	// 게시글 등록
	@RequestMapping("/StudyBoardInsert")
	public String StudyBoardInsert(StudyBoard Studyboard, HttpServletRequest request) {
		
		String path = request.getRealPath("resources/image");
		int size = 1024 * 1024 * 10;
		String encoding = "UTF-8";
		DefaultFileRenamePolicy rename = new DefaultFileRenamePolicy();

		try {
			MultipartRequest multi = new MultipartRequest(request, path, size, encoding, rename);
			String title = multi.getParameter("title");
			String writer = multi.getParameter("writer");
			String filename = multi.getFilesystemName("filename");
			String content = multi.getParameter("content");

			
			Studyboard = new StudyBoard(title, writer, filename, content);
			
			// System.out.println(Studyboard.toString());
			
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		int cnt = studyBoardMapper.insertBoard(Studyboard);
		
		if(cnt>0) {
			System.out.println("업로드 성공");
		}else {
			System.out.println("업로드 실패");
		}
		
		return "redirect:/goStudyBoard";
	}
	
	// 게시물 상세보기
	@RequestMapping("/StboardContent")
	public String StboardContent(int studyboard_idx, Model model) {
		studyBoardMapper.StboardCount(studyboard_idx);
		
		StudyBoard studyboard = studyBoardMapper.StboardContent(studyboard_idx);
		model.addAttribute("studyboard",studyboard);
		return "StudyBoardDetail";
	}
	
	
	// 추천
	@RequestMapping("/Stboardheart")
	public String Stboardheart(int studyboard_idx) {
		studyBoardMapper.Stboardheart(studyboard_idx);
		return "redirect:/goStudyBoard";
	}
	
	// 삭제
	@RequestMapping("/deleteStBoard")
	public String deleteStBoard(@RequestParam("studyboard_idx") int studyboard_idx) {
		studyBoardMapper.deleteStBoard(studyboard_idx);
		return "redirect:/goStudyBoard";
	}

	
//	@RequestMapping("/goStudyBoardDetail")
//	public String goStudyBoardDetail() {
//		return "StudyBoardDetail";
//	}

	
}
