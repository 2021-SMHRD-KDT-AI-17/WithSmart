package kr.smhrd.Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.smhrd.entity.CompetBoard;

@Mapper
public interface CompetBoardMapper {

	List<CompetBoard> CompetboardList();

	int insertBoard(CompetBoard board);

	public CompetBoard getCompetBoardById(int competboard);

	

}
