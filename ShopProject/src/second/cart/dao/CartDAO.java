package second.cart.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import second.common.common.CommandMap;
import second.common.dao.AbstractDAO;

@Repository("cartDAO")
public class CartDAO extends AbstractDAO {
	
	  @SuppressWarnings("unchecked")
	public List<Map<String, Object>> openCartList(String id)
	    throws Exception
	  {
	    return selectList("cart.openCartList", id);
	  }
	
	public void deleteCart(Map<String, Object> map) {
		update("cart.deleteCart", map);
		
		
	}

}
