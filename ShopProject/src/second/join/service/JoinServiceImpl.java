package second.join.service;

import java.util.Map;
import javax.annotation.Resource;

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

	

}
