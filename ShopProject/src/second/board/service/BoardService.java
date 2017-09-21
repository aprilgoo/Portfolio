package second.board.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface BoardService {

	List<Map<String, String>> searchBoard(String opt, String keyword) throws Exception;

	void insertBoard(Map<String, Object> map) throws Exception;

	Map<String, Object>selectBoardDetail(Map<String, Object> map) throws Exception;

	void updateBoard(Map<String, Object> map) throws Exception;

	void deleteBoard(Map<String, Object> map) throws Exception;

	void insertCart(Map<String, Object> map) throws Exception;

}
