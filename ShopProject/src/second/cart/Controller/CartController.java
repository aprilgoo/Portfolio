package second.cart.Controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import second.cart.Service.CartService;
import second.common.common.CommandMap;

@Controller
public class CartController {	
		
	@Resource(name="cartService")
	private CartService cartService;
	
	//장바구니 목록 열기
	//게시판 목록과 같은 형태
	@RequestMapping(value="/cart/openCartList.do")
	public ModelAndView openCartList(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("cart/cart_list");
		
		Map<String,Object>map = new HashMap<String, Object>();
		List<Map<String,Object>> list = cartService.openCartList(commandMap);		
		map.put("list", list);
		mv.addObject("map", map);
		return mv;
	}
	
	
	//장바구니 목록에서 삭제
	@RequestMapping(value="/cart/deleteCart.do")
	public ModelAndView deleteCart(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:openCartList.do");				
		cartService.deleteCart(commandMap.getMap());		
		return mv;		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
