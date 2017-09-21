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

	
}
