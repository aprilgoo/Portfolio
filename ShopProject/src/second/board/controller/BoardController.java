package second.board.controller;

import java.util.Map;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import second.board.service.BoardService;
import second.common.common.CommandMap;


/**
 * 
 * �⺻���� crud ���� 
 * 
 * openSellList�� �˻� 
 * 
 *
 */



@Controller
public class BoardController {	
		
	@Resource(name="boardService")
    private BoardService boardService;	
	
    
	//�Խ��� ���
    @RequestMapping(value="/board/openSellList.do")
    public ModelAndView openSellList(@RequestParam(defaultValue="") String opt,@RequestParam(defaultValue="")String keyword, Map<String,Object>commandMap) throws Exception{
        ModelAndView mv = new ModelAndView("board/sell_list");
                  
        List<Map<String, String>> list = boardService.searchBoard(opt, keyword);    
       
    	Map<String,Object>map = new HashMap<String, Object>();
    	map.put("list", list);    
    	map.put("opt", opt);
    	map.put("keyword", keyword);
    	mv.addObject("map", map); 
    	mv.setViewName("board/sell_list");
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
    	ModelAndView mv = new ModelAndView("board/sell_detail");
    	
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
	public ModelAndView insertCart(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/cart/openCartList.do");	

		boardService.insertCart(commandMap.getMap());	
		return mv;		
	}
    
}

