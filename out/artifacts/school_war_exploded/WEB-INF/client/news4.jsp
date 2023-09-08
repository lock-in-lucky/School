
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
        <h5 class="text-center mt-4">技能成就梦想，匠心点亮人生</h5>
        <div class="small text-center">2023-04-24  </div>
        <div class="mx-5" style="text-indent: 2rem;">
            <p>
                4月17至19日，由我校市场营销专业学生组成的代表队，在湖北省教育厅主办、湖北省教育科学研究院承办的2022年“中银杯”湖北省职业院校技能大赛高职组市场营销技能赛项中荣获推荐队三等奖和抽测队三等奖。
            </p>
            <div class="text-center my-4"><img src="<%=path%>/static/img/news04.jpg" alt=""></div>
            <p>
                本次大赛在长江职业学院举办，来自湖北省32所高职院校的61支队伍参加了本次大赛。我校市场营销专业参赛队由经济管理学院关迅、胡晶、熊瑛、汪丽霞等4位指导教师带领胡璇、曹玉叶、胡超、袁丽群、刘思雨、夏巧、马宇露和杨磊等8位同学组成两支队伍，分别参加了推荐队和抽测队的比赛。赛场上，他们凝神聚力，冷静应对，展现出高超的技术技能素养和专业自信，经过激烈角逐，两支队伍不负众望，均获得三等奖的好成绩。
            </p>
            <p>
                本次获奖体现了我校市场营销专业以职业需求为导向，以实践能力培养为重点，以产教融合为途径，运用正确的备赛方法，将训练融入日常教学，推进“岗课赛证”综合育人的建设成果，展示了我校学子优秀的技术技能水平和良好的精神风貌。今后，经济管理学院将继续坚持“以赛促教、以赛促学，以赛促改，以赛促建”的理念，不断深化教育教学改革，积极培养出更多营销类高素质技术技能人才。
            </p>
        </div>
        <div class="my-5 mx-5">
            <span class="mr-4">撰稿：熊瑛</span>
            <span>审核：吴海波</span>
            <br/>
            <a value="返回" href="javascript:history.back()" >返回</a>
            <br/>
        </div>
    </div>
</div>
</body>
</html>