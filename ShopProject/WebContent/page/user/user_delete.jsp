<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<html lang="ko">

<html>
<%@ include file="/page/layout/header.jspf" %>


<form method="post" id="frm" name="frm" action="/user/deleteUser.do">
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
<input type="submit" class="btn form-control" value="탈퇴하기" />
</td></tr>
</table>
</form>

</html>