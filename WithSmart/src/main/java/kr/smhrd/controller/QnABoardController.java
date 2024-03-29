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

import kr.smhrd.Mapper.QnABoardMapper;
import kr.smhrd.entity.FriendBoard;
import kr.smhrd.entity.QnABoard;

@Controller
public class QnABoardController {
	
	@Autowired
	private QnABoardMapper qnaBoardMapper;
	
	@RequestMapping("/goQnABoard")
	public String goQnABoard(Model model) {
		List<QnABoard> q_list = qnaBoardMapper.qnaBoardList();
		model.addAttribute("q_list", q_list);
		return "QnABoard";
	}
	
	// 게시글 등록
	@RequestMapping("/QnABoardInsert")
	public String QnABoardInsert(QnABoard QnAboard, HttpServletRequest request) {
		
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

			
			QnAboard = new QnABoard(title, writer, filename, content);
			
			// System.out.println(QnAboard.toString());
			
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		int cnt = qnaBoardMapper.insertBoard(QnAboard);
		
		if(cnt>0) {
			System.out.println("업로드 성공");
		}else {
			System.out.println("업로드 실패");
		}
		
		return "redirect:/goQnABoard";
	}
	
	@RequestMapping("/goQnABoardWrite")
	public String goQnABoardWrite() {
		return "QnABoardWrite";
	}
	
	// 게시물 상세보기
	@RequestMapping("/QboardContent")
	public String QboardContent(int qnaboard_idx, Model model) {
		qnaBoardMapper.QboardCount(qnaboard_idx);
		
		QnABoard qnaboard = qnaBoardMapper.QboardContent(qnaboard_idx);
		model.addAttribute("qnaboard", qnaboard);
		return "QnABoardDetail";
	}
	
	// 추천
	@RequestMapping("/Qboardheart")
	public String Qboardheart(int qnaboard_idx) {
		qnaBoardMapper.Qboardheart(qnaboard_idx);
		return "redirect:/goQnABoard";
	}
	
	// 게시글 삭제
	@RequestMapping("/deleteQBoard")
	public String deleteQBoard(@RequestParam("qnaboard_idx") int qnaboard_idx) {
		qnaBoardMapper.deleteQBoard(qnaboard_idx);
		return "redirect:/goQnABoard";
	}


	
}
