package kr.smhrd.Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.smhrd.entity.FriendBoard;

@Mapper
public interface FriendBoardMapper {

	public List<FriendBoard> friendBoardList();

	public int insertBoard(FriendBoard friendboard);



	
	
	
	
	
	
}
