
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
        <h5 class="text-center mt-4">魅兰生科 书香校园</h5>
        <div class="small text-center">2023-04-27  来源：图书馆  </div>
        <div class="mx-5" style="text-indent: 2rem;">
            <p>
                四月的生科，春意盎然，书香四溢。2023年4月26日，由图书馆组织举办的第28个世界读书日系列活动在东苑小广场拉开序幕。当天集中开展了图书荐购、时光驿站、诗词小竞赛等三个线下活动。活动现场青春洋溢，气氛热烈，人气爆满，学生参与量高达上千人次。
            </p>
            <div class="text-center my-4"><img src="<%=path%>/static/img/news02.jpg" alt=""></div>
            <p>
                参与活动的学生们纷纷表示：读书活动很有意义，让所学知识有了用武之地，更深切感受到阅读之魅力、读书之乐趣；活动形式新颖、内容丰富，让“书香”有效沁入生科学子内心；也有助于引导大家多读书、读好书、善读书的阅读习惯。
            </p>
            <p>
                第28个读书日系列活动主题为“书香.生科”，共10个子活动，目前 “传承·经典”主题征文比赛、“魅兰书香”主题摄影比赛、“知海寻宝”线上知识竞赛、信息素养挑战赛、“云上雅游|探悦之旅”读书打卡、共享全民阅读等活动都在陆续开展中。图书馆将组织专家对活动中收到作品进行遴选评奖，获奖优秀作品推荐参加湖北省和全国比赛。
            </p>
        </div>
        <div class="my-5 mx-5">
            <span class="mr-4">摄影/撰稿：司苗苗</span>
            <span>江 胜</span>
            <br/>
            <a value="返回" href="javascript:history.back()" >返回</a>
            <br/>
        </div>
    </div>
</div>
</body>
</html>