
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
        p{
            text-align: center;
            font-size: 20px;
            font-family: "方正舒体";
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
        <h5 class="text-center mt-4">生 科 风 景 ，芷 待 君 来</h5>
        <div class="small text-center">2023-04-18 </div>
        <div class="mx-5" style="text-indent: 2rem;">
            <br>
            <br>
            <p>丹霞拂熏醉看客，一片碧洋芙蕖和。 </p>

            <p> 髫龀戏游惊鱼乐，莲湖清芳轻曳荷！</p>

            <p> 野芷湖的风光依旧那么的优美！</p>

            <p>  迎着东方的朝霞，</p>

           <p> 湖北生物科技职业学院迎来了独属于她的清晨！</p>

            <div class="text-center my-4"><img src="<%=path%>/static/img/news08.jpg" alt="" style="width: 80%;
    height: 450px;"></div>

            <p>  应是绿意晓声浓，几度相思在心中。</p>

            <p>    举杯诚邀清辉月，何时诉达我东风，</p>

            <div class="text-center my-4"><img src="<%=path%>/static/img/news09.jpg" alt="" style="width: 80%;
    height: 450px;"></div>

            <br/>
            <a value="返回" href="javascript:history.back()" >返回</a>
            <br/>
            <br/>
        </div>
    </div>
</div>
</body>
</html>