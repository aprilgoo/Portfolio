package second.board.controller;

import java.util.Map;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import second.board.service.BoardService;
import second.common.common.CommandMap;

@Controller
public class BoardController {	
	
	Logger log = Logger.getLogger(this.getClass());
		
	@Resource(name="boardService")
    private BoardService boardService;	
	
    
	//�Խ��� ���
    @RequestMapping(value="/board/openSellList.do")
    public ModelAndView openSellList(@RequestParam(defaultValue="pro_name")String opt,@RequestParam(defaultValue="")String keyword, Map<String,Object>commandMap, HttpSession session) throws Exception{
        ModelAndView mv = new ModelAndView("main");
                  
        List<Map<String, String>> list = boardService.searchBoard(opt, keyword);    
       
    	Map<String,Object>map = new HashMap<String, Object>();
    	map.put("list", list);    
    	map.put("opt", opt);
    	map.put("keyword", keyword);
    	mv.addObject("map", map); 
    	mv.setViewName("main");
    	log.debug(session.getAttribute("user_id"));
        return mv;
        
    }
    
    
    @RequestMapping(value="/board/openProductList.do")
    public ModelAndView openProductList(@RequestParam(defaultValue="pro_name")String opt,@RequestParam(defaultValue="")String keyword, Map<String,Object>commandMap, HttpSession session) throws Exception{
        ModelAndView mv = new ModelAndView("page/products");
                  
        List<Map<String, String>> list = boardService.searchBoard(opt, keyword);    
       
    	Map<String,Object>map = new HashMap<String, Object>();
    	map.put("list", list);    
    	map.put("opt", opt);
    	map.put("keyword", keyword);
    	mv.addObject("map", map); 
    	mv.setViewName("page/products");    	
        return mv;
        
    }
    
    //�۾��� ȭ�� ����
    @RequestMapping(value="/board/openSellWrite.do", method=RequestMethod.POST)
    public ModelAndView openSellWrite(CommandMap commandMap) throws Exception{
        ModelAndView mv = new ModelAndView("board/sell_write");         
        return mv;
    }
    
    
    //DB�� �� ���� �ֱ�
    @RequestMapping(value="/board/insertBoard.do")
	public ModelAndView insertBoard(CommandMap commandMap) throws Exception {
	
	ModelAndView mv = new ModelAndView("redirect:/board/openSellList.do");
	
	boardService.insertBoard(commandMap.getMap());
	
	return mv;    	
}    
    
    
    // �� ȭ�� ����
    @RequestMapping(value="/board/openSellDetail.do")
    public ModelAndView openSellDetail(CommandMap commandMap) throws Exception {
    	ModelAndView mv = new ModelAndView("page/single");
    	
    	Map<String,Object> map = boardService.selectBoardDetail(commandMap.getMap());    	
    	mv.addObject("map", map);      	
		return mv;
    	  	
    }
    
    // �� ���� ���� ȭ�� ����
    @RequestMapping(value="/board/openSellModify.do")    
    public ModelAndView openBoardUpdate(CommandMap commandMap) throws Exception {
    	ModelAndView mv = new ModelAndView("board/sell_modify");
    	
    	Map<String,Object> map =boardService.selectBoardDetail(commandMap.getMap());
    	mv.addObject("map", map);    	
    	
    	return mv;    	
    }
    
    //DB�� ������ ���� �ֱ�
    @RequestMapping(value="/board/updateBoard.do")    
    public ModelAndView updateBoard(CommandMap commandMap) throws Exception {
    	ModelAndView mv = new ModelAndView("redirect:/board/openSellDetail.do");
    	
    	boardService.updateBoard(commandMap.getMap());
    	
    	mv.addObject("PRO_NO", commandMap.get("PRO_NO"));
    	return mv;
    }
    
    //�Խù� ����
    @RequestMapping(value="/board/deleteBoard.do")
    
    public ModelAndView deleteBoard(CommandMap commandMap) throws Exception {
    	ModelAndView mv = new ModelAndView("redirect:/board/openSellList.do");    	 
    	boardService.deleteBoard(commandMap.getMap());
    	return mv;
    	
    }      
	
	
    //��ٱ��Ͽ� ���
	@RequestMapping(value="/board/insertCart.do")
	public ModelAndView insertCart(HttpSession session, CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/cart/openCartList.do");
		
		String user_id = (String)session.getAttribute("user_id");
		boardService.insertCart(commandMap.getMap(), user_id);		
		return mv;		
	}
    
}

