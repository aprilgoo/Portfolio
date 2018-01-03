<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="/page/layout/header.jspf" %>

</head>
<body>
 <div class="privacy about">
<h3>QnA <span>게시판</span></h3>
<form id="frm" action="/qna/openQnaList.do">
 <div class="checkout-right">
 <br />
<table style="border:1px solid #ccc" class="timetable_sub">

    <colgroup>
        <col width="10%"/>
        <col width="*"/>
        <col width="15%"/>
        <col width="20%"/>
    </colgroup>
    <thead>
        <tr>
            <th scope="col">분류</th>          
            <th scope="col">제목</th> 
            <th scope="col">이름</th>   
        </tr>
    </thead>
    
    <tbody>
        <c:choose>
            <c:when test="${fn:length(map.list) >0}">
                <c:forEach var="row" items="${map.list}">
                    <tr>
                        <td>${row.CATE}</td>                   	  
                        <td>
                        	<p><a href="/qna/openQnaDetail.do?IDX=${row.IDX}">${row.TITLE}</a></p>       
                        	 <input type="hidden" id="IDX" value=" ${row.IDX}" />                         	
                        	 <input type="hidden" id="user_id" value="${row.USER_ID}" />
                        </td> 
                        <td>${row.USER_ID}</td>         
                      </tr>
                </c:forEach>
            </c:when>
            <c:otherwise>
                <tr>
                    <td colspan="4">조회된 결과가 없습니다.</td>
                </tr>
            </c:otherwise>
        </c:choose>                    
    </tbody>
</table>
   </div>	  
<br />

<select name="opt2" class="btn">
	<option value="all" <c:out value="${map.opt2 == 'all'?'selected':''}" />>제목+내용</option>
	<option value="title" <c:out value="${map.opt2 == 'title'?'selected':''}" />>제목</option>
	<option value="contents" <c:out value="${map.opt2 == 'contents'?'selected':''}" />>내용</option>
</select>
<input size=24 name="keyword2" class="btn" placeholder="Search term..."> 
<button type="submit"><span class="glyphicon glyphicon-search"></span></button>
<div align="right"><a class="btn btn-default" href="/qna/openQnaWrite.do">write</a></div>
</form>
</div>
<div class="clear-fix"></div>
<br>
<br>
<br>
<%@include file="/page/layout/footer.jspf" %>

</body>
</html>