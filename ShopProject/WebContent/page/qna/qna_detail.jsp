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
            </tr>
            <tr>
                <td colspan="4">${map.CONTENTS}</td>
            </tr>
     <!--      <tr>
            	<th scope="row">첨부파일</th>
            	<td colspan="3">
            		<c:choose> 
            		<c:when test = "${fn:length(list) > 0}">
            			<c:forEach var="row" items="${list}">            				
            				<input type="hidden" id="IDX" value="${row.IDX }">
            				
            				<a href="#this" name="file">${row.ORIGINAL_FILE_NAME }</a>
            				(${row.FILE_SIZE }kb)
            				<br />
            			</c:forEach>
            			</c:when>
            			<c:otherwise>            			
            				첨부 파일이 없습니다.          			           			
            			</c:otherwise>
            		</c:choose>
            	</td>
            </tr>  -->  
        </tbody>
    </table>
    </div>                     

   <br />
       
      <div align="right">	
<c:choose>
	<c:when test="${map.USER_ID==sessionScope.user_id}">
		<a class="btn btn-default" href="/qna/openQnaWrite.do">write</a>
		<a href="/qna/updateQnaBoard.do?IDX=${map.IDX}" class="btn btn-default">modify</a>
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