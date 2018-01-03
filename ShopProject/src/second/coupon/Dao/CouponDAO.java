package second.coupon.Dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import second.common.dao.AbstractDAO;

@Repository("couponDAO")
public class CouponDAO extends AbstractDAO   {

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>>selectCouponList(String user_id) throws Exception {
		return (List<Map<String,Object>>)selectList("coupon.selectCouponList" , user_id);
	}

}
