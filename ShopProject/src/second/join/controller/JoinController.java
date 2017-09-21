 package second.join.controller;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import second.common.common.CommandMap;
import second.join.service.JoinService;

/** 
 * 회원가입
 * DB에 입력 후 메인페이지로 리다이렉트함
 *
 */

@Controller
public class JoinController {	
	
	@Resource(name="joinService")
	private JoinService joinService;
	
	@RequestMapping(value="/join/insertJoinForm.do")
	public ModelAndView insertJoinForm(CommandMap commandMap) throws Exception  {
		ModelAndView mv = new ModelAndView("redirect:/index.jsp");
		
		joinService.insertJoinForm(commandMap.getMap());
		return mv;		
	}	


}
