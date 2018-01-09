package second.adm.dao;

import java.util.Map;

import org.springframework.stereotype.Repository;

import second.common.dao.AbstractDAO;

@Repository("admDAO")
public class AdmDAO extends AbstractDAO {

	public void insertProductBoard(Map<String, Object> map, String admin) throws Exception {
		map.put("admin", admin);
		insert("adm.insertProductBoard", map);
		
	}

}
