package second.cart.Service;

import java.util.List;
import java.util.Map;

import second.common.common.CommandMap;


public interface CartService {

	List<Map<String, Object>> openCartList(String id) throws Exception;

	void deleteCart(Map<String, Object>map) throws Exception;

	List<Map<String, Object>> openCouponList(String user_id) throws Exception;

	

}
