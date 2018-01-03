package second.user.service;

import java.util.Map;
import javax.annotation.Resource;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;
import second.user.dao.LoginDAO;

@Service("loginService")
public class LoginServiceImpl
  implements LoginService
{
  
  @Resource(name="loginDAO")
  private LoginDAO loginDAO;
  
  public Map<String, Object> openLoginSession(Map<String, Object> commandMap)
    throws Exception
  {
    return this.loginDAO.openLoginSession(commandMap);
  }
  
  public Map<String, Object> adminLogin(Map<String, Object> map)
    throws Exception
  {
    return this.loginDAO.adminLogin(map);
  }
  
  public Map<String, Object> updateUser(Map<String, Object> map)
    throws Exception
  {
    return this.loginDAO.updateUser(map);
  }
  
  public void deleteUser(Map<String, Object> map)
    throws Exception
  {
    this.loginDAO.deleteUser(map);
  }

@Override
public Map<String, Object> selectUser(Map<String, Object> map, String no) throws Exception {
	
	return loginDAO.selectUser(map, no);
}
}
