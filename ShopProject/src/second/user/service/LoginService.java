package second.user.service;

import java.util.Map;


public interface LoginService
{
	
	
  public Map<String, Object> openLoginSession(Map<String, Object> paramMap)
    throws Exception;
  
  public Map<String, Object> adminLogin(Map<String, Object> paramMap)
    throws Exception;
  
  public  Map<String, Object> updateUser(Map<String, Object> paramMap)
    throws Exception;
  
  public void deleteUser(Map<String, Object> paramMap)
    throws Exception;
}