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
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
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
            <textarea class="form-control" id="exampleFormControlTextarea1" rows="15"
                      readonly>${board.boardContents}</textarea>
        </div>
    </div>
    <hr>

    <div class="form-floating mt-3">
        <textarea name="comment" id="comment-text" class="form-control" id="floatingTextarea"></textarea>
        <label for="floatingTextarea">Comment 작성</label>
    </div>

    <div class="form-floating mt-3">
        <textarea name="comment" class="form-control" id="floatingWriterArea" readonly>${sessionScope.loginName}</textarea>
        <label for="floatingWriterArea">작성자</label>
    </div>
    <input class="btn btn-primary mt-2" onclick="comment_write()">입력</input>

</div>

</body>
<script>
    const comment_write = () => {
        const commentWriter = '${sessionScope.loginName}';
        const commentText = document.getElementById("comment-text").value;
        // const commentWriter = document.getElementById("#comment-writer");
        const boardId = '${board.id}';
        console.log("commentWriter : " + commentWriter)
        console.log("commentText : " + commentText)

        $.ajax({
                type: "post",
                url: "/comment/commentSave",
                data: {
                    commentWriter: commentWriter,
                    commentText: commentText,
                    boardId: boardId
                },
                success: function (run) {
                    console.log("리턴값 : ", run);
                    let output = "<table id=\"comment-list\">\n" +
                        "    <tr>\n" +
                        "        <th>작성자</th>\n" +
                        "        <th>내용</th>\n" +
                        "        <th>작성시간</th>\n" +
                        "    </tr>\n";
                    for (let i in run) {
                        output += "    <tr>\n";
                        output += "        <td>" + run[i].commentWriter + "</td>\n";
                        output += "        <td>" + run[i].commentText + "</td>\n";
                        output += "        <td>" + run[i].createdAt + "</td>\n";
                        output += "    </tr>\n";
                    }
                    output += "<table>";
                    result.innerHTML= output;
                    document.getElementById("comment-writer").value = "";
                    document.getElementById("comment-text").value = "";
                },
            error: function () {
                    console.log("댓글 작성 실패")
            }
            }
        )

    }

</script>
</html>
