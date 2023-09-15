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
        <td>삭제</td>
    </tr>
    <c:forEach items="${memberDTOList}" var="member">
        <tr>
            <td><a href="/member/memberUpdate?id=${member.id}">${member.memberEmail}</a></td>
            <td>${member.memberPassword}</td>
            <td>${member.memberName}</td>
            <td>${member.memberMobile}</td>
            <td>
                <button type="submit" onclick="delete_fn('${member.id}')">삭제</button>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
<script>
    const delete_fn = (id) => {
        location.href = "/member/memberDelete?id=" + id;
    }
</script>
</html>
