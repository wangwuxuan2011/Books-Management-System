<%--
  Created by IntelliJ IDEA.
  User: wzx
  Date: 2023/3/25
  Time: 17:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://cdn.staticfile.org/echarts/4.3.0/echarts.min.js"></script>
<html>
<head>
    <title>读者借还书</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery-3.2.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <style>
        body {
            margin: 0;
            padding: 0;
            overflow: visible;
            background-color: rgb(240, 242, 245);
        }

        #main {
            display: flex;
            flex-direction: row;
            justify-content: center;
            align-items: center;
            flex-wrap: wrap;
            padding-top: 50px;
            height: 100%;
        }

        .panel {
            width: 80%;
        }

    </style>

</head>
<body>
<nav style="position:fixed;z-index: 999;width: 100%;background-color: #fff" class="navbar navbar-default"
     role="navigation">
    <div class="container-fluid">
        <div class="navbar-header" style="margin-left: 8%;margin-right: 1%">
            <a class="navbar-brand" href="admin_main.html">图书管理系统</a>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-left">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        图书管理
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="allbooks.html">全部图书</a></li>
                        <li class="divider"></li>
                        <li><a href="book_add.html">增加图书</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        读者管理
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="allreaders.html">全部读者</a></li>
                        <li class="divider"></li>
                        <li><a href="reader_add.html">增加读者</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        借还管理
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="lendlist.html">借还日志</a></li>
                        <li class="divider"></li>
                        <li><a href="lend_and_return.html">读者借还书</a></li>
                    </ul>
                </li>
                <li>
                    <a href="admin_repasswd.html">
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
    <div class="panel panel-default">
        <div class="panel-heading" style="background-color: #fff">
            <h3 class="panel-title">图书馆前台-读者借还书</h3>
        </div>
        <div class="panel-body">
            <form action="lend_and_return_do.html" method="get">
                <div class="form-group">
                    <label for="bookId">图书编号</label>
                    <input type="text" class="form-control" id="bookId" name="bookId" placeholder="请输入图书编号">
                </div>
                <div class="form-group">
                    <label for="readerId">读者编号</label>
                    <input type="text" class="form-control" id="readerId" name="readerId"
                           placeholder="留空则为还书操作">
                </div>
                <div style="margin:10px;color: red;"><c:if test="${!empty error}">${error}</c:if></div>
                <div style="margin: 10px;color: green;"><c:if test="${!empty succ}">${succ}</c:if></div>
                <button id="loginButton" type="submit" class="btn btn-primary  btn-block">确认</button>
            </form>
        </div>
    </div>
</div>
<c:if test="${!empty login}">
    <script>
        $(function () {
            $("#myModal").modal({
                show: true
            })
        })
    </script>
</c:if>
</body>
</html>
