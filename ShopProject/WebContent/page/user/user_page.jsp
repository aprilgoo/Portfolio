<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="ko">
<%@ include file="/page/layout/header.jspf" %>


<caption><h3>내 정보</h3></caption>

<tr>
<th scope="row">등급 : ${sessionScope.user.user_type}</th><br/>
<th scope="row">아이디 : ${sessionScope.user.user_id }</th><br/>
<th scope="row">닉네임 : ${sessionScope.user.user_name }</th><br/>
<th scope="row">이메일 : ${sessionScope.user.email }</th><br/>
<th scope="row">전화번호 : ${sessionScope.user.phone }</th><br/>
<th scope="row">주소 : ${sessionScope.user.address }</th><br/>    
<td>${map.NO}</td>  	
</tr>
<a href="#this" id="modify">내 정보 수정하기</a>
<a href="#this" id="drop">탈퇴하기</a>

<%@ include file="/page/layout/footer.jspf" %>

<script type="text/javascript">
	$(document).ready(function(){
		$("#modify").on("click", function(e){
			e.preventDefault();
			fn_openUserModify();			
		});		

		$("#drop").on("click", function(e){
			e.preventDefault();
			fn_openUserDrop();			
		});		
	});
	
    function fn_openUserModify(obj){           
        var comSubmit = new ComSubmit();
        comSubmit.setUrl("<c:url value='/user/openUserUpdate.do' />");       
        comSubmit.submit();
    }    
	
	function fn_openUserDrop(){
		var comSubmit = new ComSubmit();
        comSubmit.setUrl("<c:url value='/user/openDeletePage.do' />");
        comSubmit.submit();		
	}

</script>
</html>
