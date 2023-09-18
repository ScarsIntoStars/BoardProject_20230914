<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-09-14
  Time: 오전 11:07
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
<%@include file="componnent/nav.jsp"%>
<h1>index page입니다.</h1>

<a href="/member/memberSave">회원가입</a>
<a href="/member/memberLogin">로그인</a>
<a href="/member/memberFindAll">회원목록</a>
<hr>
<a href="/board/boardSave">게시글 작성</a>
<a href="/board/boardFindAll">게시글 목록</a>



</body>
</html>
