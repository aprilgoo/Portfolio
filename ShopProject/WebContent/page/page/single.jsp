<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<%@ include file="/page/layout/header.jspf" %>
<%@ include file="/page/layout/nav.jspf" %>
<head>
		
		<div class="w3l_banner_nav_right">	
			<div class="w3l_banner_nav_right_banner3">
				<h3>신상품을 가장 좋은 가격에<span class="blink_me"></span></h3>
			</div>
				
			<div class="agileinfo_single">
			<h5>${map.PRO_NAME}</h5>
			<form id="frm2" method="POST" name="CART" method="POST" action="/board/insertCart.do">
				
				<div class="col-md-4 agileinfo_single_left">
				<!-- 파일 업로드 기능 만든 후 이미지 삽입할 부분 -->
					<img id="example" src="/images/1.png" alt=" " class="img-responsive" />
				</div>
				<div class="col-md-8 agileinfo_single_right">
					<div class="rating1">
						<span class="starRating">
							<input id="rating5" type="radio" name="rating" value="5">
							<label for="rating5">5</label>
							<input id="rating4" type="radio" name="rating" value="4">
							<label for="rating4">4</label>
							<input id="rating3" type="radio" name="rating" value="3" checked>
							<label for="rating3">3</label>
							<input id="rating2" type="radio" name="rating" value="2">
							<label for="rating2">2</label>
							<input id="rating1" type="radio" name="rating" value="1">
							<label for="rating1">1</label>
						</span>
					</div>
					<div class="w3agile_description">										
						<input type="hidden" id="PRO_NAME" name="PRO_NAME" value="${map.PRO_NAME}"></input>
						<input type="hidden" id="PRO_NO" name="PRO_NO"  value="${map.PRO_NO}" />
						 <input type="hidden" id="PRICE" name="PRICE" value="${map.PRICE}"></input>
						<h4>Description :</h4>
						<p>${map.PRO_DETAIL}</p>
					</div>
					
					<div class="snipcart-item block">
					<c:choose>
				<c:when test="${sessionScope.user_id ne null}">	
						<div class="snipcart-thumb agileinfo_single_right_snipcart">
							<h4>$21.00 <span>${map.PRICE}원</span></h4>
						</div>	
				
							
					  <select name="NUMBERS" class="btn">
					<c:forEach begin="1" end="10" var="i">
						<option name="NUMBERS" value="${i}">${i}</option>
					</c:forEach>
					  </select>							  		
				<button type="submit" class="btn btn-primary">ADD TO CART</button>
					</c:when>
				 	
					<c:when test="${sessionScope.user_id eq null}">
						<div class="snipcart-thumb agileinfo_single_right_snipcart">
							<h4>${map.PRICE}원</h4>
						</div>	
						 <select name="NUMBERS" class="btn">
					<c:forEach begin="1" end="10" var="i">
						<option name="NUMBERS" value="${i}">${i}</option>
					</c:forEach>
					  </select>							  		
				<button type="submit" class="btn btn-primary">ADD TO CART</button>				
					</c:when>
						</c:choose>
					</div>
					
					</div>
					</form>
					</div>	
					</div>
										
					</head>
				
				<div class="clearfix"> </div>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

<%@ include file="/page/layout/footer.jspf" %>
 <script src='/js/okzoom.js'></script>
  <script>
    $(function(){
      $('#example').okzoom({
        width: 150,
        height: 150,
        border: "1px solid black",
        shadow: "0 0 5px #000"
      });
    });
  </script> 
</body>
</html>