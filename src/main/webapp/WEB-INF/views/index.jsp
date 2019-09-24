<%--
  Created by IntelliJ IDEA.
  User: 13925
  Date: 2019-09-23
  Time: 15:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Index</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" href="/static/css/bootstrap.min.css">
    <link rel="stylesheet" href="/static/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="/static/css/custom.css">
    <script src="/static/js/jquery-3.4.1.min.js"></script>
    <script src="/static/js/bootstrap.min.js" type="application/javascript"></script>
</head>
<body>
<div class="container-fluid main">
    <div class="row">
        <div class="col-lg-8 col-md-12 col-sm-12 col-xs-12">
            <span class="glyphicon glyphicon-list custom-index-list" aria-hidden="true">列表</span>
            <hr>
            <table class="table table-striped">
                <tr>
                    <td>studentId</td>
                    <td>studentName</td>
                </tr>
                <c:if test="${empty student}">
                    <tr>
                        <td></td>
                        <td>暂无数据</td>
                    </tr>
                </c:if>
                <c:forEach items="${student}" var="student">
                    <tr>
                        <td>${student.studentId}</td>
                        <td>${student.studentName}</td>
                    </tr>
                </c:forEach>
            </table>

        </div>
        <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
            <!-- Single button -->
            <div class="btn-group">
                <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown"
                        aria-haspopup="true" aria-expanded="false">
                    跳转连接 <span class="caret"></span>
                </button>
                <ul class="dropdown-menu">
                    <li><a href="/hello">HelloWord</a></li>
                    <li role="separator" class="divider"></li>
                    <li><a href="/landing">AmazeUI首页</a></li>
                </ul>
            </div>

            <!-- Contextual button for informational alert messages -->
            <div>
                <button type="button" class="btn btn-info">
                    <a href="/getStudentAll">获得所有学生信息</a>
                </button>
            </div>

            <div>
                <form class="form-inline" action="/getStudentById" method="get">
                    <div class="form-group">
                        <label class="sr-only" for="studentId">ID</label>
                        <div class="input-group">
                            <div class="input-group-addon">学生ID:</div>
                            <input type="text" class="form-control" id="studentId" name="id" placeholder="ID">
                        </div>
                    </div>
                    <button type="submit" class="btn btn-info">学生查询</button>
                </form>
            </div>
            <div>
                <form class="form-inline" action="/getStudentByName" method="get">
                    <div class="form-group">
                        <label class="sr-only" for="studentName">Name</label>
                        <div class="input-group">
                            <div class="input-group-addon">学生Name:</div>
                            <input type="text" class="form-control" id="studentName" name="name" placeholder="ID">
                        </div>
                    </div>
                    <button type="submit" class="btn btn-info">学生查询</button>
                </form>
            </div>
        </div>

    </div>

</div>
</body>
</html>