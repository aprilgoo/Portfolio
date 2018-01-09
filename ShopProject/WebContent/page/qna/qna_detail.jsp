<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<head>
<%@ include file="/page/layout/header.jspf" %>
</head>
<body>
 <div class="privacy about">
<h3>QnA <span>게시판</span></h3>
<form id="frm">
 <div class="checkout-right">
    <table class="timetable_sub">
        <colgroup>
            <col width="15%"/>
            <col width="35%"/>
            <col width="15%"/>
            <col width="35%"/>
        </colgroup>       
        <br />
        <br />
        <tbody>
            <tr>
                <th scope="row">글 번호</th>
                <td>${map.IDX}</td>
                 <input type="hidden" id="IDX" name="IDX" value="${map.IDX }" />                
                <th scope="row">카테고리</th>
                <td>${map.CATE}</td>
            </tr>
            <tr>
                <th scope="row">작성자</th>
                <td>${map.USER_ID}</td>
                <th scope="row">작성시간</th>
                <td>${map.CREA_DTM}</td>
            </tr>
            <tr>
                <th scope="row">제목</th>
                <td colspan="3">${map.TITLE}</td>
               <input type="hidden" id="TITLE" name="TITLE" value="${map.TITLE}" />                
                
            </tr>
            <tr>
                <td colspan="4">${map.CONTENTS}</td>
               <input type="hidden" id="CONTENTS" name="CONTENTS" value="${map.CONTENTS}" />                
                
            </tr>    
        </tbody>
    </table>
    </div>                     

   <br />
       
      <div align="right">	
<c:choose>
	<c:when test="${map.USER_ID==sessionScope.user_id}">
		<a class="btn btn-default" href="/qna/openQnaWrite.do">write</a>
		<a href="/qna/openQnaUpdate.do?IDX=${map.IDX}" class="btn btn-default">modify</a>
        <a href="/qna/deleteQna.do?IDX=${map.IDX}" class="btn btn-default">delete</a>
	</c:when>
	<c:otherwise>            			
    <div align="right"><a class="btn btn-default" href="/qna/openQnaWrite.do">write</a></div>        			           			
    </c:otherwise>
</c:choose>	
     </div>  
    </form>
    </div>   
     <div class="clear-fix"></div>
     <br><br><br>
<%@include file="/page/layout/footer.jspf" %>
</body>
</html>