package second.cart.Controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import second.cart.Service.CartService;
import second.common.common.CommandMap;

@Controller
public class CartController {	
	
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="cartService")
	private CartService cartService;
	
	//��ٱ��� ��� ����
	//�Խ��� ��ϰ� ���� ����
	@RequestMapping(value="/cart/openCartList.do")
	public ModelAndView openCartList(HttpSession session, CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("cart/cart_list");
		
		//��ٱ��� ����Ʈ ����
		String user_id = (String)session.getAttribute("user_id");		   
		List<Map<String,Object>> list = cartService.openCartList(user_id);
		mv.addObject("list", list);
		return mv;
	}	
	
	//��ٱ��� ��Ͽ��� ����
	@RequestMapping(value="/cart/deleteCart.do")
	public ModelAndView deleteCart(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:openCartList.do");				
		cartService.deleteCart(commandMap.getMap());		
		return mv;		
	}
	
}
