package second.coupon.Service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import second.coupon.Dao.CouponDAO;

@Service("couponService")
public class CouponServiceImpl implements CouponService {

	@Resource(name="couponDAO")
    private CouponDAO couponDAO;
	
	
	@Override
	public List<Map<String, Object>> selectCouponList(String user_id) throws Exception {
		
		return couponDAO.selectCouponList(user_id);
	}

}
