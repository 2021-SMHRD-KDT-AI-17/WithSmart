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

import kr.smhrd.Mapper.ProjectBoardMapper;
import kr.smhrd.entity.ProjectBoard;

@Controller
public class ProjectBoardController {
	
	@Autowired
	private ProjectBoardMapper projectBoardMapper;
	
	@RequestMapping("/goProjectBoard")
	public String goProjectBoard(@RequestParam(defaultValue = "1") int page, Model model) {
		int pagesize = 10;
	    int totalCount = projectBoardMapper.getTotalCount();
	    int totalPages = (int) Math.ceil((double) totalCount / pagesize);
	    if (page > totalPages) {
	        page = totalPages;
	    }
	    int startIndex = (page - 1) * pagesize; // 시작 인덱스 계산
	    List<ProjectBoard> p_list = projectBoardMapper.getProjectBoardList(startIndex);
	    System.out.println(startIndex);
	    model.addAttribute("p_list", p_list);
	    model.addAttribute("totalPages", totalPages);
	    model.addAttribute("currentPage", page);
	    return "ProjectBoard";
	}

//	@RequestMapping("/goProjectBoardDetail")
//	public String goProjectBoardDetail() {
//		return "ProjectBoardDetail";
//	}
	
	@RequestMapping("/goProjectBoardWrite")
	public String goProjectBoardWrite() {
		return "ProjectBoardWrite";
	}
	
	@RequestMapping("ProjectBoardInsert")
	public String ProjectBoardInsert(ProjectBoard Projectboard, HttpServletRequest request) {
		
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

			
			Projectboard = new ProjectBoard(title, writer, filename, content);
			
			// System.out.println(Projectboard.toString());
			
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		int cnt = projectBoardMapper.insertBoard(Projectboard);
		
		if(cnt>0) {
			System.out.println("업로드 성공");
		}else {
			System.out.println("업로드 실패");
		}
		
		return "redirect:/goProjectBoard";
	}
	
	// 게시물 상세보기
	@RequestMapping("/PboardContent")
	public String PboardContent(int projectboard_idx, Model model) {
		projectBoardMapper.PboardCount(projectboard_idx);
		
		ProjectBoard projectboard = projectBoardMapper.PboardContent(projectboard_idx);
		model.addAttribute("projectboard", projectboard);
		return "ProjectBoardDetail";
	}
	
	// 추천
	@RequestMapping("/Pboardheart")
	public String Pboardheart(int projectboard_idx) {
		projectBoardMapper.Pboardheart(projectboard_idx);
		return "redirect:/goProjectBoard";
	}
	
	
	// 삭제
	@RequestMapping("/deletePBoard")
	public String deletePBoard(@RequestParam("projectboard_idx") int projectboard_idx) {
		projectBoardMapper.deletePBoard(projectboard_idx);
		return "redirect:/goProjectBoard";
	}
	
}
