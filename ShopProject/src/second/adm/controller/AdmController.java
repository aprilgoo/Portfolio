package second.adm.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import second.adm.service.AdmService;
import second.common.common.CommandMap;

@Controller
public class AdmController {
	
Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="admService")
    private AdmService admService;		

   @RequestMapping(value="/admin/openadminPage.do")
   public ModelAndView openAdmPage(HttpServletRequest request, HttpSession session) throws Exception  {
	   ModelAndView mv = new ModelAndView("admin/admin_page");   	   
	   return mv;	   	      
   }   
   
	
	
    //��ǰ ��� ȭ�� ����
   @RequestMapping(value="/admin/openproductWrite.do")
    public ModelAndView openAdmWrite(HttpServletRequest request, HttpSession session) throws Exception  {
	   ModelAndView mv = new ModelAndView("admin/admin_write");   	   
 	   return mv;	   	      
   }   
    
    
    //DB�� ����, ���� ����
    @RequestMapping(value="/admin/insertProductBoard.do")
    public ModelAndView insertAdmBoard(CommandMap commandMap, HttpSession session) throws Exception {
    	ModelAndView mv = new ModelAndView("admin/admin_index");
    	String admin = (String)session.getAttribute("user_id");
    	log.debug(admin);
      	admService.insertProductBoard(commandMap.getMap(), admin);    	
		return mv;  	   	
    	
    }

}
