package kr.smhrd.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@RequiredArgsConstructor
@Getter
@Setter
@ToString
public class Member {
	
	@NonNull
	private String mb_id;
	@NonNull
	private String mb_pw;
	private String mb_nick;
	private String mb_cert;
	private int mileage;
	private String attendance;
}
