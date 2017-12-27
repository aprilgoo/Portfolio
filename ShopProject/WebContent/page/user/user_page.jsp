<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/page/layout/header.jspf" %>

</head>
	
<body>
<!-- products-breadcrumb -->
	<div class="products-breadcrumb">
		<div class="container">
			<ul>
				<li><i class="fa fa-home" aria-hidden="true"></i><a href="/index.jsp">Home</a><span>|</span></li>
				<li>내 정보 보기</li>
			</ul>
		</div>
	</div>
<!-- login -->
		<div class="w3_login">
			<h3>User Page</h3>
			<div class="w3_login_module">
				<div class="module form-module">
				  <div class="toggle"><i class="fa fa-times fa-pencil"></i>					
				  </div>
				  <div class="form">
<form id="frm" action="/user/updateUser.do" method="POST">
<h2>내 정보 보기</h2>
		<table class="join_list">
		<tr><td> 아이디: ${sessionScope.user.user_id } </td></tr>			
		<tr><td> 닉네임 : ${sessionScope.user.user_name }</td> </tr>		
		<tr><td> 이메일 : ${sessionScope.user.email } </td></tr>
		<tr><td> 전화번호 : ${sessionScope.user.phone }	</td></tr>	
		<tr><td>	주소 : ${sessionScope.user.address }</td></tr>
		</table>
		<br>	
			<a href="#this" id="modify" class="btn btn-primary form-control">내 정보 수정하기</a>
			<a href="#this" id="drop" class="btn btn-success form-control">탈퇴하기</a>	
</form>
			  </div>	
				</div>
			</div>
		</div>	
			<div class="clearfix"> </div>
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
 </body>
</html>
