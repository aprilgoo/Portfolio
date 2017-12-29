<%@ page pageEncoding="utf-8"%>
    <!DOCTYPE html>
    <html>

    <head>
        <%@ include file="/page/layout/header.jspf" %>
        <%@ include file="/page/layout/nav.jspf" %>
        
    <script>
    	
    
    </script>    
   </head>
   	<body>
                <!-- about -->
                <div class="privacy about">
                    <h3>${sessionScope.user.user_name}<span>님의 장바구니</span></h3>
                    <div class="checkout-right">
                        <!--   <h4>Your shopping cart contains: <span>3 Products</span></h4>  -->
                        <table class="timetable_sub">
                      
                            <thead>
                                <tr>
                                    <th>SL No.</th>
                                    <th>Product</th>
                                    <th>Quality</th>
                                    <th>Product Name</th>
                                    <th>Price</th>
                                    <th>Remove</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:choose>
                                    <c:when test="${fn:length(list) >0}">
                                        <c:forEach var="row" items="${list}">
                                            <tr class="rem1">
                                                <td class="invert">${row.CART_NO}
                                                    <input type="hidden" id="CART_NO" name="CART_NO" value=" ${row.CART_NO}"></input>
                                                </td>
                                                <td class="invert-image"><a href="/board/openSellDetail.do?${row.PRO_NO}"><img src="/images/1.png" alt=" " class="img-responsive"></a></td>
                                                <td class="invert">
                                                    <div class="quantity">
                                                    	<div class="quantity-select">
                                                    		${row.NUMBERS}                                                
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="invert">${row.PRO_NAME}</td>
                                                <td class="invert">${row.PRICE}원</td>                                      
                                                <td class="invert">
                                                    <div class="rem">
                                                        <a href="/cart/deleteCart.do?CART_NO=${row.CART_NO}" class="close1"></a>
                                                    </div>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </c:when>
                                    <c:otherwise>      
                                    	
                                    </c:otherwise>
                                </c:choose>
                            </tbody>
                        </table>
                    </div>
                    <div class="checkout-left">
                        <div class="col-md-4 checkout-left-basket">
                            <h4>Continue to basket</h4>
                           <c:set var="sum" value="0" />
                           <c:forEach var="price" items="${list}">
                         		<c:set var="sum" value="${sum+price.PRICE}"  />                            
                           </c:forEach>    
                            
                            <ul> 
                            	<li>Total Service Charges <i>-</i> <span></span></li> 
                            	<li>Total <i>-</i> <span><c:out value="${sum}"/>원</span></li>                     
                            </ul>
                        </div>     
                        <div class="col-md-8 address_form_agile">
                            <h4>Add a new Details</h4>
                            <form action="payment.html" method="post" class="creditly-card-form agileinfo_form">
                                <section class="creditly-wrapper wthree, w3_agileits_wrapper">
                                    <div class="information-wrapper">
                                        <div class="first-row form-group">
                                            <div class="controls">
                                                <label class="control-label">Full name: </label>
                                                <input class="billing-address-name form-control" type="text" name="name" placeholder="Full name">
                                            </div>
                                            <div class="w3_agileits_card_number_grids">
                                                <div class="w3_agileits_card_number_grid_left">
                                                    <div class="controls">
                                                        <label class="control-label">Mobile number:</label>
                                                        <input class="form-control" type="text" placeholder="Mobile number">
                                                    </div>
                                                </div>
                                                <div class="w3_agileits_card_number_grid_right">
                                                    <div class="controls">
                                                        <label class="control-label">Landmark: </label>
                                                        <input class="form-control" type="text" placeholder="Landmark">
                                                    </div>
                                                </div>
                                                <div class="clear"> </div>
                                            </div>
                                            <div class="controls">
                                                <label class="control-label">Town/City: </label>
                                                <input class="form-control" type="text" placeholder="Town/City">
                                            </div>
                                            <div class="controls">
                                                <label class="control-label">Address type: </label>
                                                <select class="form-control option-w3ls">
                                                    <option>Office</option>
                                                    <option>Home</option>
                                                    <option>Commercial</option>
                                                </select>
                                            </div>
                                        </div>
                                        <button class="submit check_out">Delivery to this Address</button>
                                    </div>
                                </section>
                            </form>
                            <div class="checkout-right-basket">
                                <a href="payment.html">Make a Payment <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span></a>
                            </div>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                </div>
                <!-- //about -->
                </div>
                <div class="clearfix"></div>
                </div>
           
                </body>
                <%@ include file="/page/layout/footer.jspf" %>