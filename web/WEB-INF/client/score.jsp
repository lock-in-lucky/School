<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path=request.getContextPath();
%>
<html>
<head>
     <title>成绩管理</title>
    <link rel="shortcut icon" href="https://cdn4.iconfinder.com/data/icons/education-24/63/graduation-512.png" type="image/x-icon">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <link rel="stylesheet" href="<%=path%>/static/css/bootstrap.css">
    <%--    <link rel="stylesheet" href="bootstrap4/css/bootstrap.css">--%>

    <script src="<%=path%>/static/js/jquery-3.6.0.js"></script>
    <%--    <script src="bootstrap4/js/jquery-3.6.0.js"></script>--%>

    <script src="<%=path%>/static/js/bootstrap.js"></script>
    <%--    <script src="bootstrap4/js/bootstrap.js"></script>--%>

    <style>
        .btn:focus,
        .btn:active:focus,
        .btn.active:focus,
        .btn.focus,
        .btn:active.focus,
        .btn.active.focus {
            outline: none;
        }
        .arrow {
            width: 0;
            height: 0;
            border-right: 0.4rem solid transparent;
            border-top: 0.4rem solid white;
            border-left: 0.4rem solid transparent;
            border-bottom: 0.4rem solid transparent;
            position: relative;
            top: 1rem;
        }
        .outarrow {
            position: absolute;
            width: 0;
        }
        .inarrow {
            display: none;
            position: relative;
            width: 80px;
            background: #fff;
            border-radius: 3px;
            top: 0.1rem;
            right: 4rem;
        }
        .inarrow a {
            font-size: 0.95rem;
            display: block;
            text-align: center;
            color: gray;
            text-decoration: none;
        }
        .navbar-brand1:hover .inarrow {
            display: block;
        }
        .navbar-brand1 {
            cursor: default;

        }
        .inarrow a:hover {
            color: #fff;
            background-color: #17a2b8;
            border-radius: 3px;
        }
    </style>

</head>
<body class="px-4" style="margin-top: 62px;">
<nav class="navbar navbar-expand-md bg-primary fixed-top rounded  shadow-lg justify-content-between" style="margin:0 24px;height: 52px;">
    <a class="navbar-brand  text-white" href="#">学生成绩管理</a>

    <form class="form-inline  my-lg-0">
        <span class="border-0  my-sm-0 text-white mr-2 py-1 navbar-brand1">欢迎您
          <span class="outarrow">
            <span class="arrow"></span>
            <div class="inarrow">
              <a href="#">个人中心</a>
              <a href="#">注销</a>
            </div>
          </span>
        </span>
    </form>
</nav>
<form action="${pageContext.request.contextPath}/client/t/addAllScore" method="post" id="form1" class="clear-both">
    <table class="table table-striped">
        <thead>
        <tr>
            <th scope="col">姓名</th>
            <th scope="col">学号</th>
            <th scope="col">性别</th>
            <th scope="col">班级</th>
            <th scope="col">课程号</th>
            <th scope="col">课程名</th>
            <th scope="col" class="w-25">成绩</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${courseByCourseId.students}" var="student">
            <input type="hidden" name="courseId" value="${courseByCourseId.courseId}">
            <input type="hidden" name="studentId" value="${student.studentId}">
            <tr>
                <th scope="row">${student.studentName}</th>
                <td>${student.studentId}</td>
                <td>${student.studentGender}</td>
                <td>${student.studentClassId}</td>
                <td>${courseByCourseId.courseId}</td>
                <td>${courseByCourseId.courseName}</td>
                <td><input type="number" class="form-control" name="score" id="text1" required/></td>
            </tr>
        </c:forEach>

        </tbody>
    </table>
    <div class="float-right">
        <button class="btn btn-secondary" type="reset">重置</button>
        <button class="btn btn-primary" form="form1" type="submit">提交</button>
    </div>
</form>
</body>
</html>