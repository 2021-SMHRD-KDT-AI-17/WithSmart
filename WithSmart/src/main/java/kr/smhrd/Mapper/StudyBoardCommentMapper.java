package kr.smhrd.Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.smhrd.entity.StudyBoardComment;

@Mapper
public interface StudyBoardCommentMapper {

	public void insertComment(@Param("writer") String writer, @Param("cmtcontent")String cmtcontent, @Param("studyboard_idx")int studyboard_idx);

	
}
