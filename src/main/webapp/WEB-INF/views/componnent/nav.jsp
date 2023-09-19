<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-09-15
  Time: 오후 4:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="navbar navbar-expand-lg bg-body-tertiary">
    <div class="container-fluid">
        <a class="navbar-brand" href="/">Main Page</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">

            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="/member/memberSave">회원가입</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/member/memberFindAll">회원리스트</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/board/boardSave">글쓰기</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/board/boardFindAll">글목록</a>
                </li>
                <li class="menu-item" id="login-area">
                </li>
            </ul>

        </div>
    </div>
</nav>
<script>
    const loginArea = document.getElementById("login-area");
    const loginEmail = '${sessionScope.loginEmail}';
    const loginName = '${sessionScope.loginName}';
    console.log(loginEmail.length)
    if(loginEmail != 0) {
        // 로그인 했음
        loginArea.innerHTML = loginName +"님 환영합니다!" + "<a href='/member/memberLogout'>logout</a>"

    } else {
        // 로그인 안했음
        loginArea.innerHTML=  "<a href='/member/memberLogin'>로그인</a>";
    }
</script>
