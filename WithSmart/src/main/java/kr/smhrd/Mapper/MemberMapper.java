package kr.smhrd.Mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import kr.smhrd.entity.Member;

@Mapper
public interface MemberMapper {
	
	public void memberInsert(Member member);
	
	@Select("select * from tbl_member where mb_id=#{mb_id}")
	public Member emailCheck(String inputE);

	public Member goLogin(Member member);

	

	

}
