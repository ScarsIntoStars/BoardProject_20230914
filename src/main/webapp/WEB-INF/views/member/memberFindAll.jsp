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
    <link rel="stylesheet" href="/resources/css/main.css">
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
</head>
<body>
<%@include file="../componnent/nav.jsp"%>

<h3>회원목록 페이지</h3>

<div class="container">
    <div class="card p-3">
        <div class="row">
            <div class="cal">
                <table class="table">
                    <thead>
                    <tr>
                        <th class="text-center" scope="col">이메일</th>
                        <th class="text-center" scope="col">비밀번호</th>
                        <th class="text-center" scope="col">이름</th>
                        <th class="text-center" scope="col">전화번호</th>
                        <th class="text-center" scope="col">삭제</th>
                    </tr>
                    </thead>
                    <tbody class="table-group-divider">
                    <c:forEach items="${memberDTOList}" var="member">
                        <tr>
                            <td class="text-center"><a href="/member/memberUpdate?id=${member.id}">${member.memberEmail}</a></td>
                            <td class="text-center">${member.memberPassword}</td>
                            <td class="text-center">${member.memberName}</td>
                            <td class="text-center">${member.memberMobile}</td>
                            <td class="text-center">
                                <button class="btn btn-warning" type="submit" onclick="delete_fn('${member.id}')">삭제</button>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

</body>
<script>
    const delete_fn = (id) => {
        location.href = "/member/memberDelete?id=" + id;
    }
</script>
</html>
