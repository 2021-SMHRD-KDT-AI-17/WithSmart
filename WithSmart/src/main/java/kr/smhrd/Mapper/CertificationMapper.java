package kr.smhrd.Mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.smhrd.entity.Certification;
import kr.smhrd.entity.Member;

@Mapper
public interface CertificationMapper {

	public Certification certCheck(String inputC);

	
	
}
