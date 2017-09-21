package second.common.login;

import javax.servlet.http.HttpServletRequest;


import javax.servlet.http.HttpServletResponse;
import org.apache.log4j.Logger;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

/**
 * 
 *로그인 인터셉터  
 *action-servlet에 매핑된 페이지에서 로그인 여부를 판단 
 *
 */


public class LoginInterceptor extends HandlerInterceptorAdapter {
	
	Logger log = Logger.getLogger(this.getClass());
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		
		try {
			//user세션이 없을 경우 메인 페이지로 리다이렉트됨
			if(request.getSession().getAttribute("user") == null) {			
				response.sendRedirect("/");
				return false;				
			}					
		} catch (Exception e) {	
			e.printStackTrace();		
			
		}	
		
		return true;		
	}
	
	@Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        super.postHandle(request, response, handler, modelAndView);
    }
	
	@Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        super.afterCompletion(request, response, handler, ex);
    }
 
    @Override
    public void afterConcurrentHandlingStarted(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        super.afterConcurrentHandlingStarted(request, response, handler);
    }

}
