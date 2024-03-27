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

import kr.smhrd.Mapper.FriendBoardMapper;
import kr.smhrd.entity.FriendBoard;

@Controller
public class FriendBoardController {

	@Autowired
	private FriendBoardMapper friendBoardMapper;
	
	// goFriendBoard.jsp로 이동 + DB값 가져오기
	@RequestMapping("/goFriendBoard")
	public String goFriendBoard(Model model) {
//		System.out.println("친목게시판으로!");
		List<FriendBoard> f_list = friendBoardMapper.friendBoardList();
		model.addAttribute("f_list", f_list);
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
			String filename = multi.getFilesystemName("filename");
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
	
	
	// 상세페이지로 이동 (FriendboardDetail.jsp로 이동)
	@RequestMapping("/FriendboardContent")
	public String boardContent(int num, Model model) {
		friendBoardMapper.FriendboardCount(num);   // num 값에 해당하는 게시물 조회수 1 증가시키기
		FriendBoard Friendboard = friendBoardMapper.FriendboardContent(num); // num 값에 해당하는 하나의 게시물 가져오기
		model.addAttribute("FriendBoard", Friendboard);
		return "FriendBoardDetail";
	}
	

	
//	
//	
//	// 게시글 삭제 (deleteBoard 로 이동)
//	@RequestMapping("/deleteBoard")
//	public String deleteBoard(@RequestParam("num") int num) {
//		boardMapper.deleteBoard(num);
//		return "redirect:/goBoardMain";
//		
//	}
	
	
//	@RequestMapping("/goFriendBoard")
//	public String goFriendBoard() {
//		return "FriendBoard";
//	}
//
//	@RequestMapping("/goFriendBoardDetail")
//	public String goFriendBoardDetail() {
//		return "FriendBoardDetail";
//	}
//
//	@RequestMapping("/goFriendBoardWrite")
//	public String goFriendBoardWrite() {
//		return "FriendBoardWrite";
//	}
	
	
	
	
}
