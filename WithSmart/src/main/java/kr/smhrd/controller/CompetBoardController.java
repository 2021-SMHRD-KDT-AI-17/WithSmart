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

import kr.smhrd.Mapper.CompetBoardMapper;
import kr.smhrd.entity.CompetBoard;

@Controller
public class CompetBoardController {

	@Autowired
	private CompetBoardMapper CompetboardMapper;
	     
	// BoardMain.jsp로 이동 + DB값 가져오기
	@RequestMapping("/goCompetBoard")
	public String goCompetBoard(Model model) {
		List<CompetBoard> cp_list = CompetboardMapper.CompetboardList();
		model.addAttribute("cp_list",cp_list);
		return "CompetBoard";
	}
	
	@RequestMapping("/goCompetBoardDetail")
	public String goCompetBoardDetail(@RequestParam("competboard") int competboard, Model model ) {
		CompetBoard competBoard = CompetboardMapper.getCompetBoardById(competboard);
		System.out.println(competBoard);
		model.addAttribute("cp_detail", competBoard);
		return "CompetBoardDetail";
	}
	
	// BoardWrite.jsp로 이동
	@RequestMapping("/goCompetBoardWrite")
	public String goCompetBoardWrite() {
		return "CompetBoardWrite";
	}
	
	// 게시글 등록
	@RequestMapping("/CompetBoardInsert")
	public String CompetboardInsert(CompetBoard board, HttpServletRequest request) {
		
		
		
		
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
			String filename = multi.getFilesystemName("filename");
			String content = multi.getParameter("content");
			
			board = new CompetBoard(title, writer, filename, content);
			
			System.out.println(board.toString());
			
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		int cnt = CompetboardMapper.insertBoard(board);
		
		if(cnt>0) {
			System.out.println("업로드 성공");
		}else {
			System.out.println("업로드 실패");
		}
		
		return "redirect:/goBoardMain";
	}
	
	/*
	 * // 상세페이지로 이동 (boardDetail.jsp로 이동)
	 * 
	 * @RequestMapping("/boardContent") public String boardContent(int num, Model
	 * model) { CompetboardMapper.boardCount(num); // num 값에 해당하는 게시물 조회수 1 증가시키기
	 * board = boardMapper.boardContent(num); // num 값에 해당하는 하나의 게시물 가져오기
	 * model.addAttribute("board", board); return "BoardDetail"; }
	 * 
	 * 
	 * // 게시글 삭제 (deleteBoard 로 이동)
	 * 
	 * @RequestMapping("/deleteBoard") public String
	 * deleteBoard(@RequestParam("num") int num) { boardMapper.deleteBoard(num);
	 * return "redirect:/goBoardMain";
	 * 
	 * }
	 */




}
