package kr.smhrd.entity;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@Getter
@Setter
@ToString
@NoArgsConstructor
@RequiredArgsConstructor

public class CompetBoard {

	
	 // 공모전 식별자 
    private int competboard;

    // 공모전 제목
    @NonNull private String compettitle;

    // 이미지 링크
    @NonNull private String imglink;
    
    // 홈페이지 링크
    @NonNull private String homelink;

    // 기간
    @NonNull private String during;

    // 조회수 
    private Integer viewcount;

    // 업로드시각
    private Timestamp uploadtime;
	
	
	
}
