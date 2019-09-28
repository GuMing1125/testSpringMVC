<!doctype html>
<html class="no-js">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Amaze UI Admin user Examples</title>
    <meta name="description" content="这是一个 user 页面">
    <meta name="keywords" content="user">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link rel="icon" type="image/png" href="static/assets/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="static/assets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI"/>
    <link rel="stylesheet" href="static/css/bootstrap.min.css">
    <link rel="stylesheet" href="static/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="static/css/custom.css">
    <link rel="stylesheet" href="static/assets/css/amazeui.min.css"/>
    <link rel="stylesheet" href="static/assets/css/admin.css">
    <script src="static/js/jquery-3.4.1.min.js"></script>
    <script src="static/js/bootstrap.min.js" type="application/javascript"></script>
</head>
<body>
<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，Amaze UI 暂不支持。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
    以获得更好的体验！</p>
<![endif]-->

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
    <!-- sidebar start -->
    <div class="admin-sidebar">
        <ul class="am-list admin-sidebar-list">
            <li><a href="admin-index.html"><span class="am-icon-home"></span> 首页</a></li>
            <li class="admin-parent">
                <a class="am-cf" data-am-collapse="{target: '#collapse-nav'}"><span class="am-icon-file"></span> 页面模块
                    <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
                <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav">
                    <li><a href="admin-infomation.jsp" class="am-cf"><span class="am-icon-check"></span> 个人资料<span
                            class="am-icon-star am-fr am-margin-right admin-icon-yellow"></span></a></li>
                    <li><a href="admin-help.html"><span class="am-icon-puzzle-piece"></span> 帮助页</a></li>
                    <li><a href="admin-gallery.html"><span class="am-icon-th"></span> 相册页面<span
                            class="am-badge am-badge-secondary am-margin-right am-fr">24</span></a></li>
                    <li><a href="admin-log.html"><span class="am-icon-calendar"></span> 系统日志</a></li>
                    <li><a href="admin-404.html"><span class="am-icon-bug"></span> 404</a></li>
                </ul>
            </li>
            <li><a href="admin-table.html"><span class="am-icon-table"></span> 表格</a></li>
            <li><a href="admin-form.html"><span class="am-icon-pencil-square-o"></span> 表单</a></li>
            <li><a href="#"><span class="am-icon-sign-out"></span> 注销</a></li>
        </ul>

        <div class="am-panel am-panel-default admin-sidebar-panel">
            <div class="am-panel-bd">
                <p><span class="am-icon-bookmark"></span> 公告</p>
                <p>时光静好，与君语；细水流年，与君同。—— Amaze UI</p>
            </div>
        </div>

        <div class="am-panel am-panel-default admin-sidebar-panel">
            <div class="am-panel-bd">
                <p><span class="am-icon-tag"></span> wiki</p>
                <p>Welcome to the Amaze UI wiki!</p>
            </div>
        </div>
    </div>
    <!-- sidebar end -->

    <!-- content start -->
    <div class="admin-content">
        <div class="am-cf am-padding">
            <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">个人资料</strong> / <small>Personal
                information</small></div>
        </div>

        <hr/>

        <div class="am-g">

            <div class="col-sm-12 col-md-4 col-md-push-8">
                <div class="am-panel am-panel-default">
                    <div class="am-panel-bd">
                        <div class="am-g">
                            <div class="col-md-4">
                                <img class="am-img-circle am-img-thumbnail"
                                     src="http://amui.qiniudn.com/bw-2014-06-19.jpg?imageView/1/w/1000/h/1000/q/80"
                                     alt=""/>
                            </div>
                            <div class="col-md-8">
                                <p>你可以使用<a href="#">gravatar.com</a>提供的头像或者使用本地上传头像。 </p>
                                <form class="am-form">
                                    <div class="am-form-group">
                                        <input type="file" id="user-pic">
                                        <p class="am-form-help">请选择要上传的文件...</p>
                                        <button type="button" class="am-btn am-btn-primary am-btn-xs">保存</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-sm-12 col-md-8 col-md-pull-4">
                <form class="am-form am-form-horizontal" action="/createOrUpdateUser">
                    <div class="am-form-group">
                        <label for="user-name" class="col-sm-3 am-form-label">姓名 / Name</label>
                        <div class="col-sm-9">
                            <input type="password" id="user-name" placeholder="姓名 / Name">
                            <small>输入你的名字，让我们记住你。</small>
                        </div>
                    </div>
                    <div class="am-form-group">
                        <label for="user-email" class="col-sm-3 am-form-label">电子邮件 / Email</label>
                        <div class="col-sm-9">
                            <input type="email" id="user-email" placeholder="输入你的电子邮件 / Email">
                            <small>邮箱你懂得...</small>
                        </div>
                    </div>
                    <div class="am-form-group">
                        <label for="user-phone" class="col-sm-3 am-form-label">电话 / Telephone</label>
                        <div class="col-sm-9">
                            <input type="email" id="user-phone" placeholder="输入你的电话号码 / Telephone">
                        </div>
                    </div>
                    <div class="am-form-group">
                        <label for="user-QQ" class="col-sm-3 am-form-label">QQ</label>
                        <div class="col-sm-9">
                            <input type="email" id="user-QQ" placeholder="输入你的QQ号码">
                        </div>
                    </div>
                    <div class="am-form-group">
                        <label for="user-intro" class="col-sm-3 am-form-label">简介 / Intro</label>
                        <div class="col-sm-9">
                            <textarea class="" rows="5" id="user-intro" placeholder="输入个人简介"></textarea>
                            <small>250字以内写出你的一生...</small>
                        </div>
                    </div>
                    <div class="am-form-group">
                        <div class="col-sm-9 col-sm-push-3">
                            <button type="button" class="am-btn am-btn-primary">保存修改</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- content end -->

</div>

<footer>
    <hr>
    <p class="am-padding-left">© 2014 AllMobilize, Inc. Licensed under MIT license.</p>
</footer>

<script src="assets/js/zepto.min.js"></script>
<script src="assets/js/amazeui.min.js"></script>
<script src="assets/js/app.js"></script>
</body>
</html>
