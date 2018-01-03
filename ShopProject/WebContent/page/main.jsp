<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/page/layout/header.jspf" %>
<%@ include file="/page/layout/nav.jspf" %>
<html>
	<div class="w3l_banner_nav_right">
			<section class="slider">
				<div class="flexslider">
					<ul class="slides">
						<li>
							<div class="w3l_banner_nav_right_banner">
								<h3>Make your <span>food</span> with Spicy.</h3>
								<div class="more">
									<a href="/board/openProductList.do" class="button--saqui button--round-l button--text-thick" data-text="Shop now">Shop now</a>
								</div>
							</div>
						</li>
						<li>
							<div class="w3l_banner_nav_right_banner1">
								<h3>Make your <span>food</span> with Spicy.</h3>
								<div class="more">
									<a href="/board/openProductList.do" class="button--saqui button--round-l button--text-thick" data-text="Shop now">Shop now</a>
								</div>
							</div>
						</li>
						<li>
							<div class="w3l_banner_nav_right_banner2">
								<h3>upto <i>50%</i> off.</h3>
								<div class="more">
									<a href="/board/openProductList.do" class="button--saqui button--round-l button--text-thick" data-text="Shop now">Shop now</a>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</section>
			<!-- flexSlider -->
				<link rel="stylesheet" href="/css/flexslider.css" type="text/css" media="screen" property="" />
				<script defer src="/js/jquery.flexslider.js"></script>
				<script type="text/javascript">
				$(window).load(function(){
				  $('.flexslider').flexslider({
					animation: "slide",
					start: function(slider){
					  $('body').removeClass('loading');
					}
				  });
				});
			  </script>
			<!-- //flexSlider -->
		</div>
		<div class="clearfix"></div>
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
<%@ include file="/page/layout/footer.jspf" %>

</html>