package kr.smhrd.Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.smhrd.entity.ProjectBoard;

@Mapper
public interface ProjectBoardMapper {

	public List<ProjectBoard> projectBoardList();

	public int insertBoard(ProjectBoard projectboard);

	public void deletePBoard(int projectboard_idx);

	public ProjectBoard PboardContent(int projectboard_idx);

	public void PboardCount(int projectboard_idx);

	public void Pboardheart(int projectboard_idx);

	public int getTotalCount();

	public List<ProjectBoard> getProjectBoardList(int startIndex);

}
