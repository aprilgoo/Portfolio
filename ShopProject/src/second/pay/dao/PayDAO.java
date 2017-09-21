package second.pay.dao;

import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Repository;
import second.common.dao.AbstractDAO;

@Repository("payDAO")
public class PayDAO
  extends AbstractDAO
{
  public List<Map<String, Object>> openCartList(String id)
    throws Exception
  {
    return selectList("pay.openCartList", id);
  }
  
  public void insertCardInfo(Map<String, Object> map)
    throws Exception
  {
    insert("pay.insertCardInfo", map);
  }
  
  public void movePay(Map<String, Object> map)
    throws Exception
  {
    update("pay.movePay", map);
  }
  
  public void completePay(Map<String, Object> map)
    throws Exception
  {
    update("pay.completePay", map);
  }
  
  public void deletePay(Map<String, Object> map)
    throws Exception
  {
    update("pay.deletePay", map);
  }
}