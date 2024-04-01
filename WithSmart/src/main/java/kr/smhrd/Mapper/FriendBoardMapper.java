package kr.smhrd.Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.smhrd.entity.FriendBoard;

@Mapper
public interface FriendBoardMapper {

	public int insertBoard(FriendBoard friendboard);
	
	public List<FriendBoard> friendBoardList();

	public FriendBoard FboardContent(int friendboard_idx);
	
	public void deleteFBoard(int friendboard_idx);

	public void FboardCount(int friendboard_idx);

	public void Fboardheart(int friendboard_idx);

	public int getTotalCount();

	public List<FriendBoard> getFriendBoardList(int startIndex);

	public List<FriendBoard> FgetComment(int friendboard_idx);

	public void PerdeleteFBoard(int friendboard_idx);

	public void UpdateFboard(FriendBoard friendboard);

	


	

		





	
	
	
	
	
	
}
