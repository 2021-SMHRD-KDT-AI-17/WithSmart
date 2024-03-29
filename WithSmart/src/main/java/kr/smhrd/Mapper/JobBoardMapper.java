package kr.smhrd.Mapper;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.smhrd.entity.JobBoard;


@Mapper
public interface JobBoardMapper {

	public List<JobBoard> jobboardList();

	public int getTotalCount();

	public List<JobBoard> getJobBoardList(int startIndex);

	public void JobCount(int job_idx);



	

}
