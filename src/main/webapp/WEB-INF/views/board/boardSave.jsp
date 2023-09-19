<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-09-14
  Time: 오전 11:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/resources/css/main.css">
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">

</head>
<body>
<%@include file="../componnent/nav.jsp"%>

<H3>글쓰기 페이지</H3>
<div class="container">
<div class="card p-4">
    <form action="/board/boardSave" method="post">
        <div class="mb-3" >
            <label for="exampleFormControlInput1" class="form-label">글 제목</label>
            <input type="text" name="boardTitle" class="form-control" id="exampleFormControlInput1" placeholder="제목을 입력하시오">
        </div>
        <div class="mb-3">
            <label for="exampleFormControlTextarea1" class="form-label">글 내용</label>
            <textarea name="boardContents" class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
        </div>
        <div class="mb-3">
            <label for="exampleFormControlInput1" class="form-label">작성자</label>
            <input name="boardWriter" type="text" class="form-control" id="exampleFormControlInput2" placeholder="작성자를 입력하시오">
        </div>
        <div class="mb-3">
            <label for="exampleFormControlInput1" class="form-label">비밀번호</label>
            <input name="boardPassword" type="text" class="form-control" id="exampleFormControlInput3" placeholder="비밀번호를 입력하시오">
        </div>
        <input type="submit" value="입력">
        <input type="reset" value="취소">
    </form>
</div>
</div>
</body>

</html>
