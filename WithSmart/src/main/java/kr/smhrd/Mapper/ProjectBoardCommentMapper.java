package kr.smhrd.Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.smhrd.entity.ProjectBoardComment;

@Mapper
public interface ProjectBoardCommentMapper {

	public void insertComment(@Param("writer") String writer, @Param("cmtcontent")String cmtcontent, @Param("projectboard_idx")int projectboard_idx);

	public void Projectcommentheart(int cmt_idx);

	

}
