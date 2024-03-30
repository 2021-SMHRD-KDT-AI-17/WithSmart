package kr.smhrd.Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.smhrd.entity.FriendBoardComment;

@Mapper
public interface FriendBoardCommentMapper {

	public void insertComment(@Param("writer") String writer, @Param("cmtcontent")String cmtcontent, @Param("friendboard_idx")int friendboard_idx);


}
