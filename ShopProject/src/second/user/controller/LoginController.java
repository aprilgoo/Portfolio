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

@Controller
public class LoginController
{
 
	
  @Resource(name="loginService")
  private LoginService loginService;
  
  @RequestMapping({"/user/login_Form.do"})
  public ModelAndView login_Form() throws Exception
  {
    
    ModelAndView mv = new ModelAndView("redirect:/page/user/user_login.jsp");
    return mv;
  }
  
  @RequestMapping({"/user/openLoginSession.do"})
  public String openLoginSession(HttpSession session, HttpServletResponse response, HttpServletRequest request, CommandMap commandMap)
    throws Exception
  {
    String returnURL = "";
    Map<String, Object> map = new HashMap();
    map = this.loginService.openLoginSession(commandMap.getMap());
    map.get("no");
    if (session.getAttribute("user") != null) {
      session.removeAttribute("user");
    }
    if ((request.getParameter("user_id").equals((String)map.get("user_id"))) && (request.getParameter("user_password").equals((String)map.get("user_password"))))
    {
      
      request.getSession().setAttribute("user", map);
      request.getSession().setAttribute("user_id", map.get("user_id"));
      request.getSession().setAttribute("user_password", map.get("user_password"));
      request.getSession().setAttribute("no", map.get("no"));
      returnURL = "redirect:/page/user/user_page.jsp";
      return returnURL;
    }
    
    returnURL = "redirect:/page/user/user_login.jsp";
    return returnURL;
  }
  
  @RequestMapping({"/user/openUserUpdate.do"})
  public String openUserUpdate(CommandMap commandMap)
    throws Exception
  {
    String returnURL = "";
    
    returnURL = "redirect:/page/user/user_modify.jsp";
    return returnURL;
  }
  
  @RequestMapping({"/user/updateUser.do"})
  public String updateUser(HttpSession session, HttpServletResponse response, HttpServletRequest request, CommandMap commandMap)
    throws Exception
  {
    String returnURL = "";
    
    Map<String, Object> map = new HashMap();
    map = this.loginService.updateUser(commandMap.getMap());
    
    request.getSession().setAttribute("user", map);
    
    returnURL = "redirect:/user/userPage.do";
    return returnURL;
  }
  
  @RequestMapping({"/user/userPage.do"})
  public String userPage(HttpServletRequest request, CommandMap commandMap)
    throws Exception
  {
    String returnURL = "";
    returnURL = "redirect:/page/user/user_page2.jsp";
    return returnURL;
  }
  
  @RequestMapping({"/user/openDeletePage.do"})
  public ModelAndView openDeletePage(CommandMap commandMap)
    throws Exception
  {
    ModelAndView mv = new ModelAndView("redirect:/page/user/user_delete.jsp");
    return mv;
  }
  
  @RequestMapping({"/user/deleteUser.do"})
  public ModelAndView deleteUser(HttpSession session, CommandMap commandMap)
    throws Exception
  {
    ModelAndView mv = new ModelAndView("redirect:/index.jsp");
    this.loginService.deleteUser(commandMap.getMap());
    session.invalidate();
    return mv;
  }
  
}




