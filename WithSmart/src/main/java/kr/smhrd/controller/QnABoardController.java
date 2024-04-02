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
import kr.smhrd.entity.QnABoard;
import kr.smhrd.entity.StudyBoard;

@Controller
public class QnABoardController {
	
	@Autowired
	private QnABoardMapper qnaBoardMapper;
	
	@RequestMapping("/goQnABoard")
	public String goQnABoard(@RequestParam(defaultValue = "1") int page, Model model) {
		int pagesize = 10;
	    int totalCount = qnaBoardMapper.getTotalCount();
	    int totalPages = (int) Math.ceil((double) totalCount / pagesize);
	    if (page > totalPages) {
	        page = totalPages;
	    }
	    int startIndex = (page - 1) * pagesize; // 시작 인덱스 계산
	    List<QnABoard> q_list = qnaBoardMapper.getQnaBoardList(startIndex);
	    model.addAttribute("q_list", q_list);
	    model.addAttribute("totalPages", totalPages);
	    model.addAttribute("currentPage", page);
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
			String filename="";
            if(multi.getFilesystemName("filename") == null) {
            	filename = "";
            }else {
            	filename = multi.getFilesystemName("filename");
            }
			
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
		
		List<QnABoard> qc_list = qnaBoardMapper.QgetComment(qnaboard_idx);
		QnABoard qnaboard = qnaBoardMapper.QboardContent(qnaboard_idx);
		model.addAttribute("qnaboard", qnaboard);
		model.addAttribute("qc_list", qc_list);
		System.out.println(qc_list);
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

	//QnAUpdate로 이동
	@RequestMapping("/goQnAUpdate")
	public String goQnAUpdate(int qnaboard_idx, Model model) {
		
		QnABoard qnaboard = qnaBoardMapper.QboardContent(qnaboard_idx);
		model.addAttribute("qnaboard",qnaboard);
		return "QnAUpdate";
	}	
	
	// 수정
		@RequestMapping("/UpdateQboard")
		public String UpdateQboard(@RequestParam("qnaboard_idx") int qnaboard_idx, HttpServletRequest request, QnABoard QnAboard) {
			
			String path = request.getRealPath("resources/image");
			int size = 1024 * 1024 * 10;
			String encoding = "UTF-8";
			DefaultFileRenamePolicy rename = new DefaultFileRenamePolicy();

			
			try {
				MultipartRequest multi = new MultipartRequest(request, path, size, encoding, rename);
				String title = multi.getParameter("title");
				System.out.println(title);
				String writer = multi.getParameter("writer");
				String filename="";
	            if(multi.getFilesystemName("filename") == null) {
	            	filename = "";
	            }else {
	            	filename = multi.getFilesystemName("filename");
	            }
				String content = multi.getParameter("content");
			
			QnAboard = new QnABoard(qnaboard_idx, title, writer, filename, content);
			
			} catch (IOException e) {
				e.printStackTrace();
			}
			System.out.println(QnAboard);
			qnaBoardMapper.updateqboard(QnAboard);
			
			return "redirect:/goQnABoard";

		}
	
}
