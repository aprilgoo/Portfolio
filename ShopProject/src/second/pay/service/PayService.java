package second.pay.service;

import java.util.List;
import java.util.Map;

public abstract interface PayService
{
  public abstract List<Map<String, Object>> openCartList(String paramString)
    throws Exception;
  
  public abstract void insertCardInfo(Map<String, Object> paramMap)
    throws Exception;
  
  public abstract void movePay(Map<String, Object> paramMap)
    throws Exception;
  
  public abstract void completePay(Map<String, Object> paramMap)
    throws Exception;
  
  public abstract void deletePay(Map<String, Object> paramMap)
    throws Exception;
}

