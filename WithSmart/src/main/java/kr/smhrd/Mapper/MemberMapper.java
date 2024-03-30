package kr.smhrd.Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import kr.smhrd.entity.Member;

@Mapper
public interface MemberMapper {
	
	public void memberInsert(Member member);
	
	@Select("select * from tbl_member where mb_id=#{mb_id}")
	public Member emailCheck(String inputE);

	public Member goLogin(Member member);

	public List<Member> goShowMember();

	public void deleteMember(String mb_id);

	public void memberUpdate(Member member);

	public Member InsertCheck(String inputE);

	public int getTotalCount();

	public List<Member> getgoShowMember(int startIndex);
	
	@Select("select * from tbl_member where mb_id=#{mb_id}")
	public Member LoginCheck(String inputId);

	public int getMembersize();

	public void memberMileage(Member member);



	

	

}
