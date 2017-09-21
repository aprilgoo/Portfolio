package second.pay.service;

import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import second.pay.dao.PayDAO;

@Service("payService")
public class PayServiceImpl
  implements PayService
{
  @Resource
  private PayDAO payDAO;
  
  public List<Map<String, Object>> openCartList(String id)
    throws Exception
  {
    return this.payDAO.openCartList(id);
  }
  
  public void insertCardInfo(Map<String, Object> map)
    throws Exception
  {
    this.payDAO.insertCardInfo(map);
  }
  
  public void movePay(Map<String, Object> map)
    throws Exception
  {
    this.payDAO.movePay(map);
  }
  
  public void completePay(Map<String, Object> map)
    throws Exception
  {
    this.payDAO.completePay(map);
  }
  
  public void deletePay(Map<String, Object> map)
    throws Exception
  {
    this.payDAO.deletePay(map);
  }
}

