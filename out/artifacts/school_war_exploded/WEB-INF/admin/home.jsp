<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
String path=request.getContextPath();
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="shortcut icon" href="https://cdn4.iconfinder.com/data/icons/education-24/63/graduation-512.png" type="image/x-icon">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<%--    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">--%>

<%--    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>--%>
<%--    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>--%>
<%--    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>--%>

    <%--    <link rel="stylesheet" href="../css/bootstrap.css">--%>
    <%--    <script src="../js/jquery-3.6.0.js"></script>--%>
    <%--    <script src="../js/bootstrap.js"></script>--%>


        <link href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" rel="stylesheet">
        <script src="${pageContext.request.contextPath}/static/js/jquery-3.6.0.js"></script>
        <script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
</head>
<body class="px-4">
<nav class="navbar navbar-expand-lg navbar-light bg-primary mb-2">
    <a class="navbar-brand mr-auto text-white" href="<%=path%>/index">首页</a>

    <form class="form-inline my-2 my-lg-0">
        <button class="btn btn-outline-primary border-0 my-2 my-sm-0 text-white mr-2"
                type="submit">欢迎您，${sessionScope.adminUser.adminName}</button>
        <button class="btn btn-outline-primary border-0 my-2 my-sm-0 text-white" type="submit"><a
                href="<%=path%>/adminlogout" class="text-white" style="text-decoration: none;">退出</a></button>
    </form>
</nav>
<div class="row">
    <!-- 左侧边导航栏 -->
    <div class="col-2">
        <div class="list-group" id="list-tab" role="tablist">
            <c:if test="${titleFlag==0}">
                <a class="list-group-item list-group-item-action active" id="list-index-list" data-toggle="list"
                   href="#list-index" role="tab" aria-controls="index">管理员主页</a>
            </c:if>
            <c:if test="${titleFlag!=0}">
                <a class="list-group-item list-group-item-action" id="list-index-list" data-toggle="list"
                   href="#list-index" role="tab" aria-controls="index">管理员主页</a>
            </c:if>

            <c:if test="${titleFlag==1}">
                <a class="list-group-item list-group-item-action active" id="list-home-list" data-toggle="list"
                   href="" onclick="window.location.href='<%=path%>/admin/page/${1}'" data-target="#list-home" role="tab" aria-controls="home" >
                    <span class="glyphicon glyphicon-home"></span>教师管理</a>
            </c:if>
            <c:if test="${titleFlag!=1}">
                <a class="list-group-item list-group-item-action" id="list-home-list" data-toggle="list"
                   href="" onclick="window.location.href='<%=path%>/admin/page/${1}'" data-target="#list-home" role="tab" aria-controls="home" >
                    <span class="glyphicon glyphicon-home"></span>教师管理</a>
            </c:if>
            <c:if test="${titleFlag==2}">
                <a class="list-group-item list-group-item-action active" id="list-profile-list" data-toggle="list"
                   href="" onclick="window.location.href='<%=path%>/admin/studentspage/${2}'" data-target="#list-profile" role="tab" aria-controls="profile">学生管理</a>
            </c:if>
            <c:if test="${titleFlag!=2}">
                <a class="list-group-item list-group-item-action" id="list-profile-list" data-toggle="list"
                   href="" onclick="window.location.href='<%=path%>/admin/studentspage/${2}'" data-target="#list-profile" role="tab" aria-controls="profile">学生管理</a>
            </c:if>

           <c:if test="${titleFlag==3}">
               <a class="list-group-item list-group-item-action active" id="list-messages-list" data-toggle="list"
                  href="" onclick="window.location.href='<%=path%>/admin/coursespage/${3}'" data-target="#list-messages" role="tab" aria-controls="messages">课程管理</a>
           </c:if>
           <c:if test="${titleFlag!=3}">
               <a class="list-group-item list-group-item-action" id="list-messages-list" data-toggle="list"
                  href="" onclick="window.location.href='<%=path%>/admin/coursespage/${3}'" data-target="#list-messages" role="tab" aria-controls="messages">课程管理</a>
           </c:if>
            <c:if test="${titleFlag==4}">
                <a class="list-group-item list-group-item-action active" id="list-settings-list" data-toggle="list"
                   href="" onclick="window.location.href='<%=path%>/admin/classespage/${4}'" data-target="#list-settings"  role="tab" aria-controls="settings">班级管理</a>
            </c:if>
            <c:if test="${titleFlag!=4}">
                <a class="list-group-item list-group-item-action" id="list-settings-list" data-toggle="list"
                   href="" onclick="window.location.href='<%=path%>/admin/classespage/${4}'" data-target="#list-settings"  role="tab" aria-controls="settings">班级管理</a>
            </c:if>
        </div>
    </div>
    <!-- 右侧内容部分 -->
    <div class="col-10">

        <div class="tab-content" id="nav-tabContent">

            <!-- 首页开始 -->
            <c:if test="${titleFlag==0}">
            <div class="tab-pane fade show active clear-both" id="list-index" role="tabpanel"
                 aria-labelledby="list-index-list">
            </c:if>
            <c:if test="${titleFlag!=0}">
            <div class="tab-pane fade clear-both" id="list-index" role="tabpanel"
                 aria-labelledby="list-index-list">
            </c:if>


                <!-- 日历 -->
                <div class="float-left">
                    <iframe src="<%=path%>/static/calendar/index.html" frameborder="0"
                            style="width: 520px; height: 560px;"></iframe>
                </div>

                <!-- 可视化图表 -->
                <div class="float-right pr-5" id="diagram">
                    <h3 class="pt-3">DataStatistics</h3>
                    <div id="container" style="height:520px;width: 600px;"></div>
                </div>

                <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts@5.2.2/dist/echarts.min.js"></script>
                <script type="text/javascript">
                    $(function (){
                    var dom = document.getElementById("container");
                    var myChart = echarts.init(dom);
                    var app = {};
                    var option;
                        //发送ajax请求，获取教师总数，学生总数，课程总数，班级总数
                        var test = (function () {
                            let result;
                            $.ajax({
                                type: 'get',
                                url: '<%=path%>/admin/diagram',
                                dataType: 'json',
                                async:false,
                                success: (response) => {
                                    result = response;
                                    // console.log(result,1)

                                }
                            })
                            // console.log(result,2);
                            return result;
                        })();
                        // console.log(test[0]);
                        // console.log("xxx:"+123);
                        // console.log(diagramdata);
                        option = {
                            tooltip: {
                                trigger: 'axis',
                                axisPointer: {
                                    type: 'shadow'
                                }
                            },
                            grid: {
                                left: '3%',
                                right: '4%',
                                bottom: '3%',
                                containLabel: true
                            },
                            xAxis: [
                                {
                                    type: 'category',
                                    data: ['教师总数', '学生总数', '课程总数', '班级总数'],
                                    axisTick: {
                                        alignWithLabel: true
                                    }
                                }
                            ],
                            yAxis: [
                                {
                                    type: 'value'
                                }
                            ],
                            series: [
                                {
                                    name: 'Direct',
                                    type: 'bar',
                                    barWidth: '60%',
                                    // 柱状图中数据的设置【教师总数，学生总数，课程总数，班级总数】
                                    data: [test[0],test[1],test[2],test[3]]
                                }
                            ]
                        };

                        if (option && typeof option === 'object') {
                            myChart.setOption(option);
                        }
                    })
                </script>



            </div>
            <!-- 首页结束 -->

            <!-- 教师管理部分开始 -->
            <c:if test="${titleFlag==1}">
            <div class="tab-pane fade show active" id="list-home" role="tabpanel" aria-labelledby="list-home-list">
            </c:if>
            <c:if test="${titleFlag!=1}">
            <div class="tab-pane fade" id="list-home" role="tabpanel" aria-labelledby="list-home-list">
            </c:if>


                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item active"><a href="#">管理员主页</a></li>
                        <li class="breadcrumb-item" aria-current="page" >教师管理</li>
                    </ol>
                </nav>


                <div class="card">
                    <div class="card-header">
                        搜索
                    </div>
                    <div class="card-body">
                        <form role="form" class="form-inline" action="<%=path%>/admin/queryFor">
                            <div class="form-group">
                                <label for="name">姓名</label>
                                <input type="text" class="form-control mx-2" value="${teacherName}" id="name" name="teacherName" placeholder="请输入名称" required />
                            </div>
                            <div class="form-group mr-3">
                                <label for="dept">院系</label>
                                <select class="form-control mx-2" id="dept" name="teacherDept">
                                    <option value="软件学院">软件学院</option>
                                    <option value="信工学院">信工学院</option>
                                </select>
                            </div>
                            <div class="form-group mr-auto">
                                <button type="submit" class="btn btn-primary">查询</button>
                            </div>
                            <div>
                                <button type="button" class="btn btn-primary" data-toggle="modal"
                                        data-target="#exampleModal" data-whatever="@mdo" onclick="">添加</button>
                            </div>
                        </form>
                        <!-- 弹框内容 -->
                        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                             aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">添加教师</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <form class="row" id="form" action="<%=path%>/admin/add">
                                            <div class="form-group col-12">
                                                <label for="recipient-name" class="col-form-label">姓名</label>
                                                <input type="text" class="form-control" id="recipient-name" name="teacherName" required>
                                            </div>
                                            <div class="form-group col-6">
                                                <label for="recipient-year" class="col-form-label">年份</label>
                                                <select class="form-control" id="recipient-year" name="teacherId">
                                                    <option value="2010">2010</option>
                                                    <option value="2011">2011</option>
                                                    <option value="2012">2012</option>
                                                    <option value="2013">2013</option>
                                                    <option value="2014">2014</option>
                                                    <option value="2015">2015</option>
                                                    <option value="2016">2016</option>
                                                    <option value="2017">2017</option>
                                                    <option value="2018">2018</option>
                                                    <option value="2019">2019</option>
                                                    <option value="2020">2020</option>
                                                    <option value="2021">2021</option>
                                                </select>
                                            </div>
                                            <div class="form-group col-6">
                                                <label for="recipient-num" class="col-form-label" >电话号码</label>
                                                <input type="text" class="form-control" id="recipient-num" name="teacherPhone" required>
                                            </div>
                                            <div class="form-group col-6">
                                                <label for="recipient-email" class="col-form-label">电子邮件</label>
                                                <input type="text" class="form-control" id="recipient-email" name="teacherEmail" required>
                                            </div>
                                            <div class="form-group col-6">
                                                <label for="deph11">院系</label>
                                                <select class="form-control" id="deph11" name="teacherDept">
                                                    <option value="软件学院">软件学院</option>
                                                    <option value="信工学院">信工学院</option>
                                                </select>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="reset" class="btn btn-secondary" form="form">重置</button>
                                        <button type="submit" class="btn btn-primary " form="form">提交</button>
                                    </div>
                                </div>
                            </div>
                        </div>
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
                        <tbody id="teacher_manage_content">
                        <%--分页显示出来的数据--%>

                        <c:forEach items="${byPage.lists}" var="teacher">
                            <tr>
                                <td>${teacher.teacherId}</td>
                                <td>${teacher.teacherName}</td>
                                <td>${teacher.teacherPhone}</td>
                                <td>${teacher.teacherEmail}</td>
                                <td>${teacher.teacherDept}</td>
                                <td>
                                    <div class="btn-group">
                                        <%--<a href="" class="btn btn-light">修改</a>--%>
                                        <button type="button" class="btn btn-light" data-toggle="modal"
                                                data-target="#exampleModal11${teacher.teacherId}">修改</button>
                                        <a href="<%=path%>/admin/delete/${teacher.teacherId}/${byPage.currPage}" class="btn btn-danger">删除</a>

                                            <div class="modal fade" id="exampleModal11${teacher.teacherId}" tabindex="-1"
                                                 aria-labelledby="exampleModalLabel11" aria-hidden="true">
                                                <div class="modal-dialog  modal-dialog-centered">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="exampleModalLabel11">修改教师信息</h5>
                                                            <button type="button" class="close" data-dismiss="modal"
                                                                    aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <form class="row" id="form11${teacher.teacherId}" action="<%=path%>/admin/update/${byPage.currPage}">
                                                                <input type="hidden" name="teacherId" value="${teacher.teacherId}">
                                                                <div class="form-group col-12">
                                                                    <label for="recipient-name11"
                                                                           class="col-form-label">姓名</label>
                                                                    <input type="text" class="form-control"
                                                                           id="recipient-name11" name="teacherName" value="${teacher.teacherName}" required disabled="disabled">
                                                                </div>
                                                                <div class="form-group col-12">
                                                                    <label for="recipient-num11"
                                                                           class="col-form-label">电话号码</label>
                                                                    <input type="text" class="form-control"
                                                                           id="recipient-num11" name="teacherPhone" value="${teacher.teacherPhone}" required>
                                                                </div>
                                                                <div class="form-group col-6">
                                                                    <label for="recipient-email11"
                                                                           class="col-form-label">电子邮件</label>
                                                                    <input type="text" class="form-control"
                                                                           id="recipient-email11" name="teacherEmail" value="${teacher.teacherEmail}" required>
                                                                </div>

                                                                <div class="form-group col-6">
                                                                    <label for="recipient-deph11"
                                                                           class="col-form-label">院系</label>
                                                                    <select class="form-control" name="teacherDept" id="recipient-deph11">
                                                                        <option value="软件学院">软件学院</option>
                                                                        <option value="信工学院">信工学院</option>
                                                                    </select>
                                                                </div>
                                                            </form>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="reset" class="btn btn-secondary"
                                                                    form="form11${teacher.teacherId}">重置</button>
                                                            <button type="submit" class="btn btn-primary "
                                                                    <%--data-dismiss="modal"--%> form="form11${teacher.teacherId}">提交</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                    </div>
                                </td>
                            </tr>
                        </c:forEach>

                        <c:if test="${byPage.lists.size()==0}">
                            <tr class="text-center">
                                <td colspan="6">没有此老师</td>
                            </tr>
                        </c:if>
                        </tbody>
                    </table>
                </div>
                <c:if test="${empty flag}">
                    <%--教师页码显示--%>
                    <div class="btn-toolbar float-right" role="toolbar" aria-label="Toolbar with button groups">
                        <div class="btn-group mr-2" role="group" aria-label="First group">

                                <%--首页按钮实现--%>
                            <c:if test="${byPage.currPage==1}">
                                <button type="button" class="btn btn-light" disabled>首页</button>
                            </c:if>
                            <c:if test="${byPage.currPage!=1}">
                                <button type="button" class="btn btn-light"
                                        onclick="window.location.href='<%=path%>/admin/page/${1}?currPage=1'">首页</button>
                            </c:if>
                                <%--首页按钮实现结束--%>
                                <%--上一页实现按钮--%>
                            <c:if test="${byPage.currPage==1}">
                                <button type="button" class="btn btn-light" disabled>&laquo;</button>
                            </c:if>
                                <%--当前页不等于1时--%>
                            <c:if test="${byPage.currPage!=1}">
                                <button type="button" class="btn btn-light"
                                        onclick="window.location.href='<%=path%>/admin/page/${1}?currentPage=${byPage.currPage-1}'">&laquo;</button>
                            </c:if>
                                <%--上一页实现按钮结束--%>

                                <%--显示五个页码开始--%>
                            <c:choose>
                                <%--当总页码少于等于5时--%>
                                <c:when test="${byPage.totalPage<=5}">
                                    <c:set var="begin" value="1"/>
                                    <c:set var="end" value="${byPage.totalPage}"/>
                                </c:when>
                                <%--当总页码大于5时--%>
                                <c:when test="${byPage.totalPage>5}">
                                    <c:choose>
                                        <%--当 当前页码小于等于3时--%>
                                        <c:when test="${byPage.currPage<=3}">
                                            <c:set var="begin" value="1"/>
                                            <c:set var="end" value="5"/>
                                        </c:when>
                                        <%--当 当前页码大于总页码减2时--%>
                                        <c:when test="${byPage.currPage>=byPage.totalPage-2}">
                                            <c:set var="begin" value="${byPage.totalPage-4}"/>
                                            <c:set var="end" value="${byPage.totalPage}"/>
                                        </c:when>
                                        <%--其他情况--%>
                                        <c:otherwise>
                                            <c:set var="begin" value="${byPage.currPage-2}"/>
                                            <c:set var="end" value="${byPage.currPage+2}"/>
                                        </c:otherwise>
                                    </c:choose>
                                </c:when>
                            </c:choose>
                            <c:forEach begin="${begin}" end="${end}" var="i">
                                <c:if test="${byPage.currPage!=i}">
                                    <button type="button" class="btn btn-light"
                                            onclick="window.location.href='<%=path%>/admin/page/${1}?currentPage=${i}'">${i}</button>
                                </c:if>
                                <c:if test="${byPage.currPage==i}">
                                    <button type="button" class="btn btn-primary">${i}</button>
                                </c:if>
                            </c:forEach>
                                <%--显示五个页码结束--%>

                                <%--显示下一页按钮--%>
                            <c:if test="${byPage.currPage==byPage.totalPage}">
                                <button type="button" class="btn btn-light" disabled>&raquo;</button>
                            </c:if>
                            <c:if test="${byPage.currPage!=byPage.totalPage}">
                                <button type="button" class="btn btn-light"
                                        onclick="window.location.href='<%=path%>/admin/page/${1}?currentPage=${byPage.currPage+1}'">&raquo;</button>
                            </c:if>
                                <%--显示下一页按钮结束--%>
                                <%--显示末页按钮--%>
                            <c:if test="${byPage.currPage==byPage.totalPage}">
                                <button type="button" class="btn btn-light" disabled>末页</button>
                            </c:if>
                            <c:if test="${byPage.currPage!=byPage.totalPage}">
                                <button type="button" class="btn btn-light"
                                        onclick="window.location.href='<%=path%>/admin/page/${1}?currentPage=${byPage.totalPage}'">末页</button>
                            </c:if>
                                <%--教师显示末页按钮结束--%>
                        </div>
                    </div>
                    <%--教师页码显示结束--%>
                </c:if>
            </div>
            <!-- 教师管理部分结束 -->


            <!-- 学生管理部分开始-->
                <c:if test="${titleFlag==2}">
                <div class="tab-pane fade show active" id="list-profile" role="tabpanel" aria-labelledby="list-profile-list">
                </c:if>
                <c:if test="${titleFlag!=2}">
                <div class="tab-pane fade" id="list-profile" role="tabpanel" aria-labelledby="list-profile-list">
                </c:if>

                <div class="panel panel-default">

                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item active"><a href="#">管理员主页</a></li>
                            <li class="breadcrumb-item" aria-current="page">学生管理</li>
                        </ol>
                    </nav>

                    <div class="card">
                        <div class="card-header">
                            搜索
                        </div>

                        <div class="card-body">
                            <form role="form" class="form-inline" action="<%=path%>/admin/queryForStudent">
                                <div class="form-group">
                                    <label for="name2">姓名</label>
                                    <input type="text" class="form-control mx-2" id="name2" value="${studentSmall.studentName}" name="studentName" placeholder="请输入名称" />
                                </div>
                                <div class="form-group mr-3">
                                    <label for="classes">班级号</label>
                                    <input type="text" class="form-control mx-2" id="classes" value="${studentSmall.studentClassId}" name="studentClassId" placeholder="请输入班级号" />

<%--                                    <select class="form-control mx-2" id="deph2">--%>
<%--                                        <option>软件学院</option>--%>
<%--                                        <option>信工学院</option>--%>
<%--                                    </select>--%>
                                </div>
                                <div class="form-group mr-auto">
                                    <button type="submit" class="btn btn-primary">查询</button>
                                </div>
                                <div>
                                    <button type="button" class="btn btn-primary" data-toggle="modal"
                                            data-target="#exampleModal2" data-whatever="@mdo">添加</button>
                                </div>
                            </form>
                            <!-- 弹框内容 -->
                            <div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel"
                                 aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel2">添加学生</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>

                                        <div class="modal-body">
                                            <form class="row" id="form2" action="<%=path%>/admin/addStudent">
                                                <div class="form-group col-6">
                                                    <label for="recipient-name2" class="col-form-label">姓名</label>
                                                    <input type="text" class="form-control" name="studentName"  id="recipient-name2">
                                                </div>
                                                <div class="form-group col-6">
                                                    <label for="recipient-gener2"  class="col-form-label">性别</label>
                                                    <select class="form-control mx-2" name="studentGender" id="recipient-gener2">
                                                        <option value="男" selected>男</option>
                                                        <option value="女">女</option>
                                                    </select>
                                                </div>
                                                <div class="form-group col-6">
                                                    <label for="recipient-class2" class="col-form-label">班级</label>
                                                    <input type="text" class="form-control" name="studentClassId" id="recipient-class2">
                                                </div>
                                                <div class="form-group col-6">
                                                    <label for="recipient-num2" class="col-form-label">电话号码</label>
                                                    <input type="text" class="form-control" name="studentPhone" id="recipient-num2">
                                                </div>
                                                <div class="form-group col-6">
                                                    <label for="recipient-email2"
                                                           class="col-form-label">电子邮件</label>
                                                    <input type="text" class="form-control" name="studentEmail" id="recipient-email2">
                                                </div>
                                                <div class="form-group col-6">
                                                    <label for="recipient-year2" class="col-form-label">入学年份</label>
                                                    <select class="form-control"  name="studentId" id="recipient-year2">
                                                        <option value="2017">2017</option>
                                                        <option value="2018">2018</option>
                                                        <option value="2019">2019</option>
                                                        <option value="2020">2020</option>
                                                        <option value="2021" selected>2021</option>
                                                        <option value="2022">2022</option>
                                                        <option value="2023">2023</option>
                                                    </select>
                                                </div>
                                                <div class="form-group col-12">
                                                    <label for="recipient-address2"
                                                           class="col-form-label">生源地</label>
                                                    <input type="text" class="form-control" name="studentAddress" id="recipient-address2">
                                                </div>
                                            </form>
                                        </div>

                                        <div class="modal-footer">
                                            <button type="reset" class="btn btn-secondary" form="form2">重置</button>
                                            <button type="submit" class="btn btn-primary " form="form2" <%--data-dismiss="modal"--%>>提交</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="table-responsive">
                        <table class="table table-striped">
                            <thead>
                            <tr>
                                <th>学号</th>
                                <th>学生姓名</th>
                                <th>班级</th>
                                <th>手机号码</th>
                                <th>邮箱</th>
                                <th>生源地</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${byStudentPage.lists}" var="student">
                                <tr>
                                    <td>${student.studentId}</td>
                                    <td>${student.studentName}</td>
                                    <td>${student.studentClassId}</td>
                                    <td>${student.studentPhone}</td>
                                    <td>${student.studentEmail}</td>
                                    <td>${student.studentAddress}</td>
                                    <td>
                                        <div class="btn-group">
                                            <button type="button" class="btn btn-light" data-toggle="modal"
                                                    data-target="#exampleModal22${student.studentId}">修改</button>
                                            <a href="<%=path%>/admin/deleteStudent/${student.studentId}/${byStudentPage.currPage}" class="btn btn-danger">删除</a>
                                            <div class="modal fade" id="exampleModal22${student.studentId}" tabindex="-1"
                                                 aria-labelledby="exampleModalLabel22" aria-hidden="true">
                                                <div class="modal-dialog modal-dialog-centered">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="exampleModalLabel22">修改学生信息
                                                            </h5>
                                                            <button type="button" class="close" data-dismiss="modal"
                                                                    aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <form class="row" id="form22${student.studentId}" action="<%=path%>/admin/updateStudent/${byStudentPage.currPage}">

                                                                <%--隐藏控件传入学号--%>
                                                                <input type="hidden" name="studentId" value="${student.studentId}">

                                                                <div class="form-group col-6">
                                                                    <label for="recipient-name22"
                                                                           class="col-form-label">姓名</label>
                                                                    <input type="text" class="form-control"
                                                                           id="recipient-name22" name="studentName" value="${student.studentName}">
                                                                </div>
                                                                <div class="form-group col-6">
                                                                    <label for="recipient-gender22"
                                                                           class="col-form-label">性别</label>
                                                                    <select class="form-control" id="recipient-gender22" name="studentGender">
                                                                        <c:if test="${student.studentGender=='男'}">
                                                                            <option value="男" selected>男</option>
                                                                            <option value="女" >女</option>
                                                                        </c:if>
                                                                        <c:if test="${student.studentGender=='女'}">
                                                                            <option value="男" >男</option>
                                                                            <option value="女" selected>女</option>
                                                                        </c:if>
                                                                    </select>
                                                                </div>
                                                                <div class="form-group col-6">
                                                                    <label for="recipient-class22"
                                                                           class="col-form-label">班级</label>
                                                                    <input type="text" class="form-control"
                                                                           id="recipient-class22" name="studentClassId" value="${student.studentClassId}">
                                                                </div>
                                                                <div class="form-group col-6">
                                                                    <label for="recipient-num22"
                                                                           class="col-form-label">电话号码</label>
                                                                    <input type="text" class="form-control"
                                                                           id="recipient-num22" name="studentPhone" value="${student.studentPhone}">
                                                                </div>
                                                                <div class="form-group col-6">
                                                                    <label for="recipient-email22"
                                                                           class="col-form-label">电子邮件</label>
                                                                    <input type="text" class="form-control"
                                                                           id="recipient-email22" name="studentEmail" value="${student.studentEmail}">
                                                                </div>
                                                                <div class="form-group col-6">
                                                                    <label for="recipient-address22"
                                                                           class="col-form-label">生源地</label>
                                                                    <input type="text" class="form-control"
                                                                           id="recipient-address22" name="studentAddress" value="${student.studentAddress}">
                                                                </div>
                                                            </form>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="reset" class="btn btn-secondary"
                                                                    form="form22${student.studentId}">重置</button>
                                                            <button type="submit" class="btn btn-primary "
                                                                    <%--data-dismiss="modal"--%> form="form22${student.studentId}">提交</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            </c:forEach>

                            <c:if test="${byStudentPage.lists.size()==0}">
                                <tr class="text-center">
                                    <td colspan="7">没有此学生</td>
                                </tr>
                            </c:if>
                            </tbody>
                        </table>
                    </div>

                    <c:if test="${empty flag}">
                        <%--学生页码显示--%>
                        <div class="btn-toolbar float-right" role="toolbar" aria-label="Toolbar with button groups">
                            <div class="btn-group mr-2" role="group" aria-label="First group">

                                    <%--首页按钮实现--%>
                                <c:if test="${byStudentPage.currPage==1}">
                                    <button type="button" class="btn btn-light" disabled>首页</button>
                                </c:if>
                                <c:if test="${byStudentPage.currPage!=1}">
                                    <button type="button" class="btn btn-light"
                                            onclick="window.location.href='<%=path%>/admin/studentspage/${2}?currPage=1'">首页</button>
                                </c:if>
                                    <%--首页按钮实现结束--%>
                                    <%--上一页实现按钮--%>
                                <c:if test="${byStudentPage.currPage==1}">
                                    <button type="button" class="btn btn-light" disabled>&laquo;</button>
                                </c:if>
                                    <%--当前页不等于1时--%>
                                <c:if test="${byStudentPage.currPage!=1}">
                                    <button type="button" class="btn btn-light"
                                            onclick="window.location.href='<%=path%>/admin/studentspage/${2}?currentPage=${byStudentPage.currPage-1}'">&laquo;</button>
                                </c:if>
                                    <%--上一页实现按钮结束--%>

                                    <%--显示五个页码开始--%>
                                <c:choose>
                                    <%--当总页码少于等于5时--%>
                                    <c:when test="${byStudentPage.totalPage<=5}">
                                        <c:set var="begin" value="1"/>
                                        <c:set var="end" value="${byStudentPage.totalPage}"/>
                                    </c:when>
                                    <%--当总页码大于5时--%>
                                    <c:when test="${byStudentPage.totalPage>5}">
                                        <c:choose>
                                            <%--当 当前页码小于等于3时--%>
                                            <c:when test="${byStudentPage.currPage<=3}">
                                                <c:set var="begin" value="1"/>
                                                <c:set var="end" value="5"/>
                                            </c:when>
                                            <%--当 当前页码大于总页码减2时--%>
                                            <c:when test="${byStudentPage.currPage>=byStudentPage.totalPage-2}">
                                                <c:set var="begin" value="${byStudentPage.totalPage-4}"/>
                                                <c:set var="end" value="${byStudentPage.totalPage}"/>
                                            </c:when>
                                            <%--其他情况--%>
                                            <c:otherwise>
                                                <c:set var="begin" value="${byStudentPage.currPage-2}"/>
                                                <c:set var="end" value="${byStudentPage.currPage+2}"/>
                                            </c:otherwise>
                                        </c:choose>
                                    </c:when>
                                </c:choose>
                                <c:forEach begin="${begin}" end="${end}" var="i">
                                    <c:if test="${byStudentPage.currPage!=i}">
                                        <button type="button" class="btn btn-light"
                                                onclick="window.location.href='<%=path%>/admin/studentspage/${2}?currentPage=${i}'">${i}</button>
                                    </c:if>
                                    <c:if test="${byStudentPage.currPage==i}">
                                        <button type="button" class="btn btn-primary">${i}</button>
                                    </c:if>
                                </c:forEach>
                                    <%--显示五个页码结束--%>

                                    <%--显示下一页按钮--%>
                                <c:if test="${byStudentPage.currPage==byStudentPage.totalPage}">
                                    <button type="button" class="btn btn-light" disabled>&raquo;</button>
                                </c:if>
                                <c:if test="${byStudentPage.currPage!=byStudentPage.totalPage}">
                                    <button type="button" class="btn btn-light"
                                            onclick="window.location.href='<%=path%>/admin/studentspage/${2}?currentPage=${byStudentPage.currPage+1}'">&raquo;</button>
                                </c:if>
                                    <%--显示下一页按钮结束--%>
                                    <%--显示末页按钮--%>
                                <c:if test="${byStudentPage.currPage==byStudentPage.totalPage}">
                                    <button type="button" class="btn btn-light" disabled>末页</button>
                                </c:if>
                                <c:if test="${byStudentPage.currPage!=byStudentPage.totalPage}">
                                    <button type="button" class="btn btn-light"
                                            onclick="window.location.href='<%=path%>/admin/studentspage/${2}?currentPage=${byStudentPage.totalPage}'">末页</button>
                                </c:if>
                                    <%--显示末页按钮结束--%>
                            </div>
                        </div>
                        <%--学生页码显示结束--%>
                    </c:if>

                </div>
            </div>
            <!-- 学生管理部分结束-->


            <!-- 课程管理部分开始-->
                <c:if test="${titleFlag==3}">
                    <div class="tab-pane fade show active" id="list-messages" role="tabpanel" aria-labelledby="list-messages-list">
                 </c:if>
                <c:if test="${titleFlag!=3}">
                    <div class="tab-pane fade" id="list-messages" role="tabpanel" aria-labelledby="list-messages-list">
                 </c:if>
                <div class="panel panel-default">

                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item active"><a href="#">管理员主页</a></li>
                            <li class="breadcrumb-item" aria-current="page">课程管理</li>
                        </ol>
                    </nav>
                    <div class="card">
                        <div class="card-header">
                            搜索
                        </div>

                        <div class="card-body">
                            <form role="form" class="form-inline" action="<%=path%>/admin/queryForCourse">
                                <div class="form-group">
                                    <label for="name3">课程名</label>
                                    <input type="text" class="form-control mx-2" id="name3" value="${courseSmall.courseName}" name="courseName" placeholder="请输入名称" />
                                </div>
                                <div class="form-group mr-3">
                                    <label for="deph3">任课教师</label>
                                    <input type="text" class="form-control mx-2" id="deph3" value="${courseSmall.courseTeacher}" name="courseTeacher" placeholder="请输入教师姓名" />
                                </div>
                                <div class="form-group mr-auto">
                                    <button type="submit" class="btn btn-primary">查询</button>
                                </div>
                                <div>
                                    <button type="button" class="btn btn-primary" data-toggle="modal"
                                            data-target="#exampleModal3" data-whatever="@mdo">添加</button>
                                </div>
                            </form>
                            <!-- 弹框内容--添加课程 -->
                            <div class="modal fade" id="exampleModal3" tabindex="-1" aria-labelledby="exampleModalLabel"
                                 aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel3">添加课程</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>

                                        <div class="modal-body">
                                            <form class="row" id="form3" action="<%=path%>/admin/addCourse">
                                                <div class="form-group col-6">
                                                    <label for="recipient-name3" class="col-form-label">课程名</label>
                                                    <input type="text" class="form-control" id="recipient-name3" name="courseName">
                                                </div>
                                                <div class="form-group col-6">
                                                    <label for="recipient-teacher3" class="col-form-label">任课教师</label>
                                                    <input type="text" class="form-control" id="recipient-teacher3" name="courseTeacher">
                                                </div>

                                                <div class="form-group col-6">
                                                    <label for="recipient-num3" class="col-form-label">所属学期</label>
                                                    <select class="form-control" id="recipient-num3" name="courseTerm">
                                                        <option value="1">1</option>
                                                        <option value="2">2</option>
                                                        <option value="2">3</option>
                                                        <option value="4">4</option>
                                                        <option value="5">5</option>
                                                        <option value="6">6</option>
                                                        <option value="7">7</option>
                                                        <option value="8">8</option>
                                                    </select>
                                                </div>
                                            </form>
                                        </div>

                                        <div class="modal-footer">
                                            <button type="reset" class="btn btn-secondary" form="form3">重置</button>
                                            <button type="submit" class="btn btn-primary " form="form3">提交</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-striped">
                            <thead>
                            <tr>
                                <th>课程号</th>
                                <th>课程名</th>
                                <th>任课教师</th>
                                <th>开设学期</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${byCoursePage.lists}" var="course">
                                <tr>
                                    <td>${course.courseId}</td>
                                    <td>${course.courseName}</td>
                                    <td>${course.courseTeacher}</td>
                                    <td>${course.courseTerm}</td>
                                    <td>
                                        <div class="btn-group">
                                            <button type="button" class="btn btn-light" data-toggle="modal"
                                                    data-target="#exampleModal33${course.courseId}">修改</button>
                                            <a href="<%=path%>/admin/deleteCourse/${course.courseId}/${byCoursePage.currPage}" class="btn btn-danger">删除</a>
                                            <div class="modal fade" id="exampleModal33${course.courseId}" tabindex="-1"
                                                 aria-labelledby="exampleModalLabel33" aria-hidden="true">
                                                <div class="modal-dialog modal-dialog-centered">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="exampleModalLabel33">修改课程信息
                                                            </h5>
                                                            <button type="button" class="close" data-dismiss="modal"
                                                                    aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <form class="row" id="form33${course.courseId}" action="<%=path%>/admin/updateCourse/${byCoursePage.currPage}">
                                                                <input type="hidden" name="courseId" value="${course.courseId}">
                                                                <div class="form-group col-12">
                                                                    <label for="recipient-name33"
                                                                           class="col-form-label">课程名</label>
                                                                    <input type="text" class="form-control"
                                                                           id="recipient-name33" name="courseName" value="${course.courseName}">
                                                                </div>
                                                                <div class="form-group col-12">
                                                                    <label for="recipient-teacher33"
                                                                           class="col-form-label">任课教师</label>
                                                                    <input type="text" class="form-control"
                                                                           id="recipient-teacher33" name="courseTeacher" value="${course.courseTeacher}">
                                                                </div>

                                                                <div class="form-group col-12">
                                                                    <label for="recipient-num33"
                                                                           class="col-form-label">开设学期</label>
                                                                    <select class="form-control"
                                                                            id="recipient-num33" name="courseTerm">
                                                                        <c:if test="${course.courseTerm==1}">
                                                                            <option value="1" selected>1</option>
                                                                        </c:if>
                                                                        <c:if test="${course.courseTerm!=1}">
                                                                            <option value="1">1</option>
                                                                        </c:if>
                                                                        <c:if test="${course.courseTerm==2}">
                                                                            <option value="2" selected>2</option>
                                                                        </c:if>
                                                                        <c:if test="${course.courseTerm!=2}">
                                                                            <option value="2">2</option>
                                                                        </c:if>
                                                                        <c:if test="${course.courseTerm==3}">
                                                                            <option value="3" selected>3</option>
                                                                        </c:if>
                                                                        <c:if test="${course.courseTerm!=4}">
                                                                            <option value="4">4</option>
                                                                        </c:if>
                                                                        <c:if test="${course.courseTerm==5}">
                                                                            <option value="5" selected>5</option>
                                                                        </c:if>
                                                                        <c:if test="${course.courseTerm!=6}">
                                                                            <option value="6">6</option>
                                                                        </c:if>
                                                                        <c:if test="${course.courseTerm==7}">
                                                                            <option value="7" selected>7</option>
                                                                        </c:if>
                                                                        <c:if test="${course.courseTerm!=8}">
                                                                            <option value="8">8</option>
                                                                        </c:if>
                                                                    </select>
                                                                </div>
                                                            </form>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="reset" class="btn btn-secondary"
                                                                    form="form33${course.courseId}">重置</button>
                                                            <button type="submit" class="btn btn-primary "
                                                                    <%--data-dismiss="modal"--%> form="form33${course.courseId}">提交</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>


                                        </div>
                                    </td>
                                </tr>
                            </c:forEach>

                            <c:if test="${byCoursePage.lists.size()==0}">
                                <tr class="text-center">
                                    <td colspan="5">没有此课程</td>
                                </tr>
                            </c:if>
                            </tbody>
                        </table>
                    </div>

                    <c:if test="${empty flag}">
                        <%--课程页码显示--%>
                        <div class="btn-toolbar float-right" role="toolbar" aria-label="Toolbar with button groups">
                            <div class="btn-group mr-2" role="group" aria-label="First group">

                                    <%--课程首页按钮实现--%>
                                <c:if test="${byCoursePage.currPage==1}">
                                    <button type="button" class="btn btn-light" disabled>首页</button>
                                </c:if>
                                <c:if test="${byCoursePage.currPage!=1}">
                                    <button type="button" class="btn btn-light"
                                            onclick="window.location.href='<%=path%>/admin/coursespage/${3}?currPage=1'">首页</button>
                                </c:if>
                                    <%--首页按钮实现结束--%>
                                    <%--上一页实现按钮--%>
                                <c:if test="${byCoursePage.currPage==1}">
                                    <button type="button" class="btn btn-light" disabled>&laquo;</button>
                                </c:if>
                                    <%--当前页不等于1时--%>
                                <c:if test="${byCoursePage.currPage!=1}">
                                    <button type="button" class="btn btn-light"
                                            onclick="window.location.href='<%=path%>/admin/coursespage/${3}?currentPage=${byCoursePage.currPage-1}'">&laquo;</button>
                                </c:if>
                                    <%--上一页实现按钮结束--%>

                                    <%--显示五个页码开始--%>
                                <c:choose>
                                    <%--当总页码少于等于5时--%>
                                    <c:when test="${byCoursePage.totalPage<=5}">
                                        <c:set var="begin" value="1"/>
                                        <c:set var="end" value="${byCoursePage.totalPage}"/>
                                    </c:when>
                                    <%--当总页码大于5时--%>
                                    <c:when test="${byCoursePage.totalPage>5}">
                                        <c:choose>
                                            <%--当 当前页码小于等于3时--%>
                                            <c:when test="${byCoursePage.currPage<=3}">
                                                <c:set var="begin" value="1"/>
                                                <c:set var="end" value="5"/>
                                            </c:when>
                                            <%--当 当前页码大于总页码减2时--%>
                                            <c:when test="${byCoursePage.currPage>=byCoursePage.totalPage-2}">
                                                <c:set var="begin" value="${byCoursePage.totalPage-4}"/>
                                                <c:set var="end" value="${byCoursePage.totalPage}"/>
                                            </c:when>
                                            <%--其他情况--%>
                                            <c:otherwise>
                                                <c:set var="begin" value="${byCoursePage.currPage-2}"/>
                                                <c:set var="end" value="${byCoursePage.currPage+2}"/>
                                            </c:otherwise>
                                        </c:choose>
                                    </c:when>
                                </c:choose>
                                <c:forEach begin="${begin}" end="${end}" var="i">
                                    <c:if test="${byCoursePage.currPage!=i}">
                                        <button type="button" class="btn btn-light"
                                                onclick="window.location.href='<%=path%>/admin/coursespage/${3}?currentPage=${i}'">${i}</button>
                                    </c:if>
                                    <c:if test="${byCoursePage.currPage==i}">
                                        <button type="button" class="btn btn-primary">${i}</button>
                                    </c:if>
                                </c:forEach>
                                    <%--显示五个页码结束--%>

                                    <%--显示下一页按钮--%>
                                <c:if test="${byCoursePage.currPage==byCoursePage.totalPage}">
                                    <button type="button" class="btn btn-light" disabled>&raquo;</button>
                                </c:if>
                                <c:if test="${byCoursePage.currPage!=byCoursePage.totalPage}">
                                    <button type="button" class="btn btn-light"
                                            onclick="window.location.href='<%=path%>/admin/coursespage/${3}?currentPage=${byCoursePage.currPage+1}'">&raquo;</button>
                                </c:if>
                                    <%--显示下一页按钮结束--%>
                                    <%--显示末页按钮--%>
                                <c:if test="${byCoursePage.currPage==byCoursePage.totalPage}">
                                    <button type="button" class="btn btn-light" disabled>末页</button>
                                </c:if>
                                <c:if test="${byCoursePage.currPage!=byCoursePage.totalPage}">
                                    <button type="button" class="btn btn-light"
                                            onclick="window.location.href='<%=path%>/admin/coursespage/${3}?currentPage=${byCoursePage.totalPage}'">末页</button>
                                </c:if>
                                    <%--显示末页按钮结束--%>
                            </div>
                        </div>
                        <%--页码显示结束--%>
                    </c:if>

                </div>
            </div>
            <!-- 课程管理部分结束-->


            <!-- 班级管理部分开始-->
                 <c:if test="${titleFlag==4}">
                 <div class="tab-pane fade show active" id="list-settings" role="tabpanel" aria-labelledby="list-settings-list">
                 </c:if>
                 <c:if test="${titleFlag!=4}">
                 <div class="tab-pane fade" id="list-settings" role="tabpanel" aria-labelledby="list-settings-list">
                 </c:if>
                <div class="panel panel-default">

                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item active"><a href="#">管理员主页</a></li>
                            <li class="breadcrumb-item" aria-current="page">班级管理</li>
                        </ol>
                    </nav>

                    <div class="card">

                        <div class="card-header">
                            搜索
                        </div>

                        <div class="card-body">
                            <form role="form" class="form-inline" action="<%=path%>/admin/queryForClasses">
                                <div class="form-group">
                                    <label for="name4">班级号</label>
                                    <input type="text" class="form-control mx-2" name="classId" value="${classId}" id="name4" placeholder="请输入班级号" />
                                </div>
                                <div class="form-group mr-3">
                                    <label for="deph4">班主任</label>
                                    <input type="text" class="form-control mx-2" id="deph4" value="${teacherName}" name="classTeacherName" placeholder="请输入班主任姓名" />
                                </div>
                                <div class="form-group mr-auto">
                                    <button type="submit" class="btn btn-primary">查询</button>
                                </div>
                                <div>
                                    <button type="button" class="btn btn-primary" data-toggle="modal"
                                            data-target="#exampleModal4" data-whatever="@mdo">添加</button>
                                </div>
                            </form>

                            <!-- 添加班级开始 -->
                            <div class="modal fade" id="exampleModal4" tabindex="-1" aria-labelledby="exampleModalLabel"
                                 aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel4">添加班级</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>

                                        <div class="modal-body">
                                            <form class="row" id="form4" action="<%=path%>/admin/addClasses">
                                                <div class="form-group col-12">
                                                    <label for="recipient-email4"
                                                           class="col-form-label">班主任工号</label>
                                                    <input type="text" class="form-control" name="classTeacherId" id="recipient-email4">
                                                </div>

                                                <div class="form-group col-12">
                                                    <label for="recipient-num4" class="col-form-label">班主任姓名</label>
                                                    <input type="text" class="form-control" name="classTeacherName" id="recipient-num4">
                                                </div>

                                                <div class="form-group col-12">
                                                    <label for="recipient-name4" class="col-form-label">班级号</label>
                                                    <input type="text" class="form-control" name="classId" id="recipient-name4">
                                                </div>

                                                <div class="form-group col-12">
                                                    <label for="recipient-class4" class="col-form-label">班级名称</label>
                                                    <input type="text" class="form-control" name="className" id="recipient-class4">
                                                </div>

                                            </form>
                                        </div>

                                        <div class="modal-footer">
                                            <button type="reset" class="btn btn-secondary" form="form4">重置</button>
                                            <button type="submit" class="btn btn-primary "  form="form4">提交</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- 添加班级结束 -->
                        </div>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-striped">
                            <thead>
                            <tr>
                                <th>班级号</th>
                                <th>班级名称</th>
                                <th>班主任工号</th>
                                <th>班主任</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${byClassesPage.lists}" var="classes">
                                <tr>
                                    <td>${classes.classId}</td>
                                    <td>${classes.className}</td>
                                    <td>${classes.classTeacherId}</td>
                                    <td>${classes.classTeacherName}</td>
                                    <td>
                                        <div class="btn-group">
                                            <button type="button" class="btn btn-light" data-toggle="modal"
                                                    data-target="#exampleModal44${classes.classId}">修改</button>
                                            <a href="<%=path%>/admin/deleteClasses/${classes.classId}/${byClassesPage.currPage}" class="btn btn-danger">删除</a>
                                            <div class="modal fade" id="exampleModal44${classes.classId}" tabindex="-1"
                                                 aria-labelledby="exampleModalLabel44" aria-hidden="true">
                                                <div class="modal-dialog modal-dialog-centered">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="exampleModalLabel44">修改班级信息
                                                            </h5>
                                                            <button type="button" class="close" data-dismiss="modal"
                                                                    aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>


                                                        <%--修改班级弹框开始--%>
                                                        <div class="modal-body">
                                                            <form class="row" id="form44${classes.classId}" action="<%=path%>/admin/updateClasses/${byClassesPage.currPage}/${classes.classId}">
                                                                <div class="form-group col-6">
                                                                    <label for="recipient-name44"
                                                                           class="col-form-label" >班级名称</label>
                                                                    <input type="text" class="form-control"
                                                                           id="recipient-name44" value="${classes.className}" name="className">
                                                                </div>
                                                                <div class="form-group col-6">
                                                                    <label for="recipient-num44"
                                                                           class="col-form-label">班级号</label>
                                                                    <input type="text" class="form-control"
                                                                           id="recipient-num44" value="${classes.classId}" name="classId">
                                                                </div>
                                                                <div class="form-group col-6">
                                                                    <label for="recipient-tname44"
                                                                           class="col-form-label">班主任姓名</label>
                                                                    <input type="text" class="form-control"
                                                                           id="recipient-tname44" value="${classes.classTeacherName}" name="classTeacherName" disabled="disabled">
                                                                </div>
                                                                <div class="form-group col-6">
                                                                    <label for="recipient-email44"
                                                                           class="col-form-label">班主任工号</label>
                                                                    <input type="text" class="form-control"
                                                                           id="recipient-email44" value="${classes.classTeacherId}" name="classTeacherId" disabled="disabled">
                                                                </div>
                                                            </form>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="reset" class="btn btn-secondary"
                                                                    form="form44${classes.classId}">重置</button>
                                                            <button type="submit" class="btn btn-primary "
                                                                    <%--data-dismiss="modal"--%> form="form44${classes.classId}">提交</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            </c:forEach>

                            <c:if test="${byClassesPage.lists.size()==0}">
                                <tr class="text-center">
                                    <td colspan="6">没有此班级</td>
                                </tr>
                            </c:if>

                            </tbody>
                        </table>
                    </div>

                    <c:if test="${empty flag}">
                        <%--班级管理页码显示--%>
                        <div class="btn-toolbar float-right" role="toolbar" aria-label="Toolbar with button groups">
                            <div class="btn-group mr-2" role="group" aria-label="First group">

                                    <%--首页按钮实现--%>
                                <c:if test="${byClassesPage.currPage==1}">
                                    <button type="button" class="btn btn-light" disabled>首页</button>
                                </c:if>
                                <c:if test="${byClassesPage.currPage!=1}">
                                    <button type="button" class="btn btn-light"
                                            onclick="window.location.href='<%=path%>/admin/classespage/${4}?currPage=1'">首页</button>
                                </c:if>
                                    <%--首页按钮实现结束--%>
                                    <%--上一页实现按钮--%>
                                <c:if test="${byClassesPage.currPage==1}">
                                    <button type="button" class="btn btn-light" disabled>&laquo;</button>
                                </c:if>
                                    <%--当前页不等于1时--%>
                                <c:if test="${byClassesPage.currPage!=1}">
                                    <button type="button" class="btn btn-light"
                                            onclick="window.location.href='<%=path%>/admin/classespage/${4}?currentPage=${byClassesPage.currPage-1}'">&laquo;</button>
                                </c:if>
                                    <%--上一页实现按钮结束--%>

                                    <%--显示五个页码开始--%>
                                <c:choose>
                                    <%--当总页码少于等于5时--%>
                                    <c:when test="${byClassesPage.totalPage<=5}">
                                        <c:set var="begin" value="1"/>
                                        <c:set var="end" value="${byClassesPage.totalPage}"/>
                                    </c:when>
                                    <%--当总页码大于5时--%>
                                    <c:when test="${byClassesPage.totalPage>5}">
                                        <c:choose>
                                            <%--当 当前页码小于等于3时--%>
                                            <c:when test="${byClassesPage.currPage<=3}">
                                                <c:set var="begin" value="1"/>
                                                <c:set var="end" value="5"/>
                                            </c:when>
                                            <%--当 当前页码大于总页码减2时--%>
                                            <c:when test="${byClassesPage.currPage>=byClassesPage.totalPage-2}">
                                                <c:set var="begin" value="${byClassesPage.totalPage-4}"/>
                                                <c:set var="end" value="${byClassesPage.totalPage}"/>
                                            </c:when>
                                            <%--其他情况--%>
                                            <c:otherwise>
                                                <c:set var="begin" value="${byClassesPage.currPage-2}"/>
                                                <c:set var="end" value="${byClassesPage.currPage+2}"/>
                                            </c:otherwise>
                                        </c:choose>
                                    </c:when>
                                </c:choose>
                                <c:forEach begin="${begin}" end="${end}" var="i">
                                    <c:if test="${byClassesPage.currPage!=i}">
                                        <button type="button" class="btn btn-light"
                                                onclick="window.location.href='<%=path%>/admin/classespage/${4}?currentPage=${i}'">${i}</button>
                                    </c:if>
                                    <c:if test="${byClassesPage.currPage==i}">
                                        <button type="button" class="btn btn-primary">${i}</button>
                                    </c:if>
                                </c:forEach>
                                    <%--显示五个页码结束--%>

                                    <%--显示下一页按钮--%>
                                <c:if test="${byClassesPage.currPage==byClassesPage.totalPage}">
                                    <button type="button" class="btn btn-light" disabled>&raquo;</button>
                                </c:if>
                                <c:if test="${byClassesPage.currPage!=byClassesPage.totalPage}">
                                    <button type="button" class="btn btn-light"
                                            onclick="window.location.href='<%=path%>/admin/classespage/${4}?currentPage=${byClassesPage.currPage+1}'">&raquo;</button>
                                </c:if>
                                    <%--显示下一页按钮结束--%>
                                    <%--显示末页按钮--%>
                                <c:if test="${byClassesPage.currPage==byClassesPage.totalPage}">
                                    <button type="button" class="btn btn-light" disabled>末页</button>
                                </c:if>
                                <c:if test="${byClassesPage.currPage!=byClassesPage.totalPage}">
                                    <button type="button" class="btn btn-light"
                                            onclick="window.location.href='<%=path%>/admin/classespage/${4}?currentPage=${byClassesPage.totalPage}'">末页</button>
                                </c:if>
                                    <%--显示末页按钮结束--%>
                            </div>
                        </div>
                        <%--班级管理页码显示结束--%>
                    </c:if>


                </div>
            </div>
            <!-- 班级管理部分结束-->
        </div>
    </div>
</div>


</body>

</html>