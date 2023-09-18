<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-09-18
  Time: 오후 2:21
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
<%@include file="../componnent/nav.jsp" %>
<div class="container">
  <div class="card">
      <div class="p-3">
          <label for="exampleFormControlInput1" class="form-label">제목</label>
          <input type="email" class="form-control" id="exampleFormControlInput1" value="${board.boardTitle}" readonly>
      </div>
      <div class="p-3">
          <label for="exampleFormControlTextarea1" class="form-label">글 내용</label>
          <textarea class="form-control" id="exampleFormControlTextarea1" rows="15" readonly>${board.boardContents}</textarea>
      </div>
  </div>
    <hr>
    <form action="/comment/commentSave" method="post">

    <div class="form-floating mt-3">
        <textarea name="comment" class="form-control" placeholder="comment 입력" id="floatingTextarea"></textarea>
        <label for="floatingTextarea">Comment 작성</label>
    </div>
        <button class="btn btn-primary mt-2">입력</button>
    </form>
</div>

</body>
</html>
