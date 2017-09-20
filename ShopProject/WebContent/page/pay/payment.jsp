<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/page/layout/header.jspf" %>
</head>
<% String user_id = (String)session.getAttribute("user_id"); %>
<body>

	<form id="frm" name="frm" method="post">
		<table>
		<colgroup>
	        <col width="10%"/>
	        <col width="*"/>
	        <col width="15%"/>
	        <col width="20%"/>
 	   </colgroup>
 	   <rowgroup>
 	   		<row width="10%"/>
 	   		<row width="*"/>
 	   		<row width="10%"/>
 	   		<row width="10%"/>
 	   </rowgroup>
    <thead>
    			<tr>
        			<td>결제하실 상품 정보</td>
    			</tr>
    	<tr>
	    	<th scope="col">카트 번호</th>
	    	<th scope="col">물품 이름</th>
	    	<th scope="col">물품 갯수</th>
	    	<th scope="col">물품 가격</th>
	    	<th scope="col">물품 삭제</th>    	
	    </tr> 
	       		
    </thead>    
    <tbody>    	
    		
    		<c:forEach var="row" items="${list}">    	
	    		<tr>	    			
					<td scope="row">${row.CART_NO}		
					<input type="hidden"  id="CART_NO" name="CART_NO" value=" ${row.CART_NO}"></input></td>			
					<td scope="row">${row.PRO_NAME }</td>						
					<td scope="row">${row.NUMBERS }</td>			
					<td scope="row">${row.PRICE }
					<td scope="row"><a href="#this" id="delete">삭제</a>
					<input type="hidden" name="user_id" value=<%=user_id%>></input></td>		
				</tr>						 		
			</c:forEach>	
	</tbody>
	</table>
	<br>
	<br>
	<br>
	<table border="1px solid black">
		<tr>
			<th scope="row">결제 정보</th>
		</tr>	
		<tr>
			<th scope="row">성함 : ${sessionScope.user.user_id}</th>			
		</tr>
		<tr>
			<th scope="row">주소 : ${sessionScope.user.address}</th>			
		</tr>
		<tr>
			<th scope="row">전화번호 : ${sessionScope.user.phone}</th>		
		</tr>
	</table>
	<table border="1px solid gray">	
		<tr>
			<td>총금액 :</td>
			<td>카드 정보 : <input type="text" name="cardnuma" size=3> - <input type="password" name="cardnumb" size=3> - <input type="password" name="cardnumc" size=3> - <input type="text" name="cardnumd" size=3></td>
			<td>카드 비밀번호 : <input type="password" name="cardpwd" size=3></td>
			<td>유효기간 : mm : <input type="text" name="cardmm" size=3> yy : <input type="password" name="cardyy" size=3> </td>
		</tr>
	</table>	
		</form>
	<a href="#this" id="pay">결제하기</a> 
	<%@ include file="/page/layout/footer.jspf" %>
	

	<script type="text/javascript">
		$(document).ready(function(){
			
			$("#pay").on("click", function(e){
				e.preventDefault();
				fn_openPayment();				
			});	
			
			$("#delete").on("click", function(e) {
				e.preventDefault();
				fn_deletePay();				
			});	
		});
		
		function fn_openPayment() {
			var comSubmit = new ComSubmit("frm");
			comSubmit.setUrl("<c:url value='/pay/insertCardInfo.do' /> ");
			comSubmit.submit();					
		}
		
		function fn_deletePay() {
            var comSubmit = new ComSubmit();                   
            comSubmit.setUrl("<c:url value='/pay/deletePay.do' />");
            comSubmit.addParam("CART_NO", $("#CART_NO").val());
            comSubmit.submit();
		}
		

		
	</script>
	</body>
		
	</html>