<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<html lang="ko">

<html>
<%@ include file="/page/layout/header.jspf" %>


<form method="post" id="frm" name="frm">
<table>
<tr>
<td>탈퇴를 원하시면 재로그인 해주세요</td>
</tr>
<tr>
<td>
    사용자 아이디 : <input type="text" name="user_id" /> </td>
<td>
    사용자 비밀번호 : <input type="password" name="user_password" />
</td>
</tr>
<tr>
<td>
<a href="#this" id="login">로그인</a><br />
</td></tr>
</table>
</form>


<script type="text/javascript">
        $(document).ready(function(){                  
            $("#login").on("click", function(e){
                e.preventDefault();
                fn_UserDelete();
            });
        });
         
        function fn_UserDelete(){
            var comSubmit = new ComSubmit("frm");
            comSubmit.setUrl("<c:url value='/user/deleteUser.do' />");
            comSubmit.submit();
        } 
    </script>
</html>