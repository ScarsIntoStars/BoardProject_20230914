<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-09-15
  Time: 오전 9:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>회원목록 페이지</h3>
<table>
    <tr>
        <td>이메일</td>
        <td>비밀번호</td>
        <td>이름</td>
        <td>전화번호</td>
    </tr>
    <c:forEach items="${memberDTOList}" var="member">
        <tr>
            <td>${member.memberEmail}</td>
            <td>${member.memberPassword}</td>
            <td>${member.memberName}</td>
            <td>${member.memberMobile}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
