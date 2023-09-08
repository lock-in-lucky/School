
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
        <h5 class="text-center mt-4">体能挑战争奋进，青春竞美写华章</h5>
        <div class="small text-center">2023-04-21 </div>
        <div class="mx-5" style="text-indent: 2rem;">
            <p>
                4月21日下午，学校2023年春季综合运动会圆满闭幕。闭幕式由校党委委员、副校长龙翔主持，校党委委员、副校长周元才致闭幕词。周元才充分赞扬和肯定了这两天运动员们奋勇拼搏的激情和毅力，并对烈日下坚守奋战的裁判员和工作人员表达了诚挚的慰问。周元才指出，本次运动会是学校体育建设成果的充分展示，更是响应二十大号召，将二十大学习融入到校园体育文化建设之中的新征程。
            </p>
            <div class="text-center my-4"><img src="<%=path%>/static/img/news06.jpg" alt="" style="width: 80%;
    height: 450px;"></div>
            <p>
                这两天天公作美，野芷湖畔云淡风轻，运动员们热情激越、青春飞扬，书写了一个个新篇章。经过两天的激烈角逐，最终，信息传媒学院荣获2023年春季综合运动会团体总分第一名，生物工程学院荣获团体总分第二名，动物（食品）科技学院荣获团体总分第三名；园艺园林学院荣获体育道德风尚奖，经济管理学院荣获优秀组织奖；生物工程学院21级生物制药技术1班、经济管理学院21级大数据会计3班、园艺园林学院22级园艺技术1班、动物(食品)科技学院22级食品检验与检测4班、信息传媒学院22级计算机应用技术3班分别荣获2023春季综合运动会优秀班级。
            </p>
            <p>
                五育融合，体育为基。学校以精彩纷呈的体育活动和竞赛为引领，丰富了学校文化生活，让学生在运动中磨练心智、完善人格，为学生终身发展、个性发展奠基铺路，展现了芷韵生科人积极向上、团结奋进的青春风采！
            </p>
            <br/>
            <a value="返回" href="javascript:history.back()" >返回</a>
            <br/>
            <br/>
        </div>
    </div>
</div>
</body>
</html>