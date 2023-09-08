<%--
  Created by IntelliJ IDEA.
  User: 虞宇明
  Date: 2021/12/23
  Time: 16:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%
    String path=request.getContextPath();
%>
<head>
    <title>主页</title>
    <link rel="shortcut icon" href="https://cdn4.iconfinder.com/data/icons/education-24/63/graduation-512.png" type="image/x-icon">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="<%=path%>/static/css/bootstrap.css">
    <%--    <link rel="stylesheet" href="bootstrap-4.2.1-dist/css/bootstrap.css">--%>
    <script src="<%=path%>/static/js/jquery-3.3.1.slim.js"></script>
    <%--    <script src="js/jquery-3.3.1.slim.js"></script>--%>
    <script src="<%=path%>/static/js/bootstrap.bundle.js"></script>
    <script src="<%=path%>/static/js/bootstrap.min.js"></script>
    <!--css文件-->
    <link rel="stylesheet" href="<%=path%>/static/mycss/style.css">
    <script src="<%=path%>/static/js/index.js"></script>
<%--    <!--字体图标文件-->--%>
<%--    <link rel="stylesheet" href="<%=path%>/static/font-awesome-4.7.0/css/font-awesome.css">--%>
<%--    <link rel="stylesheet" href="./css/bootstrap.css" />--%>
<%--    <script src="./js/jquery-3.6.0.js"></script>--%>
<%--    <script src="./js/bootstrap.js"></script>--%>


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
<body>
<div class="container">
    <nav class="navbar navbar-expand-md bg-primary fixed-top rounded  shadow-lg justify-content-between" style="margin:0 24px;height: 52px;">
        <a class="navbar-brand  text-white" href="#">首页</a>

        <form class="form-inline  my-lg-0">
      <span class="border-0  my-sm-0 text-white mr-2 py-1 navbar-brand1"
      >欢迎您，admin
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
    <div style="margin-top: 80px;" class="border border-1 shadow-lg">
        <h5 class="text-center mt-4">学校学习贯彻习近平新时代中国特色社会主义思想主题教育专题读书班开班</h5>
        <div class="small text-center">保卫处浏览次数：1485 2023-05-09  来源：党政办公室 </div>
        <div class="mx-5" style="text-indent: 2rem;">
            <p>
                5月9日，校党委学习贯彻习近平新时代中国特色社会主义思想主题教育专题读书班开班。校党委副书记、纪委书记潘彦主持开班式并讲话。校党委委员、各部门负责人、副科级及以上干部参加开班式。
            </p>
            <div class="text-center my-4"><img src="<%=path%>/static/img/news01.jpg" alt=""></div>
            <p>
                潘彦强调，学校党员干部要提高政治站位，切实把思想和行动统一到党中央部署、省委要求上来；要强化理论武装，推动学习贯彻习近平新时代中国特色社会主义思想走深走实；要严明纪律要求，确保学有所思学有所获学有所进。
            </p>
            <p>
                开班式后，开展了读书班第一次学习，省委讲师团成员闫帅老师作了题为《马克思主义中国化时代化新的飞跃》的专题辅导报告。
            </p>
        </div>
        <div class="my-5 mx-5">
            <span class="mr-4">编辑：文晓韬</span>
            <span>审核：文晓韬</span>
            <br/>
            <a value="返回" href="javascript:history.back()" >返回</a>
            <br/>
        </div>
    </div>
</div>
</body>
</html>