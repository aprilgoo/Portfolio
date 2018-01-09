<%@ page pageEncoding="utf-8"%>
    <!DOCTYPE html>
    <html>
    <head>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<link href="/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="/css/style.css" rel="stylesheet" type="text/css" media="all" />
   </head>
   	<body>    
   	<br />
   	<form id="coupon" name="coupon" method="POST" action="/coupon/updateCoupon.do"> 
                	<div class="form-group">
                            <table class="timetable_sub">
                              <thead>
                              	<tr>
                        			<th>쿠폰 번호</th>
                        			<th>쿠폰 이름</th>
                        			<th>쿠폰 갯수</th>
                        			<th>적용 여부</th>
                        		</tr>                               
                              </thead>
                              <tbody>                              
                                <c:choose>
                                    <c:when test="${fn:length(list2) > 0}">
                                        <c:forEach var="row" items="${list2}">
                                            <tr class="rem1">
                                                <td class="invert">${row.COUPON_NO}
                                                    <input type="hidden" id="COUPON_NO" name="COUPON_NO" value=" ${row.COUPON_NO}"></input>
                                                </td>
                                                <td class="invert">
                                                    <div class="quantity">
                                                    	<div class="quantity-select">
                                                    		${row.COUPON_NAME}                                                
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="invert">${row.COUPON_NUM}</td>                                               
                                                <td class="invert">
                                                <button type="submit" id="coupon" class="btn btn-success">쿠폰적용</button>
                                                </td>                                            
                                            </tr>
                                        </c:forEach>
                                    </c:when>
                                    <c:otherwise>      
                                    	<tr>
                                    	<td colspan="5">사용 가능한 쿠폰이 없습니다.</td>
                                    	</tr>
                                    </c:otherwise>
                                </c:choose>
                          	  </tbody>                                                  
                            </table>     
                            </div>   
                         </form>                  
  
                </body>
                
</html>