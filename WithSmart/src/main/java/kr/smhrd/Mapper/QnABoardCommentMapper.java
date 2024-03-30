package kr.smhrd.Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.smhrd.entity.QnABoardComment;

@Mapper
public interface QnABoardCommentMapper {

	public void insertComment(@Param("writer") String writer, @Param("cmtcontent")String cmtcontent, @Param("qnaboard_idx")int qnaboard_idx);



	
	
//	 insertComment(@Param("writer")String writer, @Param("cmtcontent")String cmtcontent, @Param("qnaboard_idx") int qnaboard_idx);

}
