package second.user.controller;

import java.util.HashMap;
import java.util.Map;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import second.common.common.CommandMap;
import second.user.service.LoginService;

/**
 * 
 * 로그인 및 로그아웃 
 * 아이디, 패스워드 입력값과 db에 저장된 값의 일치 여부 판단
 * 일치할 시 map에 아이디와 패스워드, 회원 번호를 저장하고, 그 map을 user 세션에 담음
 * 
 */

@Controller
public class LoginController
{
	
  Logger log = Logger.getLogger(this.getClass());
    
	
  @Resource(name="loginService")
  private LoginService loginService;
  
  @RequestMapping({"/user/login_Form.do"})
  public ModelAndView login_Form() throws Exception
  {
    
    ModelAndView mv = new ModelAndView("redirect:/page/user/user_login.jsp");
    return mv;
  }
  
  @RequestMapping("/user/openLoginSession.do")
  public String openLoginSession(HttpSession session, HttpServletResponse response, HttpServletRequest request, CommandMap commandMap)
    throws Exception
  {
    String returnURL1 = "";
    Map<String, Object> map = new HashMap<String, Object>();
    map = loginService.openLoginSession(commandMap.getMap());
        
    if (session.getAttribute("user") != null) {
      session.removeAttribute("user");
    }
    
    else if ((request.getParameter("user_id").equals((String)map.get("user_id"))) && (request.getParameter("user_password").equals((String)map.get("user_password"))))
    {
      
      session.setAttribute("user", map); 
      session.setAttribute("user_id", map.get("user_id"));  
    
      returnURL1 = "redirect:/page/user/user_page.jsp";
      return returnURL1;
    }
    
    returnURL1 = "redirect:/page/user/user_login.jsp";
    return returnURL1;
  }
  
  @RequestMapping("/user/openUserUpdate.do")
  public ModelAndView openUserUpdate(HttpSession session, CommandMap commandMap) throws Exception
  {
	ModelAndView mv = new ModelAndView("user/user_modify");   
	String user_id = (String)session.getAttribute("user_id");
	   
    Map<String, Object> map = loginService.selectUser(commandMap.getMap(), user_id);
    mv.addObject("map", map);    
    return mv;
  }
  
  //회원 정보 수정 기능
  @RequestMapping("/user/updateUser.do")
  public String updateUser(HttpSession session, HttpServletResponse response, HttpServletRequest request, CommandMap commandMap)
    throws Exception
  {
    String returnURL = "";
    
    Map<String, Object> map = this.loginService.updateUser(commandMap.getMap());
    
    request.getSession().setAttribute("user", map);
    
    returnURL = "redirect:/user/userPage.do";
    return returnURL;
  }
  
  
  //user page로 리다이렉트
  @RequestMapping("/user/userPage.do")
  public String userPage(HttpServletRequest request, CommandMap commandMap)
    throws Exception
  {
    String returnURL = "";
    returnURL = "redirect:/page/user/user_page.jsp";
    return returnURL;
  }
  
  //회원 탈퇴 페이지로 리다이렉트
  @RequestMapping("/user/openDeletePage.do")
  public ModelAndView openDeletePage(CommandMap commandMap)
    throws Exception
  {
    ModelAndView mv = new ModelAndView("redirect:/page/user/user_delete.jsp");
    return mv;
  }
  
  //회원 탈퇴
  //회원 정보 삭제가 아닌 DEL_GB 속성을 수정하여 db에 남게 함
  //세션 정보 지움
  @RequestMapping("/user/deleteUser.do")
  public ModelAndView deleteUser(HttpSession session, CommandMap commandMap)
    throws Exception
  {
    ModelAndView mv = new ModelAndView("redirect:/index.jsp");
    this.loginService.deleteUser(commandMap.getMap());
    session.invalidate();
    return mv;
  }
  
}




