<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	if(session.getAttribute("user")!=null) {
		session.removeAttribute("user");
		session.invalidate();
	}
	else if(session.getAttribute("admin")!=null)  {
		session.removeAttribute("admin");
		session.invalidate();
	}

	response.sendRedirect("/index.jsp");
%>


