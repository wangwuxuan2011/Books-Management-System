<%@ page import="com.book.domain.BookClassCount" %><%--
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
    <title>管理主页</title>
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

        #newsa {
            width: 500px;
            height: 200px;
            position: fixed;
            left: 35%;
            top: 30%;
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
            height: 350px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 0 5px #ccc;
            background-color: #fff;
        }

        .about {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100%;
            font-size: 2em;
        }

        .about > * {
            margin: 10px;
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
    <section class="about">
        <div>您好！欢迎使用图书管理系统！</div>
        <div>请在结束工作后及时退出！</div>
        <div class="btn-group" role="group" aria-label="...">
            <button type="button" class="btn btn-success" onclick="lend_and_return()">读者借还书</button>
            <button type="button" class="btn btn-danger" onclick="logout()">退出账号</button>
        </div>
    </section>
    <section>
        <h4><a href="allreaders.html">活跃读者</a></h4>
        <div id="allreaders" style="width: 100%;height:100%;"></div>
    </section>
    <section>
        <h4><a href="allbooks.html">藏书比例</a></h4>
        <div id="allbooks" style="width: 100%;height:100%;"></div>
    </section>
    <section>
        <h4><a href="lendlist.html">借还书次</a></h4>
        <div id="lendlist" style="width: 100%;height:100%;"></div>
    </section>
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
<script>
    function lend_and_return() {
        window.location.href = "lend_and_return.html";
    }

    function logout() {
        window.location.href = "logout.html";
    }
</script>
<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var allreaders = echarts.init(document.getElementById('allreaders'));
    var allbooks = echarts.init(document.getElementById('allbooks'));
    var lendlist = echarts.init(document.getElementById('lendlist'));

    // 指定图表的配置项和数据
    allreaders_option = {
        xAxis: {
            type: 'category',
            data: ['周一', '周二', '周三', '周四', '周五', '周六', '周日']
        },
        yAxis: {
            type: 'value'
        },
        series: [
            {
                data: [10, 15, 13, 12, 10, 15, 13],
                type: 'line',
                label: {
                    show: true,
                    position: 'bottom',
                    textStyle: {
                        fontSize: 20
                    }
                }
            }
        ]
    };
    allbooks_option = {
        tooltip: {
            trigger: 'item', //数据项图形触发
            formatter: '{b}: {c} ({d}%)' // 展示格式
        },
        series: [
            {
                type: 'pie',
                radius: '55%',
                clockwise: false,
                label: {
                    normal: {
                        show: true,
                        formatter: '{b} :\n {c} ({d}%)'
                    }
                },
                data: [
                    <c:forEach items="${classCount}" var="countItem">
                    {
                        value: ${countItem.count},
                        name: '${countItem.name}'
                    },
                    </c:forEach>
                ],
                roseType: 'area'
            }
        ]
    };
    lendlist_option = {
        xAxis: {
            data: ['周一', '周二', '周三', '周四', '周五', '周六', '周日']
        },
        yAxis: {},
        legend: {
            data: ['借书', '还书']
        },
        tooltip: {
            trigger: 'axis'
        },
        series: [
            {
                data: [9, 12, 3, 13, 25, 32, 49],
                type: 'line',
                name: '借书',
            },
            {
                data: [41, 32, 16, 22, 9, 24, 31],
                type: 'line',
                name: '还书',
            }
        ]
    };
    allreaders.setOption(allreaders_option);
    allbooks.setOption(allbooks_option);
    lendlist.setOption(lendlist_option);
</script>
</body>
</html>
