package kr.smhrd.Mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import kr.smhrd.entity.Certification;
import kr.smhrd.entity.Member;

@Mapper
public interface CertificationMapper {
	
	@Select("select * from tbl_certification where mb_cert=#{mb_cert}")
	Certification certCheck(String inputC);
	
	

	
	
}
