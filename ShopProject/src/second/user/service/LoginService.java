package second.user.service;

import java.util.Map;

public abstract interface LoginService
{
  public abstract Map<String, Object> openLoginSession(Map<String, Object> paramMap)
    throws Exception;
  
  public abstract Map<String, Object> adminLogin(Map<String, Object> paramMap)
    throws Exception;
  
  public abstract Map<String, Object> updateUser(Map<String, Object> paramMap)
    throws Exception;
  
  public abstract void deleteUser(Map<String, Object> paramMap)
    throws Exception;
}