<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/page/layout/header.jspf" %>
<%@ include file="/page/layout/nav.jspf" %>
		<div class="w3l_banner_nav_right">
			<div class="w3l_banner_nav_right_banner3">
				<h3>Best Deals For New Products<span class="blink_me"></span></h3>
			</div>
			<div class="w3l_banner_nav_right_banner3_btm">
				<div class="col-md-4 w3l_banner_nav_right_banner3_btml">
					<div class="view view-tenth">
						<img src="/images/13.jpg" alt=" " class="img-responsive" />
						<div class="mask">
							<h4>Grocery Store</h4>
							<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt.</p>
						</div>
					</div>
					<h4>Utensils</h4>
					<ol>
						<li>sunt in culpa qui officia</li>
						<li>commodo consequat</li>
						<li>sed do eiusmod tempor incididunt</li>
					</ol>
				</div>
				<div class="col-md-4 w3l_banner_nav_right_banner3_btml">
					<div class="view view-tenth">
						<img src="/images/14.jpg" alt=" " class="img-responsive" />
						<div class="mask">
							<h4>Grocery Store</h4>
							<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt.</p>
						</div>
					</div>
					<h4>Hair Care</h4>
					<ol>
						<li>enim ipsam voluptatem officia</li>
						<li>tempora incidunt ut labore et</li>
						<li>vel eum iure reprehenderit</li>
					</ol>
				</div>
				<div class="col-md-4 w3l_banner_nav_right_banner3_btml">
					<div class="view view-tenth">
						<img src="/images/15.jpg" alt=" " class="img-responsive" />
						<div class="mask">
							<h4>Grocery Store</h4>
							<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt.</p>
						</div>
					</div>
					<h4>Cookies</h4>
					<ol>
						<li>dolorem eum fugiat voluptas</li>
						<li>ut aliquid ex ea commodi</li>
						<li>magnam aliquam quaerat</li>
					</ol>
				</div>
				<div class="clearfix"> </div>
			</div>
		<form id="frm">
<!-- top-brands -->

	<div class="top-brands">
		<div class="container">
			<h3>Hot Offers</h3>	
			<c:choose>
            <c:when test="${fn:length(map.list) >0}">
                <c:forEach var="row" items="${map.list}">		
			<div class="agile_top_brands_grids">			
				<div class="col-md-3 top_brand_left">
					<div class="hover14 column">
						<div class="agile_top_brand_left_grid">		
							<div class="tag"><img src="/images/tag.png" alt=" " class="img-responsive" /></div>
							<div class="agile_top_brand_left_grid1">
								<figure>
									<div class="snipcart-item block" >
										<div class="snipcart-thumb">
											<a href="/board/openSellDetail.do?PRO_NO=${row.PRO_NO}"><img title=" " alt=" " src="/images/1.png" /></a>		
											<p><a href="/board/openSellDetail.do?PRO_NO=${row.PRO_NO}">${row.PRO_NAME}</a></p>
											 <input type="hidden" id="PRO_NO" name="PRO_NO" value="${row.PRO_NO}" />
											<h4>$7.99 <span>${row.PRICE}원</span></h4>
										</div>
										<div class="snipcart-details top_brand_home_details">
										<!--	<form action="/board/insertCart.do" method="post">
												<fieldset>													
												  <input type="hidden" name="cmd" value="_cart" />
													<input type="hidden" name="add" value="1" />
													<input type="hidden" name="business" value=" " />
													<input type="hidden" name="item_name" value="Fortune Sunflower Oil" />
													<input type="hidden" name="amount" value="7.99" />
													<input type="hidden" name="discount_amount" value="1.00" />
													<input type="hidden" name="currency_code" value="USD" />
													<input type="hidden" name="return" value=" " />
													<input type="hidden" name="cancel_return" value=" " />
													<input type="submit" name="submit" value="Add to cart" class="button" />	
												</fieldset>
													
											</form>   -->									
										</div>
									</div>
								</figure>
							</div>
						</div>
						
					</div>
				</div>
				</div>
				 </c:forEach>
            </c:when>
            <c:otherwise>
                <tr>
                    <td colspan="4">조회된 결과가 없습니다.</td>
                </tr>
            </c:otherwise>
        </c:choose>        
				
				<div class="clearfix"> </div>	
			
		</div>
	</div>
	

<!-- //top-brands -->
</form>
					<div class="clearfix"> </div>
				</div>
<!-- //banner -->
<%@ include file="/page/layout/footer.jspf" %>
</body>
</html>