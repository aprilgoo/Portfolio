package second.qna.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import second.common.dao.AbstractDAO;

@Repository("qnaDAO")
public class QnaDAO extends AbstractDAO {

	@SuppressWarnings("unchecked")
	public List<Map<String, String>> searchQnaBoard(String opt2, String keyword2) throws Exception {
		Map<String, String>map = new HashMap<String,String>();
		map.put("opt2", opt2);
		map.put("keyword2", keyword2);
		return (List<Map<String,String>>)selectList("qna.searchQnaBoard", map);
	}

	public void insertQnaBoard(Map<String, Object> map, String user_id) throws Exception {		
		map.put("user_id", user_id);
		log.debug(user_id);
		insert("qna.insertQnaBoard", map);
		
	}

	@SuppressWarnings("unchecked")
	public Map<String, Object> selectQnaDetail(Map<String, Object> map, String user_id) throws Exception {
		map.put("user_id", user_id);
		return (Map<String,Object>)selectOne("qna.selectQnaDetail", map);
	}

	public void updateQnaBoard(Map<String, Object> map, String user_id) throws Exception {
		map.put("user_id", user_id);
		update("qna.updateQnaBoard", map);
		
	}

	public void deleteQna(Map<String, Object> map, String user_id) throws Exception {
		map.put("user_id", user_id);
		update("qna.deleteQna", map);
		
	}

}
