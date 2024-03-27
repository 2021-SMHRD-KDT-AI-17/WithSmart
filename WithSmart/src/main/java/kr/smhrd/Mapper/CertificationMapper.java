package kr.smhrd.Mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.smhrd.entity.Member;

@Mapper
public interface CertificationMapper {

	public Member certCheck(String inputC);
	
}
