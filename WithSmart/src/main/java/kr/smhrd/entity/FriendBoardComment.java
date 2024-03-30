package kr.smhrd.entity;

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
public class FriendBoardComment {
	
	private int cmt_idx;
    @NonNull private String cmtcontent;
    private String writetime;
    @NonNull private String writer;
    private int heartcount;
    private int friendboard_idx;
}
