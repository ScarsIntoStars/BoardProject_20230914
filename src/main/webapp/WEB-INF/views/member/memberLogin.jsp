<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-09-15
  Time: 오후 4:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <%@include file="../componnent/nav.jsp"%>
  <link rel="stylesheet" href="/resources/css/main.css">
  <link rel="stylesheet" href="/resources/css/bootstrap.min.css">

  <h3>로그인 페이지</h3>
</head>
<body>
<div>
  <form action="/member/memberLogin" method="post">
    <input type="text" placeholder="이메일" name="memberEmail"> <br>
    <input type="password" placeholder="비밀번호" name="memberPassword"> <br>
    <input type="submit" value="로그인">
    <input type="reset" value="취소">
  </form>
</div>
<%@include file="../componnent/footer.jsp"%>

</body>
<script>
  

</script>
</html>
