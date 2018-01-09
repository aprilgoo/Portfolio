 package second.join.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

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
	public ModelAndView insertJoinForm(HttpSession session, CommandMap commandMap) throws Exception  {
		ModelAndView mv = new ModelAndView("redirect:/index.jsp");
		String user_pwd = (String)session.getAttribute("user_password");
		joinService.insertJoinForm(commandMap.getMap(), user_pwd);
		return mv;		
	}	


}
