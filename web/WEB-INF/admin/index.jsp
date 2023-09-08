<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <!-- 引入样式文件和动态控制 -->

    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

<%--    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->--%>

    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>

<%--    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->--%>

    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%--    <link href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" rel="stylesheet">--%>
<%--    <script src="${pageContext.request.contextPath}/static/js/jquery-3.6.0.js"></script>--%>
<%--    <script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>--%>
<%--    <link href="static/css/" rel="stylesheet" />--%>
    <title>后台管理界面二</title>
    <link rel="shortcut icon" href="https://cdn4.iconfinder.com/data/icons/education-24/63/graduation-512.png" type="image/x-icon">
</head>
<body>
<body>
<nav class="navbar navbar-inverse" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target="#example-navbar-collapse">
                <span class="sr-only">切换导航</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">
                <img src="${pageContext.request.contextPath}/static/img/img.png" height="100%" />
            </a>
        </div>
        <div class="collapse navbar-collapse" id="example-navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a class="icon-bar" href="#">网站设置</a></li>
                <li><a href="#">分类管理</a></li>
                <li><a href="#">城市管理</a></li>
                <li><a href="#">商品管理</a></li>
                <li><a href="#">订单管理</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a>欢迎您</a></li>
                <li><a href="#">安全退出</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container-fluid accordion" id="accordionExample">
    <div class="row">
        <div class="col-sm-2">
            <!-- <a href="#" class="list-group-item active" data-toggle="collapse" data-target="#collapseOne"
                id="headingOne">
                <span class="glyphicon glyphicon-home"></span>商品管理
            </a> -->
            <button class="list-group-item active btn btn-link btn-block text-left" type="button"
                    data-toggle="collapse" data-target="#collapseOne" id="headingOne">
                <span class="glyphicon glyphicon-home"></span>商品管理
            </button>
            <!-- <div class="card-header" id="headingOne">
                    <button class="btn btn-link btn-block text-left" type="button" data-toggle="collapse"
                        data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                        Collapsible Group Item #1
                    </button>
            </div> -->

            <button class="list-group-item active btn btn-link btn-block text-left"
                type="button"
                    onclick="window.location.href='${pageContext.request.contextPath}/admin/page'"
                    data-toggle="collapse" data-target="<%--#collapseTwo--%>">
                <span class="glyphicon glyphicon-search" aria-hidden="true"></span>教师管理
            </button>
        </div>


        <!--左边菜单栏-->
        <div class="col-sm-10">
            <ol class="breadcrumb">
                <li class="active">菜单</li>
                <li class="active">vip客户信息</li>
            </ol>
            <div id="collapseTwo" class="collapse show" aria-labelledby="headingTwo"  data-parent="#accordionExample">
                <div class="panel panel-default">
                    <div class="panel-heading">搜索</div>
                    <div class="panel-body">
                        <form role="form" class="form-inline"
                              action="${pageContext.request.contextPath}/admin/queryFor">
                            <div class="form-group">
                                <label for="name">姓名</label>
                                <input type="text" class="form-control" id="name" name="name" placeholder="请输入名称" />
                            </div>
                            <div class="form-group">
                                <label for="name">院系</label>
                                <select class="form-control" name="dept">
                                    <option value="软件学院">软件学院</option>
                                    <option value="信工学院">信工学院</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-default">开始搜索</button>
                            </div>
                            <div class="form-group pull-right">
                                <button type="submit" class="btn btn-default">添加</button>
                            </div>
                        </form>
                    </div>
                </div>

                <div class="table-responsive">
                    <table class="table table-striped">
                        <thead>
                        <tr>
                            <th>教师工号</th>
                            <th>教师姓名</th>
                            <th>电话号码</th>
                            <th>电子邮箱</th>
                            <th>院系</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${pageTeachers}" var="teacher">
                            <tr>
                                <td>${teacher.teacherId}</td>
                                <td>${teacher.teacherName}</td>
                                <td>${teacher.teacherPhone}</td>
                                <td>${teacher.teacherEmail}</td>
                                <td>${teacher.teacherDept}</td>
                                <td>
                                    <div class="btn-group">
                                        <a href="" class="btn btn-default">修改</a>
                                        <a href="${pageContext.request.contextPath}/admin/delete/${teacher.teacherId}"
                                           class="btn btn-danger">删除</a>
                                    </div>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
                <ul class="pagination" style="float: right">
                    <li><a href="#">&laquo;</a></li>
                    <li class="active"><a href="#">1</a></li>
                    <li class="disabled"><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li><a href="#">&raquo;</a></li>
                </ul>
            </div>
        </div>

    </div>
</div>



<!-- 底部页脚部分 -->

</body>
</body>
</html>