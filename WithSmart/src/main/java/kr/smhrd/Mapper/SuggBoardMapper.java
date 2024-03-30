package kr.smhrd.Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.smhrd.entity.SuggBoard;

@Mapper
public interface SuggBoardMapper {
	
	public List<SuggBoard> suggBoardList();

	public int insertBoard(SuggBoard suggboard);

	public SuggBoard SboardContent(int suggboard_idx);

	public void deleteSBoard(int suggboard_idx);

	public int getTotalCount();

	public List<SuggBoard> getsuggBoardList(int startIndex);
}
