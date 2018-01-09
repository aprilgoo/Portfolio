package second.adm.service;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import second.adm.dao.AdmDAO;

@Service("admService")
public class AdmServiceImpl implements AdmService {
	
	@Resource(name="admDAO")
	private AdmDAO admDAO;

	@Override
	public void insertProductBoard(Map<String, Object> map, String admin) throws Exception {
		admDAO.insertProductBoard(map, admin);		
	}

}
