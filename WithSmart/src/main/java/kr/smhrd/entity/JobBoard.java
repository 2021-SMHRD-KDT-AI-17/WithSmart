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
public class JobBoard {

    // 채용공고 식별자 
    private int job_idx;

    // 채옹공고명
    @NonNull private String jobtitle;

    // 회사명
    @NonNull private String companyname;
    
    // 회사정보 
    @NonNull private String companyinfo;

    // 세부정보 
    @NonNull private String detailinfo;
    
    // 마감기한 
    private String enddate;

    // 조회수 
    private Integer viewcount;

    // 업로드시각
    private Timestamp uploadtime;
}
