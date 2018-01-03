<%@ page pageEncoding="utf-8"%>
    <!DOCTYPE html>
    <html>
    <head>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    </head>
   	<body>                
         <form method="POST" id="coupon" name="coupon"> 
                	<div id="couponModal" class="modal fade" role="dialog">
                		<div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                         	<h3 class="panel-title"></h3>
                         </div>
                          <div class="modal-body">
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
                                                    		${row.COUPON_NUM}                                                
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="invert">${row.COUPON_NAME}</td>                                               
                                                <td class="invert">
                                                <button type="button" id="coupon" class="btn btn-success" data-toggle="modal" data-target="#couponModal">쿠폰적용</button>
                                                </td>                                            
                                            </tr>
                                        </c:forEach>
                                    </c:when>
                                    <c:otherwise>      
                                    	<tr>사용 가능한 쿠폰이 없습니다.</tr>
                                    </c:otherwise>
                                </c:choose>
                          	  </tbody>                                                  
                            </table>     
                            </div>
                          </div>                         
                        </div>
                        </div>    	
                	</div>               
           </form>      
                </body>