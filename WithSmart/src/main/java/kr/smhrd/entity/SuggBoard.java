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
public class SuggBoard {
	
	private int suggboard_idx;
	@NonNull private String title;
	@NonNull private String writer;
	private String writetime;
	@NonNull private String content;
	@NonNull private String filename;
}
