package second.qna.service;

import java.util.List;
import java.util.Map;

public interface QnaService {

	List<Map<String, String>> searchQnaBoard(String opt2, String keyword2) throws Exception;

	void insertQnaBoard(Map<String, Object> map, String user_id) throws Exception;

	Map<String, Object> selectQnaDetail(Map<String, Object> map, String user_id) throws Exception;

	void updateQnaBoard(Map<String, Object> map, String user_id) throws Exception;

	void deleteQna(Map<String, Object> map, String user_id) throws Exception;

}
