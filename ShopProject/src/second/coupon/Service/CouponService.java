package second.coupon.Service;

import java.util.List;
import java.util.Map;

public interface CouponService {

	List<Map<String, Object>> selectCouponList(String user_id) throws Exception;

}
