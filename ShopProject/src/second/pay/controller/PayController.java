package second.pay.controller;

import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import second.common.common.CommandMap;
import second.pay.service.PayService;

@Controller
public class PayController
{
  @Resource(name="payService")
  private PayService payService;
  
  @RequestMapping({"/pay/openPayment.do"})
  public ModelAndView openPayment(HttpSession session, CommandMap commandMap)
    throws Exception
  {
    ModelAndView mv = new ModelAndView("pay/payment");
    
    this.payService.movePay(commandMap.getMap());
    
    String id = (String)session.getAttribute("user_id");
    List<Map<String, Object>> list = this.payService.openCartList(id);
    
    mv.addObject("list", list);
    
    return mv;
  }
  
  @RequestMapping({"/pay/insertCardInfo.do"})
  public ModelAndView insertCardInfo(HttpSession session, CommandMap commandMap)
    throws Exception
  {
    ModelAndView mv = new ModelAndView("main");
    
    this.payService.insertCardInfo(commandMap.getMap());
    
    String id = (String)session.getAttribute("user_id");
    List<Map<String, Object>> list = this.payService.openCartList(id);
    
    this.payService.completePay(commandMap.getMap());
    mv.addObject("list", list);
    
    return mv;
  }
  
  @RequestMapping({"/pay/deletePay.do"})
  public ModelAndView deletePay(CommandMap commandMap)
    throws Exception
  {
    ModelAndView mv = new ModelAndView("redirect:/pay/openPayment.do");
    this.payService.deletePay(commandMap.getMap());
    return mv;
  }

}
