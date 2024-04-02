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
public class QnABoard {
	
	private int qnaboard_idx;

    @NonNull private String title;
    @NonNull private String writer;
    @NonNull private String filename;
    @NonNull private String content;
    private String writetime;
    private int viewcount;
    private int heartcount;
    
	public QnABoard(int qnaboard_idx, @NonNull String title, @NonNull String writer, @NonNull String filename,
			@NonNull String content) {
		super();
		this.qnaboard_idx = qnaboard_idx;
		this.title = title;
		this.writer = writer;
		this.filename = filename;
		this.content = content;
	}
    
    
}
