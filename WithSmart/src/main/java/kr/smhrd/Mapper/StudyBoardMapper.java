package kr.smhrd.Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.smhrd.entity.CompetBoard;
import kr.smhrd.entity.StudyBoard;

@Mapper
public interface StudyBoardMapper {

	public List<StudyBoard> studyBoardList();

	public int insertBoard(StudyBoard studyboard);

	public void deleteStBoard(int studyboard_idx);

	public void Stboardheart(int studyboard_idx);

	public void StboardCount(int studyboard_idx);

	public StudyBoard StboardContent(int studyboard_idx);

	List<StudyBoard> getStudyBoardList(int startIndex);

	public int getTotalCount();

	public List<StudyBoard> SgetComment(int studyboard_idx);

}
