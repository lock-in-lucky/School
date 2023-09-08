<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%
    String path=request.getContextPath();
%>
<head>
    <title>首页</title>
    <link rel="shortcut icon" href="https://cdn4.iconfinder.com/data/icons/education-24/63/graduation-512.png" type="image/x-icon">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="<%=path%>/static/css/bootstrap.css">
<%--    <link rel="stylesheet" href="bootstrap-4.2.1-dist/css/bootstrap.css">--%>
    <script src="<%=path%>/static/js/jquery-3.3.1.slim.js"></script>
<%--    <script src="js/jquery-3.3.1.slim.js"></script>--%>
    <script src="<%=path%>/static/js/bootstrap.bundle.js"></script>
<%--    <script src="bootstrap-4.2.1-dist/js/bootstrap.bundle.js"></script>--%>
    <script src="<%=path%>/static/js/bootstrap.min.js"></script>
<%--    <script src="bootstrap-4.2.1-dist/js/bootstrap.min.js"></script>--%>
    <!--css文件-->
    <link rel="stylesheet" href="<%=path%>/static/mycss/style.css">
<%--    <link rel="stylesheet" href="css/style.css">--%>
    <script src="<%=path%>/static/js/index.js"></script>
<%--    <script src="js/index.js"></script>--%>
    <!--字体图标文件-->
    <link rel="stylesheet" href="<%=path%>/static/font-awesome-4.7.0/css/font-awesome.css">
<%--    <link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.css">--%>
</head>
<style>
    a:hover{
        text-decoration: none;
    }
    #navbarSupportedContent>ul>li>a:hover{
        background: #17a2b8;
        border-radius: 5px;
        color: #fff;
    }
    .arrow{
        width: 0;
        height: 0;
        border-right: .4rem solid transparent;
        border-top: .4rem solid gray;
        border-left: .4rem solid transparent;
        border-bottom: .4rem solid transparent;
        position: relative;
        top:1.1rem
    }
    .outarrow{
        position: absolute;
    }
    .inarrow{
        display: none;
        position: relative;
        top: .1rem;
        right: 3rem;
    }
    .inarrow a{
        font-size: .9rem;
        display: block;
        line-height: 3rem;
        text-align: center;
        color: gray;
    }
    .navbar-brand:hover .inarrow{
        display: block;
    }
    .navbar-brand{
        cursor: default;
    }
    .inarrow a:hover{
        color: #fff;
        background-color: #17a2b8;
        border-radius: 3px;
    }

</style>
<body>
<div class="main ">
    <!--头部-->
    <nav class="navbar navbar-expand-md navbar-light fixed-top rounded  bg-light shadow-lg row fixed-top rounded" style="height: 72px;">
        <div class="col-sm-12 col-md-3">
            <span class="navbar-brand text-gray-100 h5 px-5" href="#">在线选课系统</span>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>
        <div class="collapse navbar-collapse col-sm-6 col-md-9" id="navbarSupportedContent">
            <ul class="navbar-nav m-auto ">
                <li class="nav-item active py-3 " style="margin:0 4px 0 16px; width: 80px;">
                    <a class="nav-link text-gray-100 px-1 text-center" href="#">首页 <span class="sr-only">(current)</span></a>
                </li>

            </ul>
            <span class="navbar-brand text-gray-100 py-1 " href="#">Hello
            <c:if test="${sessionScope.student!=null}">
                ,${sessionScope.student.studentName}同学!
                <span class="outarrow">
                    <span class="arrow"></span>
                    <div class="inarrow">
                        <a href="<%=path%>/client/s/student/0" class="px-2">个人中心</a>
                        <a href="<%=path%>/studentlogout" class="px-2">注销</a>
                    </div>
                </span>
            </c:if>
            <c:if test="${sessionScope.teacher!=null}">
                ,${sessionScope.teacher.teacherName}老师!
                <span class="outarrow">
                    <span class="arrow"></span>
                    <div class="inarrow">
                        <a href="<%=path%>/client/t/teacher/0" class="px-2">个人中心</a>
                        <a href="<%=path%>/teacherlogout" class="px-2">注销</a>
                    </div>
                </span>
            </c:if>
            </span>
            <c:if test="${empty sessionScope.student and empty sessionScope.teacher}">
                <a class="btn btn-outline-info text-gray-100 border-0 py-2 my-auto" href="<%=path%>/tLogin" role="button">我是老师</a>
                <a class="btn btn-outline-info text-gray-100 border-0 py-2 my-auto" href="<%=path%>/sLogin" role="button">我是学生</a>
            </c:if>
        </div>
    </nav>
    <!--轮播-->
    <div id="carouselControls" class="carousel slide  mx-auto" data-ride="carousel" style="margin-top: 73px;width:80%;">
        <div class="carousel-inner max-h">
            <div class="carousel-item active">
                <img src="<%=path%>/static/img/001.jpg" class="d-block w-100" alt="...">
            </div>


            <div class="carousel-item">
                <img src="<%=path%>/static/img/005.jpg" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="<%=path%>/static/img/006.jpg" class="d-block w-100" alt="...">
            </div>

        </div>
        <a class="carousel-control-prev" href="#carouselControls" data-slide="prev">
            <span class="carousel-control-prev-icon"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselControls" data-slide="next">
            <span class="carousel-control-next-icon"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <div class="my-5 p-4">
        <h2 class="text-center color pt-4">校内新闻</h2>
        <h6 class="text-center my-3">下面是我校近期的新闻内容</h6>
        <div class="row px-5">
            <div class="col-4">
                <div class="list-group">
                    <a href="<%=path%>/client/new1" class="list-group-item list-group-item-action">
                        <div class="d-flex w-100 justify-content-between">
                            <h5 class="mb-1">学校学习党的二十大重要思想</h5>
                            <small>1 days ago</small>
                        </div>
                        <p class="mb-1"> 5月9日，校党委学习贯彻习近平.....</p>
                        <small>党政办公室</small>
                    </a>
                    <a href="<%=path%>/client/new2" class="list-group-item list-group-item-action">
                        <div class="d-flex w-100 justify-content-between">
                            <h5 class="mb-1">魅兰生科 书香校园</h5>
                            <small class="text-muted">1 days ago</small>
                        </div>
                        <p class="mb-1"> 四月的生科，春意盎然，书香四溢.....</p>
                        <small>校图书馆</small>
                    </a>
                    <a href="<%=path%>/client/new3" class="list-group-item list-group-item-action">
                        <div class="d-flex w-100 justify-content-between">
                            <h5 class="mb-1">致2023届毕业生的一封信</h5>
                            <small class="text-muted">1 days ago</small>
                        </div>
                        <p class="mb-1"> 亲爱的同学们：.....</p>
                        <small>校学工处</small>
                    </a>
                </div>
            </div>
            <div class="col-4">
                <a href="<%=path%>/client/new4" class="list-group-item list-group-item-action">
                    <div class="d-flex w-100 justify-content-between">
                        <h5 class="mb-1">技能成就梦想，匠心点亮人生</h5>
                        <small>4 days ago</small>
                    </div>
                    <p class="mb-1">4月17至19日，由我校市场营销专业学生组成.....</p>
                    <small>校学工处部</small>
                </a>
                <a href="<%=path%>/client/new6" class="list-group-item list-group-item-action">
                    <div class="d-flex w-100 justify-content-between">
                        <h5 class="mb-1">体能挑战争奋进，青春竞美写华章</h5>
                        <small class="text-muted">4 days ago</small>
                    </div>
                    <p class="mb-1">4月21日下午，学校2023年春季综合运动会圆满闭幕.....</p>
                    <small class="text-muted">校学工处部</small>
                </a>
                <a href="<%=path%>/client/new7" class="list-group-item list-group-item-action">
                    <div class="d-flex w-100 justify-content-between">
                        <h5 class="mb-1">生 科 风 景 ，芷 待 君 来</h5>
                        <small class="text-muted">5 days ago</small>
                    </div>
                    <p class="mb-1">丹霞拂熏醉看客，一片碧洋芙蕖和...</p>
                    <small class="text-muted">校园文化部</small>
                </a>
            </div>
            <div class="col-4">
                <a href="<%=path%>/client/new8" class="list-group-item list-group-item-action">
                    <div class="d-flex w-100 justify-content-between">
                        <h5 class="mb-1">念念笔记｜新栏目开篇啦</h5>
                        <small>2 days ago</small>
                    </div>
                    <p class="mb-1">--“为什么学校的天空总是那么好看？”...</p>
                    <small>校园文化部</small>
                </a>
                <a href="<%=path%>/client/new9" class="list-group-item list-group-item-action">
                    <div class="d-flex w-100 justify-content-between">
                        <h5 class="mb-1">春日，将艺术吃进肚子</h5>
                        <small class="text-muted">3 days ago</small>
                    </div>
                    <p class="mb-1">春日的暖阳透过繁叶洒下金光...</p>
                    <small class="text-muted">校园文化部</small>
                </a>
                <a href="<%=path%>/client/new10" class="list-group-item list-group-item-action">
                    <div class="d-flex w-100 justify-content-between">
                        <h5 class="mb-1">湖北·武汉</h5>
                        <small class="text-muted">3 days ago</small>
                    </div>
                    <p class="mb-1">”人 间 烟 火 气，“...</p>
                    <small class="text-muted">校园文化部</small>
                </a>
            </div>
        </div>
    </div>
    <!--特色楼盘-->
    <h2 class="text-center color">精彩活动</h2>
    <h6 class="text-center mt-3">下面是我们近期举办的相关活动</h6>
    <div class="container-fluid px-5 mb-5">
        <div class="text-right mx-auto" style="width: 80%;"><a href="<%=path%>/client/activity" class="btn2 border py-1 px-3">更多<i
                class="fa fa-angle-double-right ml-1"></i></a></div>
        <div class="row mx-auto" style="width: 80%">
            <div class="col-12 col-md-4 p-2">
                <div class="border">
                    <div class="box">
                        <img src="<%=path%>/static/img/shetuan.jpg" style="height:410px;" height="410" class="img-fluid" alt="">
                        <!--遮罩-->
                        <div class="box-content">
                            <h3 class="title">地址</h3>
                            <span class="post">${getActivity.activityAddress}</span>
                            <ul class="icon">

                                <li><a href="#"><i class="fa fa-link"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="card border-0 pt-0">
                        <div class="card-body" style="height: 270px;">
                            <h5>社团名称：${getActivity.shetuanName}</h5>
                            <h6>活动主题：${getActivity.activityTheme}</h6>
                            <h6>活动时间：${getActivity.activityTime}</h6>
                            <h6>地点：${getActivity.activityAddress}</h6>
                            <h6 class="mt-3"><a href="<%=path%>/client/shetuan/${getActivity.id}" class="btn2 border py-1 px-3">详情</a></h6>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-4 p-2">
                <div class="border">
                    <div class="box">
                        <img src="<%=path%>/static/img/lecture.jpg" style="height:410px;"  class="img-fluid" alt="">
                        <div class="box-content">
                            <h3 class="title">地址</h3>
                            <span class="post">${lecture.lectureAddress}</span>
                            <ul class="icon">
                                <li><a href="#"><i class="fa fa-link"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="card border-0">
                        <div class="card-body" style="height: 270px;">
                            <h5>讲座单位：${lecture.lectureUnit}</h5>
                            <h6>讲座主题：${lecture.lectureTheme}</h6>
                            <h6>讲座时间：${lecture.lectureTime}</h6>
                            <h6>讲座地点：${lecture.lectureAddress}</h6>
                            <h6 class="mt-3"><a href="<%=path%>/client/lecture/${lecture.id}" class="btn2 border py-1 px-3">详情</a></h6>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-4 p-2 " >
                <div class="border">
                    <div class="box">
                        <img src="<%=path%>/static/img/jobs.jpg" style="height:410px;"  class="img-fluid" alt="">
                        <div class="box-content">
                            <h3 class="title">招聘单位</h3>
                            <span class="post">${jobs.jobsUnit}</span>
                            <ul class="icon">
                                <li><a href="#"><i class="fa fa-link"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="card border-0">
                        <div class="card-body" style="height: 270px;">
                            <h5>招聘岗位：${jobs.jobsPost}</h5>
                            <h6>招聘单位：${jobs.jobsUnit}</h6>
                            <h6>工作地点：${jobs.jobsAddress}</h6>
                            <h6>学历要求：${jobs.jobsEdu}</h6>
                            <h6 class="text-truncate" title="${jobs.jobsDescribe}">岗位要求：${jobs.jobsDescribe}</h6>
                            <h6 class="mt-3"><a href="<%=path%>/client/jobs/${jobs.id}" class="btn2 border py-1 px-3">详情</a></h6>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>




    <!--尾部-->
    <div class="bg-dark py-5">
        <hr class="border-white my-0 mx-5" style="border:1px dotted red" />
        <ul class="nav justify-content-center pt-0">
            <li class="nav-item">
                <a class="nav-link text-white" href="#">校园文化</a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-white" href="#">校园特色</a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-white" href="#">站点介绍</a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-white" href="#">联系我们</a>
            </li>
        </ul>
        <hr class="border-white my-0 mx-5" style="border:1px dotted red" />
        <div class="text-center text-white mt-2">Copyright 2021-12-12 校园信息平台 版权所有</div>
    </div>
</div>

</body>
<script src="<%=path%>/static/js/jquery-2.1.0.min.js"></script>
<%--<script src="js/jquery-2.1.0.min.js"></script>--%>

</html>