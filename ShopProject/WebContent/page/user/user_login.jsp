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
				<li>회원가입  & 로그인</li>
			</ul>
		</div>
	</div>
<!-- login -->
		<div class="w3_login">
			<h3>Sign In & Sign Up</h3>
			<div class="w3_login_module">
				<div class="module form-module">
				  <div class="toggle"><i class="fa fa-times fa-pencil"></i>
					<div class="tooltip">Click Me</div>
				  </div>
				  <div class="form">
<h2>계정에 로그인 하세요</h2>

	<form id="frm" action="/user/openLoginSession.do" method="POST">
	    <input type="text" id="user_id" name="user_id" placeholder="Username" required="" />
	    <input type="password" id="user_password" name="user_password" placeholder="Password" required="" /> 
	    <input type="hidden" id="no" name="no" value="${map.NO}" />
	    <input type="submit" class="btn form-control" value="sign in" />	
	</form>
</div>

				  <div class="form">
<form id="frm2" action="/join/insertJoinForm.do" method="POST">
<h2>회원 가입 </h2>
		<table class="join_list">
				<input type="text" name="user_id" placeholder="Userid"></input>
				<div class="pwd">
				<input type="password" name="user_password" placeholder="Password"></input>				
				<input type="password" name="user_password_2" placeholder="Password Confirm"></input>				
				</div>
				<input type="text" name="user_name" placeholder="Username" ></input>			
				<input type="email" name="email" placeholder="Email" ></input>
				<input type="text" name="phone" placeholder="Phone"></input>				
				<input type="text" name="address" placeholder="Address"></input>						
		</table>	
		<input type="submit" class="btn form-control" value="sign up" />		
</form>
			  </div>
				  <div class="cta"><a href="#">비밀번호를 잊으셨나요?</a></div>
				</div>
			</div>
		</div>
<!-- //login -->
		</div>
		<div class="clearfix"></div>
	</div>
<!-- //banner -->
	<div class="newsletter-top-serv-btm">
		<div class="container">
			<div class="col-md-4 wthree_news_top_serv_btm_grid">
				<div class="wthree_news_top_serv_btm_grid_icon">
					<i class="fa fa-shopping-cart" aria-hidden="true"></i>
				</div>
				<h3>Nam libero tempore</h3>
				<p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus 
					saepe eveniet ut et voluptates repudiandae sint et.</p>
			</div>
			<div class="col-md-4 wthree_news_top_serv_btm_grid">
				<div class="wthree_news_top_serv_btm_grid_icon">
					<i class="fa fa-bar-chart" aria-hidden="true"></i>
				</div>
				<h3>officiis debitis aut rerum</h3>
				<p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus 
					saepe eveniet ut et voluptates repudiandae sint et.</p>
			</div>
			<div class="col-md-4 wthree_news_top_serv_btm_grid">
				<div class="wthree_news_top_serv_btm_grid_icon">
					<i class="fa fa-truck" aria-hidden="true"></i>
				</div>
				<h3>eveniet ut et voluptates</h3>
				<p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus 
					saepe eveniet ut et voluptates repudiandae sint et.</p>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<%@ include file="/page/layout/footer.jspf" %>
<script type="text/javascript">

		$('.toggle').click(function(){
			  // Switches the Icon
			  $(this).children('i').toggleClass('fa-pencil');
			  // Switches the forms  
			  $('.form').animate({
				height: "toggle",
				'padding-top': 'toggle',
				'padding-bottom': 'toggle',
				opacity: "toggle"
			  }, "slow");
			});       
    </script>
 </body>
</html>