package second.join.dao;

import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import org.springframework.stereotype.Repository;

import second.common.dao.AbstractDAO;

@Repository("joinDAO")
public class JoinDAO extends AbstractDAO {

	public void insertJoinForm(Map<String,Object> map) throws Exception {
		insert("join.insertJoinForm", map);		
	}

	@SuppressWarnings("unchecked")
	public Map<String, Object> selectUserDetail(Map<String, Object> map) throws Exception {
		return (Map<String, Object>)selectOne("join.selectUserDetail", map);
	}

	public void updateUser(Map<String, Object> map) throws Exception {
		update("join.updateUser", map);
		
	}

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> userMain(Map<String, Object> map) throws Exception {		
		return (List<Map<String, Object>>)selectList("join.userMain", map);
	}

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> user_Page(Map<String, Object> map) throws Exception {		
		return (List<Map<String, Object>>)selectList("join.user_Page", map);
	}
}
