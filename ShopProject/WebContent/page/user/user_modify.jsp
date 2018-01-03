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
				<li>회원 정보 수정</li>	
			</ul>
		</div>
	</div>
<!-- login -->
		<div class="w3_login">
			<h3>User Modify</h3>
			<div class="w3_login_module">
				<div class="module form-module">
				  <div class="toggle"><i class="fa fa-times fa-pencil"></i>					
				  </div>
				  <div class="form">
<form id="frm" action="/user/updateUser.do" method="POST">
<h2>회원 정보 수정 </h2>
		<table class="modify_list">
				<c:out value="${map.USER_ID}" />
				<input type="text" name="user_id" value="${map.user_id}" readonly></input>
				<input type="password" name="user_password" placeholder="Password"></input>				
				<input type="text" name="user_name" placeholder="Username" value="${map.user_name}" ></input>			
				<input type="text" name="email" placeholder="Email" value="${map.email}" ></input>
				<input type="text" name="phone" placeholder="Phone" value="${map.phone}"></input>				
				<input type="text" name="address" placeholder="Address" value="${map.address}"></input>		
		</table>	
		<input type="submit" class="btn form-control" value="회원 정보 수정" />		
</form>
			  </div>	
				</div>
			</div>
		</div>
<!-- //login -->	
			<div class="clearfix"> </div>
		</div>
	</div>
<%@ include file="/page/layout/footer.jspf" %>
 </body>
</html>