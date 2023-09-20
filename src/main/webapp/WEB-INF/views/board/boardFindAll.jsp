<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/resources/css/main.css">
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script type="text/javascript"
            src="https://cdnjs.cloudflare.com/ajax/libs/twbs-pagination/1.4.2/jquery.twbsPagination.min.js"></script>
</head>
<body>
<%@include file="../componnent/nav.jsp" %>
<h3>글 목록</h3>
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
                <div id="pagination" class="pagination justify-content-center mt-3"></div>
                <form name="frm" class="col-4">
                    <div class="input-group">
                        <input name="query" class="form-control" value="">
                        <button class="btn btn-primary">검색</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

</body>
<script>
    let page = 1;
    let query = "";
    const id = "${id}";

    $(frm).on("submit", function (e) {
        e.preventDefault();
        query = $(frm.query).val();
        getTotal();
    });

    function getTotal() {
        $.ajax({
            type: "get",
            url: "/board/boardTotal",
            success: function (data) {
                console.log(data)
                const totalPages = Math.ceil(data / 3);
                if (data == 0) {
                    $("#pagination").hide();
                } else {
                    $("#pagination").show();
                    $("#pagination").twbsPagination("changeTotalPages", totalPages, 1);
                }
            }
        });
    }

    $('#pagination').twbsPagination({
        totalPages: 1,	// 총 페이지 번호 수
        visiblePages: 1,	// 하단에서 한번에 보여지는 페이지 번호 수
        startPage: 1, // 시작시 표시되는 현재 페이지
        initiateStartPageClick: false,	// 플러그인이 시작시 페이지 버튼 클릭 여부 (default : true)
        first: '<<',	// 페이지네이션 버튼중 처음으로 돌아가는 버튼에 쓰여 있는 텍스트
        prev: '<',	// 이전 페이지 버튼에 쓰여있는 텍스트
        next: '>',	// 다음 페이지 버튼에 쓰여있는 텍스트
        last: '>>',	// 페이지네이션 버튼중 마지막으로 가는 버튼에 쓰여있는 텍스트
        onPageClick: function (event, curPage) {
            page = curPage;
        }
    });
</script>
</html>
