<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String path=request.getContextPath();
%>
<html>
<head>

  <title>社团详情</title>
  <link rel="shortcut icon" href="https://cdn4.iconfinder.com/data/icons/education-24/63/graduation-512.png" type="image/x-icon">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="<%=path%>/static/css/bootstrap.min.css">
<%--  <link rel="stylesheet" href="bootstrap-4.6.0/dist/css/bootstrap.min.css">--%>
<%--  <script src="https://code.jquery.com/jquery.js"></script>--%>
  <link rel="stylesheet" href="<%=path%>/static/js/bootstrap.js">
<%--  <script src="bootstrap-4.6.0/dist/js/bootstrap.js"></script>--%>
</head>
<style>
  a:hover{
    text-decoration: none;
  }
  .list:hover{
    box-shadow:0px 0px  10px 5px rgb(224, 224, 224);
  }
</style>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-primary mb-2">
  <a class="navbar-brand mr-auto text-white" href="#">首页</a>
  <form class="form-inline my-2 my-lg-0">
    <span class="border-0 my-2 my-sm-0 text-white mr-2">欢迎您，admin</span>
    <button class="btn btn-outline-secondary border-0 my-2 my-sm-0 text-white" type="submit"><a
            href="./login/login.html" class="text-white" style="text-decoration: none;">退出</a></button>
  </form>
</nav>
<div class="container ">
  <nav aria-label="breadcrumb">
    <ol class="breadcrumb">
      您的位置：
      <li class="breadcrumb-item"><a href="<%=path%>/index">首页</a></li>
      <li class="breadcrumb-item"><a href="#">讲座信息</a></li>
    </ol>
  </nav>
  <div class="row">
    <div class=" col-sm-10 col-md-9 shadow-lg">
      <div class=" ">
        <div class="h4 text-center">${lectureById.lectureTheme}</div>
      </div>
      <div class="">
        <div class="my-2"><img style="width: 65%; display: block; margin: auto;" src="<%=path%>/static/img/1.jpg" /></div>
        <div class="media-body mx-5 " >
          <h2 style="display: none">1</h2>
          <p class="<%--text-break--%>" style="white-space: pre-wrap;">
            讲座内容：${lectureById.lectureContent}
          </p>
          <p  style="white-space: pre-wrap;font-weight: bolder" class="text-right">
            讲座单位：${lectureById.lectureUnit}
          </p><br>
          <p  style="white-space: pre-wrap;font-weight: bolder" class="text-right">
            讲座时间：${lectureById.lectureTime}
          </p><br>
          <p  style="white-space: pre-wrap;font-weight: bolder" class="text-right">
            讲座地址：${lectureById.lectureAddress}
          </p>
        </div>
      </div>
    </div>
    <div class="col-sm-10 col-md-3 ">
      <div class="list-group my-5">
        <div class="list-group-item list-group-item-action active text-center h5">活动推荐</div>
        <c:forEach items="${lectureByTime}" var="lecture">
            <a class="list-group-item list-group-item-action my-2 list" href="<%=path%>/client/lecture/${lecture.id}" style="cursor:pointer;">
              活动主题:${lecture.lectureTheme}<br>
              活动时间:${lecture.lectureTime}<br>
              活动地点:${lecture.lectureAddress}
            </a>
        </c:forEach>
      </div>
    </div>
  </div>

</div>
</div>
</body>
</html>
