<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/page/layout/header.jspf" %>
</head>
<body>
<% String user_id = (String)session.getAttribute("user_id"); %>

<form id="frm">
    <table class="board_view">
        <colgroup>
            <col width="15%"/>
            <col width="35%"/>
            <col width="15%"/>
            <col width="35%"/>
        </colgroup>
        <caption>게시글 상세</caption>
        <br>
        <br>
        <tbody>
            <tr>
                <th scope="row">상품 번호</th>
                <td>${map.PRO_NO}</td> 
                 <input type="hidden" name="PRO_NO"  value="${map.PRO_NO}"></input> 
                  <input type="hidden" id="user_id" name="user_id" value=<%=user_id%>></input>                                  
                <th scope="row">상품 종류</th>
                <td>${map.PRO_TYPE}</td>
            </tr>
            <tr>
                <th scope="row">상품 이름</th>
                <td>${map.PRO_NAME}</td>
                <th scope="row">		
                <select name="NUMBERS">
					<c:forEach begin="1" end="10" var="i">
						<option name="NUMBERS" value="${i}">${i}</option>
					</c:forEach>
				</select></th>
           		<td><a href="#this" id="cart">장바구니에 담기</a><td>  
       		<input type="hidden" name="PRO_NAME" value="${map.PRO_NAME}"></input>  	    		
                
            </tr>
            <tr>
                <th scope="row">상품 설명</th>
                <td colspan="3">${map.PRO_DETAIL}</td>
            </tr>
            <tr>
            	<th scope="row">상품 가격</th>
                <td colspan="4">${map.PRICE}</td>
                <input type="hidden" name="PRICE" value="${map.PRICE}"></input>
            </tr>
            <br />
            
        </tbody>
    </table>
   	 </form>   	 
     <br />
     
    <a href="#this" class="btn" id="list">목록으로</a>
    <a href="#this" class="btn" id="update">수정하기</a>
    <a href="#this" class="btn" id="delete">삭제하기</a>
    
     
    <%@ include file="/page/layout/footer.jspf" %>
    <script type="text/javascript">
        $(document).ready(function(){
            $("#list").on("click", function(e){ //목록으로 버튼
                e.preventDefault();
                fn_openSellList();
            });
             
            $("#update").on("click", function(e){ //수정하기 버튼
                e.preventDefault();
                fn_openSellModify();
            });         
            
            $("#delete").on("click", function(e){ //삭제하기 버튼
                e.preventDefault();
                fn_deleteBoard();
            });     
            
    		$("#cart").on("click", function(e){ //글쓰기 버튼
    			e.preventDefault();
    				fn_insertCart();				
    		});	            
              
        });
         
        function fn_openSellList(){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/board/openSellList.do' />");
            comSubmit.submit();
        }
         
        function fn_openSellModify(){
            var PRO_NO = ${map.PRO_NO};
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/board/openSellModify.do' />");
            comSubmit.addParam("PRO_NO", PRO_NO);
            comSubmit.submit();
        }      
        
        function fn_deleteBoard(){
            var comSubmit = new ComSubmit();
            var PRO_NO = ${map.PRO_NO};
            comSubmit.setUrl("<c:url value='/board/deleteBoard.do' />");
            comSubmit.addParam("PRO_NO", PRO_NO);
            alert("정말 삭제하시겠습니까?");
            comSubmit.submit();
            
        }
        
		function fn_insertCart() {
			var comSubmit = new ComSubmit("frm");
			comSubmit.setUrl("<c:url value='/board/insertCart.do' />");						
			comSubmit.submit();
		}
        
    </script>
</body>
</html>