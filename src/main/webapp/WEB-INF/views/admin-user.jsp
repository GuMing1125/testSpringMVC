<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Amaze UI Admin table Examples</title>
    <meta name="description" content="这是一个 table 页面">
    <meta name="keywords" content="table">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link rel="icon" type="image/png" href="static/assets/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="static/assets/i/app-icon72x72@2x.png">
    <link rel="stylesheet" href="static/assets/css/amazeui.min.css"/>
    <link rel="stylesheet" href="static/assets/css/admin.css">
    <link rel="stylesheet" href="static/css/bootstrap.min.css">
    <link rel="stylesheet" href="static/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="static/css/custom.css">
    <script src="static/js/jquery-3.4.1.min.js"></script>
    <script src="static/js/bootstrap.min.js" type="application/javascript"></script>
    <meta name="apple-mobile-web-app-title" content="Amaze UI"/>
</head>
<body>
<header class="am-topbar admin-header">
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                        data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">后台管理模板</span>
                </button>
                <a class="navbar-brand" href="/">后台管理模板</a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <c:if test="${sessionScope.user!=null}">
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                               aria-haspopup="true"
                               aria-expanded="false">
                                <c:set var="name" value="${sessionScope.user.getUserName()}"/>
                                <span>管理员${name}</span>
                                <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Unknown</a></li>
                                <li><a href="/logout">注销</a></li>
                            </ul>
                        </li>
                    </c:if>
                </ul>
            </div>
        </div>
    </nav>
</header>

<div class="am-cf admin-main">
    <div class="admin-sidebar">
        <ul class="am-list admin-sidebar-list">
            <li class="admin-parent">
                <a class="am-cf" data-am-collapse="{target: '#collapse-student'}"><span class="am-icon-file"></span>
                    学生管理
                    <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
                <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-student">
                    <li><a href="/adminStudent"><span class="am-icon-table"></span> 表格<span
                            class="am-icon-star am-fr am-margin-right admin-icon-yellow"></span></a></li>
                </ul>
            </li>
            <li class="admin-parent">
                <a class="am-cf" data-am-collapse="{target: '#collapse-user'}"><span class="am-icon-file"></span> 用户管理
                    <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
                <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-user">
                    <li><a href="/adminUser"><span class="am-icon-table"></span> 表格<span
                            class="am-icon-star am-fr am-margin-right admin-icon-yellow"></span></a></li>
                </ul>
            </li>
            <li><a href="#"><span class="am-icon-sign-out"></span> 注销
            <li><a href="admin-user.jsp"><span class="am-icon-table"></span> 表格<span
                    class="am-icon-star am-fr am-margin-right admin-icon-yellow"></span></a></li>
            </a></li>
        </ul>
        <div class="am-panel am-panel-default admin-sidebar-panel">
            <div class="am-panel-bd">
                <p><span class="am-icon-bookmark"></span> 公告</p>
                <p>时光静好，与君语；细水流年，与君同。—— Amaze UI</p>
            </div>
        </div>
    </div>
    <div class="admin-content">
        <div class="am-cf am-padding">
            <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">用户表</strong> / <small>User</small></div>
        </div>
        <!--搜索-->
        <div class="am-g">
            <div class="col-md-6 am-cf"></div>
            <div class="col-md-3 am-cf">
                <div class="am-fr">
                    <div class="am-input-group am-input-group-sm">
                        <input type="text" class="am-form-field">
                        <span class="am-input-group-btn">
                  <button class="am-btn am-btn-default" type="button">搜索</button>
                </span>
                    </div>
                </div>
            </div>
        </div>
        <!--表格-->
        <div class="am-g">
            <div class="col-sm-12">
                <form class="am-form">
                    <table class="am-table am-table-striped am-table-hover table-main">
                        <thead>
                        <tr>
                            <th class="table-id">ID</th>
                            <th class="table-title">标题</th>
                            <th class="table-type">类别</th>
                            <th class="table-author">作者</th>
                            <th class="table-date">修改日期</th>
                            <th class="table-set">操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>1</td>
                            <td><a href="#">Business management</a></td>
                            <td>default</td>
                            <td>测试1号</td>
                            <td>2014年9月4日 7:28:47</td>
                            <td>
                                <div class="am-btn-toolbar">
                                    <div class="am-btn-group am-btn-group-xs">
                                        <button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span
                                                class="am-icon-pencil-square-o"></span> 编辑
                                        </button>
                                        <button class="am-btn am-btn-default am-btn-xs"><span
                                                class="am-icon-copy"></span> 复制
                                        </button>
                                        <button class="am-btn am-btn-default am-btn-xs am-text-danger"><span
                                                class="am-icon-trash-o"></span> 删除
                                        </button>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <div class="am-cf">
                        共 15 条记录
                        <div class="am-fr">
                            <ul class="am-pagination">
                                <li class="am-disabled"><a href="#">«</a></li>
                                <li class="am-active"><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>
                                <li><a href="#">»</a></li>
                            </ul>
                        </div>
                    </div>
                </form>
            </div>

        </div>
    </div>
</div>

<footer>
    <hr>
    <p class="am-padding-left">© 2014 AllMobilize, Inc. Licensed under MIT license.</p>
</footer>

<script src="static/assets/js/zepto.min.js"></script>
<script src="static/assets/js/amazeui.min.js"></script>
<script src="static/assets/js/app.js"></script>
</body>
</html>
