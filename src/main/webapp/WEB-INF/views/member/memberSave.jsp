<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-09-14
  Time: 오전 11:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/resources/css/main.css">
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
</head>
<body>
<%@include file="../componnent/nav.jsp"%>

<h3>회원가입 페이지</h3>
<div>
    <form action="/member/memberSave" method="post">
        <input type="text" placeholder="이메일" name="memberEmail"> <br>
        <input type="text" placeholder="비밀번호" name="memberPassword"> <br>
        <input type="text" placeholder="이름" name="memberName"> <br>
        <input type="text" placeholder="전화번호" name="memberMobile"> <br>
        <input type="submit" value="회원가입">
    </form>
</div>

</body>
</html>
