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
    <div class="card p-3">
        <div class="row">
            <div class="cal">
                <table class="table">
                    <thead>
                    <tr>
                        <th class="text-center" scope="col">글 번호</th>
                        <th class="text-center" scope="col">제목</th>
                        <th class="text-center" scope="col">글쓴이</th>
                        <th class="text-center" scope="col">조회수</th>
                    </tr>
                    </thead>
                    <tbody class="table-group-divider">
                    <c:forEach items="${board}" var="board">
                        <tr>
                            <td class="text-center">${board.id}</td>
                            <td><a href="/board/boardFindById?id=${board.id}">${board.boardTitle}</a></td>
                            <td class="text-center">${board.boardWriter}</td>
                            <td class="text-center">${board.boardHits}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

</body>
</html>
