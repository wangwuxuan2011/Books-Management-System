<%@ page import="com.book.domain.Book" %>
<%--
  Created by IntelliJ IDEA.
  User: wzx
  Date: 2023/3/25
  Time: 18:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>${readercard.name}的主页</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery-3.2.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <style>
        body {
            background-color: rgb(240, 242, 245);
        }

        #main {
            display: flex;
            flex-direction: row;
            justify-content: center;
            align-items: center;
            flex-wrap: wrap;
            padding-top: 50px;
        }

        #main section {
            width: 40%;
            margin: 20px;
            padding: 20px;
            height: 400px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 0 5px #ccc;
            background-color: #fff;
            overflow: auto;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-default" role="navigation" style="background-color:#fff" style="background-color:#fff">
    <div class="container-fluid">
        <div class="navbar-header" style="margin-left: 8%;margin-right: 1%">
            <a class="navbar-brand " href="reader_main.html"><p class="text-primary">我的图书馆</p></a>
        </div>
        <div class="collapse navbar-collapse" id="example-navbar-collapse">
            <ul class="nav navbar-nav navbar-left">
                <li>
                    <a href="reader_querybook.html">
                        图书查询
                    </a>
                </li>
                <li>
                    <a href="reader_info.html">
                        个人信息
                    </a>
                </li>
                <li>
                    <a href="mylend.html">
                        我的借还
                    </a>
                </li>
                <li>
                    <a href="reader_repasswd.html">
                        密码修改
                    </a>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="logout.html"><span class="glyphicon glyphicon-log-in"></span>退出账号</a></li>
            </ul>
        </div>
    </div>
</nav>

<div id="main">
    <section>
        <h4><a href="mylend.html">最近借阅记录</a></h4>
        <table class="table table-hover">
            <thead>
            <tr>
                <th>图书号</th>
                <th>借出日期</th>
                <th>归还日期</th>
                <th>状态</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${list}" var="alog" begin="0" end="4">
                <tr onclick="goToBookPage(${alog.bookId})">
                    <td><c:out value="${alog.bookId}"></c:out></td>
                    <td><c:out value="${alog.lendDate}"></c:out></td>
                    <td><c:out value="${alog.backDate}"></c:out></td>
                    <c:if test="${empty alog.backDate}">
                        <td>未还</td>
                    </c:if>
                    <c:if test="${!empty alog.backDate}">
                        <td>已还</td>
                    </c:if>
                    <c:if test="">
                        <td>超期</td>
                    </c:if>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <c:if test="${empty list }">
            <div style="display: flex;justify-content: center;align-content: center">
                未查询到任何借阅记录
            </div>
        </c:if>
    </section>
    <section>
        <h4><a href="reader_querybook.html">图书查询</a></h4>
        <form method="get" action="reader_querybook.html" class="form-inline"
              style="display: flex;justify-content: center;margin-top: 100px">
            <div class="input-group" style="width: 90%">
                <input type="text" placeholder="输入图书号或图书名" class="form-control" id="search" name="searchWord"
                       class="form-control">
                <span class="input-group-btn">
                            <input type="submit" value="搜索" class="btn btn-default">
            </span>
            </div>
        </form>
        <script>
            function mySubmit(flag) {
                return flag;
            }

            $("#searchform").submit(function () {
                var val = $("#search").val();
                if (val == '') {
                    alert("请输入关键字");
                    return mySubmit(false);
                }
            })
        </script>
    </section>
    <section>
        <h4><a href="reader_querybook.html">推荐图书</a></h4>
        <table class="table table-hover">
            <thead>
            <tr>
                <th>图书号</th>
                <th>书名</th>
                <th>出版社</th>
                <th>ISBN</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${randomBooks}" var="book">
                <tr onclick="goToBookPage(${book.bookId})">
                    <td><c:out value="${book.bookId}"></c:out></td>
                    <td><c:out value="${book.name}"></c:out></td>
                    <td><c:out value="${book.publish}"></c:out></td>
                    <td><c:out value="${book.isbn}"></c:out></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </section>
    <section>
        <h4><a href="reader_querybook.html">热门图书</a></h4>
        <table class="table table-hover">
            <thead>
            <tr>
                <th>书名</th>
                <th>作者</th>
                <th>出版社</th>
                <th>ISBN</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${hotBooks}" var="book">
                <tr onclick="goToBookPage(${book.bookId})">
                    <td><c:out value="${book.name}"></c:out></td>
                    <td><c:out value="${book.author}"></c:out></td>
                    <td><c:out value="${book.publish}"></c:out></td>
                    <td><c:out value="${book.isbn}"></c:out></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </section>
</div>
<script>
    function goToBookPage(bookId) {
        window.location.href = "readerbookdetail.html?bookId=" + bookId;
    }
</script>
</body>
</html>
