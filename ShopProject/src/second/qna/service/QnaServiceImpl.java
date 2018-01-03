package second.qna.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import second.board.dao.BoardDAO;
import second.qna.dao.QnaDAO;

@Service("qnaService")
public class QnaServiceImpl implements QnaService {
	
	@Resource(name="qnaDAO")
	private QnaDAO qnaDAO;

	@Override
	public List<Map<String, String>> searchQnaBoard(String opt2, String keyword2) throws Exception {
		return qnaDAO.searchQnaBoard(opt2, keyword2);
	}

	@Override
	public void insertQnaBoard(Map<String, Object> map, String user_id) throws Exception {
		qnaDAO.insertQnaBoard(map, user_id);
		
	}

	@Override
	public Map<String, Object> selectQnaDetail(Map<String, Object> map, String user_id) throws Exception {
		return qnaDAO.selectQnaDetail(map, user_id);
	}

	@Override
	public void updateQnaBoard(Map<String, Object> map, String user_id) throws Exception {
		qnaDAO.updateQnaBoard(map, user_id);
		
	}

	@Override
	public void deleteQna(Map<String, Object> map, String user_id) throws Exception {
		qnaDAO.deleteQna(map, user_id);
		
	}




}
