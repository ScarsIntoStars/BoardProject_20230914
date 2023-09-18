<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-09-15
  Time: 오후 1:38
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

<h3>업데이트 페이지</h3>
<div>
  <form action="/member/memberUpdate" method="post">
      <input type="hidden" placeholder="id" name="id" value="${memberOne.id}"> <br>
      <input type="text" placeholder="이메일" name="memberEmail" value="${memberOne.memberEmail}" readonly> <br>
      <input type="text" placeholder="비밀번호" name="memberPassword" value="${memberOne.memberPassword}"> <br>
      <input type="text" placeholder="이름" name="memberName" value="${memberOne.memberName}"> <br>
      <input type="text" placeholder="전화번호" name="memberMobile" value="${memberOne.memberMobile}"> <br>
      <input type="submit" value="회원정보수정">
  </form>
</div>

</body>
</html>
