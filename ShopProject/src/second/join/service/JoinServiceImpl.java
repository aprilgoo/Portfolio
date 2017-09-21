package second.join.service;

import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import second.join.dao.JoinDAO;

@Service("joinService")
public class JoinServiceImpl implements JoinService {	
		
	@Resource(name="joinDAO")
	private JoinDAO joinDAO;

	@Override
	public void insertJoinForm(Map<String, Object> map) throws Exception {
		joinDAO.insertJoinForm(map);	
	}

	@Override
	public Map<String, Object> selectUserDetail(Map<String, Object> map) throws Exception {
		Map<String, Object>resultMap = joinDAO.selectUserDetail(map);			
		return resultMap;
	}

	@Override
	public void updateUser(Map<String, Object> map) throws Exception {
		joinDAO.updateUser(map);
		
	}

	@Override
	public List<Map<String, Object>> userMain(Map<String, Object> map) throws Exception {
		List<Map<String,Object>>resultMap = joinDAO.userMain(map);
		return resultMap;
	}

	@Override
	public List<Map<String, Object>> user_Page(Map<String, Object> map) throws Exception {
		return joinDAO.user_Page(map);
	}

}
