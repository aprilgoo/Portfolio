<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<html>
<head>
<%@ include file="/page/layout/header.jspf" %>
</head>
<caption>수정 페이지</caption>
<tbody>
	<form id="frm">
		<table>
			<tr>
				<th scope="row">아이디</th>
				<td><input type="text" name="user_id"  value="${map.USER_ID}"></input></td>						
			</tr>
			<tr>
				<th scope="row">비밀번호</th>				
				<td><input type="password" name="user_password"  value="${map.USER_PASSWORD}"></input>
				* 현재 비밀번호와 일치하는 비밀번호를 입력하셔야 정보가 수정됩니다.</td>
			</tr>
			<tr>	
				<th scope="row">이름</th>
				<td><input type="text" name="user_name"  value="${map.user_name}"></input></td>
			</tr>
			<tr>	
				<th scope="row">이메일</th>
				<td><input type="text" name="email"  value="${map.email}"></input></td>
			</tr>
			<tr>	
				
				<th scope="row">전화번호</th>
				<td><input type="tel" name="phone"  value="${map.phone}"></input></td>
			</tr>
			<tr>
				<th scope="row">주소</th>
				<td><input type="text" name="address"  value="${map.address}"></input></td>			
			</tr>					
</tbody>
</table>		
</form>
<a href="#this" id="modify">내 정보 수정하기</a>

<%@ include file="/page/layout/footer.jspf" %>

<script type="text/javascript">
	$(document).ready(function(){
		$("#modify").on("click", function(e){
			e.preventDefault();
			fn_openUserModify();			
		});		
	
	});
	
	function fn_openUserModify(){
	//	var user_id = ${map.user_id};
		var comSubmit = new ComSubmit("frm");
        comSubmit.setUrl("<c:url value='/join/updateUser.do' />");
       // addParam("user_id", user_id);
        comSubmit.submit();		
	}


</script>
</html>