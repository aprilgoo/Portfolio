package second.join.service;

import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.annotation.Resource;

public interface JoinService {

	void insertJoinForm(Map<String, Object> map) throws Exception;

	Map<String, Object> selectUserDetail(Map<String, Object> map) throws Exception ;

	void updateUser(Map<String, Object> map) throws Exception;

	List<Map<String, Object>>userMain(Map<String, Object> map) throws Exception;

	List<Map<String, Object>> user_Page(Map<String, Object> map) throws Exception;

}
