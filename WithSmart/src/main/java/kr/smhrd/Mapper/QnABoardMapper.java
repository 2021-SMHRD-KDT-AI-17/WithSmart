package kr.smhrd.Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.smhrd.entity.QnABoard;

@Mapper
public interface QnABoardMapper {

	public int insertBoard(QnABoard qnAboard);

	public List<QnABoard> qnaBoardList();

	public void deleteQBoard(int qnaboard_idx);

	public QnABoard QboardContent(int qnaboard_idx);

	public void QboardCount(int qnaboard_idx);

	public void Qboardheart(int qnaboard_idx);

	public int getTotalCount();

	public List<QnABoard> getQnaBoardList(int startIndex);

}
