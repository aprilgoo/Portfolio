package second.coupon.Controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import second.common.common.CommandMap;
import second.coupon.Service.CouponService;

@Controller
public class CouponController {
	
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="couponService")
    private CouponService couponService;	
	
	 
		@RequestMapping(value="/coupon/openCouponList.do")
		public ModelAndView openCouponList(HttpSession session, CommandMap commandMap) throws Exception {
			ModelAndView mv = new ModelAndView("cart/coupon_list");
			String user_id = (String)session.getAttribute("user_id");		   
			List<Map<String,Object>> list2 = couponService.selectCouponList(user_id);
			mv.addObject("list2", list2);
			log.debug(list2);
			return mv;
		}
	

}
