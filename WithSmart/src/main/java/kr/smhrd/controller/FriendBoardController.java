package kr.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

// import kr.smhrd.Mapper.FriendBoardCommentMapper;
import kr.smhrd.Mapper.FriendBoardMapper;
import kr.smhrd.entity.FriendBoard;
// import kr.smhrd.entity.FriendBoardComment;

@Controller
public class FriendBoardController {

	@Autowired
	private FriendBoardMapper friendBoardMapper;
	
	// @Autowired
	// private FriendBoardCommentMapper friendBoardCommentMapper;
	
	// goFriendBoard.jsp로 이동 + DB값 가져오기
	@RequestMapping("/goFriendBoard")
	public String goFriendBoard(@RequestParam(defaultValue = "1") int page, Model model) {
		int pagesize = 10;
	    int totalCount = friendBoardMapper.getTotalCount();
	    int totalPages = (int) Math.ceil((double) totalCount / pagesize);
	    if (page > totalPages) {
	        page = totalPages;
	    }
	    int startIndex = (page - 1) * pagesize; // 시작 인덱스 계산
	    List<FriendBoard> f_list = friendBoardMapper.getFriendBoardList(startIndex);
	    model.addAttribute("f_list", f_list);
	    model.addAttribute("totalPages", totalPages);
	    model.addAttribute("currentPage", page);
	    return "FriendBoard";
	}
	
	// goFriendBoardWrite.jsp로 이동
	@RequestMapping("/goFriendBoardWrite")
	public String goFriendBoardWrite() {
		return "FriendBoardWrite";
	}
	
	// 게시글 등록
	@RequestMapping("/FriendBoardInsert")
	public String friendBoardInsert(FriendBoard Friendboard, HttpServletRequest request) {
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

			
			Friendboard = new FriendBoard(title, writer, filename, content);
			
			 System.out.println(Friendboard.toString());
			
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		int cnt = friendBoardMapper.insertBoard(Friendboard);
		
		if(cnt>0) {
			System.out.println("업로드 성공");
		}else {
			System.out.println("업로드 실패");
		}
		
		return "redirect:/goFriendBoard";
	}
	
	
	// 상세페이지로 이동
	@RequestMapping("/FboardContent")
	public String FboardContent(int friendboard_idx, Model model) {
		friendBoardMapper.FboardCount(friendboard_idx); // 조회수
		
		List<FriendBoard> fc_list = friendBoardMapper.FgetComment(friendboard_idx);
		FriendBoard friendboard = friendBoardMapper.FboardContent(friendboard_idx);
		model.addAttribute("fc_list", fc_list);
		model.addAttribute("friendboard", friendboard);
		// System.out.println(fc_list);
		return "FriendBoardDetail";
	}
	
	// 추천수
	@RequestMapping("/Fboardheart")
	public String Fboardheart(int friendboard_idx) {
		friendBoardMapper.Fboardheart(friendboard_idx);
		return "redirect:/goFriendBoard";
	}
	
	// 게시글 삭제
	@RequestMapping("/deleteFBoard")
	public String deleteFBoard(@RequestParam("friendboard_idx") int friendboard_idx) {
		friendBoardMapper.deleteFBoard(friendboard_idx);
		return "redirect:/goFriendBoard";
	}
	
	// goFriendUpdate.jsp로 이동
	@RequestMapping("/goFriendUpdate")
	public String goFriendUpdate() {
		return "FriendUpdate";
	}
	
	// 게시물 수정
	@RequestMapping("/UpdateFboard")
	public String UpdateFboard(int friendboard_idx, Model model) {
		FriendBoard friendboard = friendBoardMapper.UpdateFboard(friendboard_idx);
		model.addAttribute("friendboard", friendboard);
		return "redirect:/FriendBoardInsert";
		// friendBoardMapper.UpdateFboard(friendboard_idx);
	}
	
	
}
