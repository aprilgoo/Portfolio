package second.user.dao;

import java.util.Map;
import org.springframework.stereotype.Repository;
import second.common.dao.AbstractDAO;

@Repository("loginDAO")
public class LoginDAO extends AbstractDAO
{
  @SuppressWarnings("unchecked")
public Map<String, Object> openLoginSession(Map<String, Object> commandMap)
    throws Exception
  {
    return (Map)selectOne("login.openLoginSession", commandMap);
  }
  
  @SuppressWarnings("unchecked")
public Map<String, Object> adminLogin(Map<String, Object> map)
    throws Exception
  {
    return (Map)selectOne("login.adminLogin", map);
  }
  
  @SuppressWarnings("unchecked")
public Map<String, Object> updateUser(Map<String, Object> commandMap)
    throws Exception
  {
    return (Map)selectOne("login.updateUser", commandMap);
  }
  
  public void deleteUser(Map<String, Object> map)
    throws Exception
  {
    update("login.deleteUser", map);
  }
}