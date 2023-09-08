
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
            text-indent: 2em;
            font-size: 18px;
            line-height: 200% !important;
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
        <h5 class="text-center mt-4">致2023届毕业生的一封信</h5>
        <div class="small text-center">2023-06-12  来源：学生工作处  </div>
        <div class="mx-5" style="text-indent: 2rem;">
            <p>
                亲爱的同学们：
            </p>
            <p>
                你们好！
            </p>
            <p>
                时光流逝，如白驹过隙。当绿色铺满校园，离别的气息亦开始弥漫，毕业季的骊歌悄然响起。3年前，你们意气风发，踌躇满志，跨入生科校园，开启了梦想之旅；现在，你们即将结束大学生活，带着母校的美好祝福，告别母校，踏上人生新的征程。
            </p>
            <p>
                回首往事，你们走进生科的记忆历历在目。在这里，我们一起目睹了学校的周年晚会，见证了中国共产党的百年辉煌征程，亲历了全面建成小康社会梦想成真。那段我们一起走过的路,都被时光雕刻了最好的模样,都被成长赋予了最好的意义。而如今，你们已学业有成，羽翼渐丰。此时此刻，我们真切感受到，你们真的毕业了。
            </p>
            <p>
                亲爱的同学们，也许多年后，你们渐渐淡忘了野芷湖畔的朗朗书声、模糊了狮子山边的生科记忆，忘却了运动场上的奋力拼搏和摇旗呐喊，但多年以后大家重回母校的时候，你们会为校园里仍然珍藏着你们最为美好、永不逝去的青春而潸然泪下！你们会发现自己和母校其实早就荣辱与共，无法分离。
            </p>
            <p>
                少年虽将远行，但心有不舍仍有片语叮咛。毕业不是终点，而是人生新的起点，需要在人生的跑道上不懈奋斗、勿忘追梦。同学们，为给母校留下欣慰，给学弟学妹们树立榜样，希望你们始终秉承“立德树人，勤学强能”的校训精神，和母校一起努力，为母校长足发展贡献力量！
            </p>
            <p>
                少年虽将远行，但心有不舍仍有片语叮咛。毕业不是终点，而是人生新的起点，需要在人生的跑道上不懈奋斗、勿忘追梦。同学们，为给母校留下欣慰，给学弟学妹们树立榜样，希望你们始终秉承“立德树人，勤学强能”的校训精神，和母校一起努力，为母校长足发展贡献力量！
            </p>
            <p>
                因故无法返校的生科学子勿需遗憾，学校已开通“云典礼”，大家可以通过“芷韵生科”“娟娟细语”微信公众号、“思语”抖音号观看直播或录播，毕业证和纪念品也将搭乘“专列”，一路“邮”你，温暖生科“寄”忆。
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