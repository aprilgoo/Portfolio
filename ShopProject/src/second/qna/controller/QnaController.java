package second.qna.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import second.common.common.CommandMap;
import second.qna.service.QnaService;

@Controller
public class QnaController {
	
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="qnaService")
    private QnaService qnaService;	
	
	@RequestMapping(value="/qna/openQnaList.do")
	public ModelAndView openQnaList(@RequestParam(defaultValue="") String opt2, @RequestParam(defaultValue="")String keyword2, Map<String,Object>commandMap, HttpSession session) throws Exception
	{
		ModelAndView mv = new ModelAndView("qna/qna_list");
		List<Map<String, String>> list = qnaService.searchQnaBoard(opt2, keyword2);    
    	Map<String,Object>map = new HashMap<String, Object>();
    	log.debug(keyword2);
    	map.put("list", list);    
    	map.put("opt", opt2);
    	map.put("keyword2", keyword2);
    	log.debug(keyword2);
    	mv.addObject("map", map);    
        return mv;      
        
	}
	
	
    //글쓰기 화면 열기
   @RequestMapping(value="/qna/openQnaWrite.do")
    public ModelAndView openQnaWrite(HttpServletRequest request, HttpSession session) throws Exception  {
	   ModelAndView mv = new ModelAndView("qna/qna_write");   	   
 	   return mv;	   	      
   }
    
    
    
    //DB에 제목, 내용 저장
    @RequestMapping(value="/qna/insertQnaBoard.do")
    public ModelAndView insertQnaBoard(CommandMap commandMap, HttpSession session) throws Exception {
    	ModelAndView mv = new ModelAndView("redirect:/qna/openQnaList.do");
    	String user_id = (String)session.getAttribute("user_id");
    	log.debug(user_id);
      	qnaService.insertQnaBoard(commandMap.getMap(), user_id);    	
		return mv;  	   	
    	
    }
    
    
    @RequestMapping(value="/qna/openQnaDetail.do")
    public ModelAndView openQnaDetail(CommandMap commandMap, HttpSession session) throws Exception {
    	ModelAndView mv = new ModelAndView("qna/qna_detail");
    	
    	String user_id = (String)session.getAttribute("user_id");
    	//글 내용 보여주기
    	Map<String, Object> map = qnaService.selectQnaDetail(commandMap.getMap(), user_id);       	
    	mv.addObject("map", map); 
    	log.debug(user_id);
    	      	
    	/**댓글 내용 보여주기
        List<Map<String,Object>> list = qnaService.viewComments(commandMap.getMap());         
        mv.addObject("list", list); **/
        return mv; 	    	
    	
    }
    
    
    @RequestMapping(value="/qna/openQnaUpdate.do")
    public ModelAndView openQnaUpdate(CommandMap commandMap, HttpSession session) throws Exception {    	
       ModelAndView mv = new ModelAndView("qna/qna_update"); 
       String user_id = (String)session.getAttribute("user_id");
 	   Map<String, Object>map = qnaService.selectQnaDetail(commandMap.getMap(), user_id);
 	   mv.addObject("map", map);
 	  
 	   return mv;	   
    }
    
    
    
   @RequestMapping(value="/qna/updateQnaBoard.do")
   public ModelAndView updateQnaBoard(CommandMap commandMap, HttpSession session) throws Exception {
   	ModelAndView mv = new ModelAndView("redirect:/qna/openQnaList.do");
   		String user_id = (String)session.getAttribute("user_id");
   		qnaService.updateQnaBoard(commandMap.getMap(), user_id);   		
   		return mv;  
    
   }
   
   @RequestMapping(value="/qna/deleteQna.do")
   public ModelAndView deletePost(CommandMap commandMap, HttpSession session) throws Exception {
   	ModelAndView mv = new ModelAndView("redirect:/qna/openQnaList.do");
   	String user_id = (String)session.getAttribute("user_id");
   	qnaService.deleteQna(commandMap.getMap(), user_id);   		
   	return mv;  
    
   }
	
	
		
}
