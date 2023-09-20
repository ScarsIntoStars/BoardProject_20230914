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
<%@include file="../componnent/nav.jsp" %>
<h3>회원가입 페이지</h3>
<div class="container pt-3">
    <div class="card p-3 m-3">
        <form action="/member/memberSave" method="post">
            <div class="input-group flex-nowrap p-2">
                <span class="input-group-text">이메일</span>
                <input type="text" class="form-control" name="memberEmail" placeholder="email@naver.com"
                       aria-label="Username" aria-describedby="addon-wrapping">
            </div>
            <div class="input-group flex-nowrap p-2">
                <span class="input-group-text">비밀번호</span>
                <input type="text" class="form-control" name="memberPassword" placeholder="password"
                       aria-label="Username" aria-describedby="addon-wrapping">
            </div>
            <div class="input-group flex-nowrap p-2">
                <span class="input-group-text">이름</span>
                <input type="text" class="form-control" name="memberName" placeholder="name"
                       aria-label="Username" aria-describedby="addon-wrapping">
            </div>
            <div class="input-group flex-nowrap p-2">
                <span class="input-group-text">전화번호</span>
                <input type="text" class="form-control" name="memberMobile" placeholder="010-0000-0000"
                       aria-label="Username" aria-describedby="addon-wrapping">
            </div>
            <br>
            <input type="submit" value="회원가입">
        </form>
    </div>
</div>

<%@include file="../componnent/footer.jsp"%>

</body>
</html>
