
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

    <script src="<%=path%>/static/js/jquery-3.6.0.js"></script>
    <script src="<%=path%>/static/js/bootstrap.js"></script>
    <!-- 引入 echarts.js -->
    <script src="https://cdn.staticfile.org/echarts/4.3.0/echarts.min.js"></script>
    <style>
        a:hover {
            text-decoration: none;
        }
        #list:hover {
            box-shadow: 0px 0px 10px 5px rgb(224, 224, 224);
        }
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
    <a class="navbar-brand  text-white" href="#">活动主页</a>
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
<div class="mx-4">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            您的位置：
            <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/index">主页</a></li>
            <li class="breadcrumb-item">活动主页</li>
        </ol>
    </nav>
</div>
<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
<div id="main" style="width: 100%;height: 600px; margin-top: -12px;"></div>
<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));
    myChart.on('click', function(params) {
        console.log(params.name);
        window.open('https://www.baidu.com/s?wd=' + encodeURIComponent(params.name));
        // window.open('https://www.baidu.com/s?wd=' + encodeURIComponent(params.value));
    });

    // 指定图表的配置项和数据
    var colorList = [[
        '#ff7f50', '#87cefa', '#da70d6', '#32cd32', '#6495ed',
        '#ff69b4', '#ba55d3', '#cd5c5c', '#ffa500', '#40e0d0',
        '#1e90ff', '#ff6347', '#7b68ee', '#d0648a', '#ffd700',
        '#6b8e23', '#4ea397', '#3cb371', '#b8860b', '#7bd9a5'
    ],
        [
            '#ff7f50', '#87cefa', '#da70d6', '#32cd32', '#6495ed',
            '#ff69b4', '#ba55d3', '#cd5c5c', '#ffa500', '#40e0d0',
            '#1e90ff', '#ff6347', '#7b68ee', '#00fa9a', '#ffd700',
            '#6b8e23', '#ff00ff', '#3cb371', '#b8860b', '#30e0e0'
        ],
        [
            '#929fff', '#9de0ff', '#ffa897', '#af87fe', '#7dc3fe',
            '#bb60b2', '#433e7c', '#f47a75', '#009db2', '#024b51',
            '#0780cf', '#765005', '#e75840', '#26ccd8', '#3685fe',
            '#9977ef', '#f5616f', '#f7b13f', '#f9e264', '#50c48f'
        ]][2];

    var option = {
        // 图表标题
        title: {
            show:true,//显示策略，默认值true,可选为：true（显示） | false（隐藏）
            text: '\n校园创意活动',//主标题文本，'\n'指定换行
            x: 'center',       // 水平安放位置，默认为左对齐，可选为：
            // 'center' ¦ 'left' ¦ 'right'
            // ¦ {number}（x坐标，单位px）
            y: 'top',             // 垂直安放位置，默认为全图顶端，可选为：
            // 'top' ¦ 'bottom' ¦ 'center'
            // ¦ {number}（y坐标，单位px）
            //textAlign: null          // 水平对齐方式，默认根据x设置自动调整
            backgroundColor: 'rgba(0,0,0,0)',
            borderColor: '#ccc',    // 标题边框颜色
            borderWidth: 0,         // 标题边框线宽，单位px，默认为0（无边框）
            padding: 5,             // 标题内边距，单位px，默认各方向内边距为5，
                                    // 接受数组分别设定上右下左边距，同css
            itemGap: 10,            // 主副标题纵向间隔，单位px，默认为10，
            textStyle: {
                fontSize: 18,
                fontWeight: 'bolder',
                color: '#333'        // 主标题文字颜色
            },
            subtextStyle: {
                color: '#aaa'        // 副标题文字颜色
            }
        },
        backgroundColor: '#fff',
        tooltip: {},
        animationDurationUpdate: function(idx) {
            // 越往后的数据延迟越大
            return idx * 100;
        },
        animationEasingUpdate: 'bounceIn',
        color: ['#fff', '#fff', '#fff'],
        series: [{
            type: 'graph',
            layout: 'force',
            force: {
                repulsion: 500,
                edgeLength: 10
            },
            roam: true,
            label: {
                normal: {
                    show: true
                }
            },
            data: [{
                "name": "学子手绘创意面具脸谱 “玩美”国粹",
                "value": 2373,
                "symbolSize": 48,
                "draggable": true,
                "itemStyle": {
                    "normal": {
                        "shadowBlur": 100,
                        "shadowColor": colorList[0],
                        "color": colorList[0]
                    }
                }
            }, {
                "name": "大学生制作“山洞图书馆”",
                "value": 5449,
                "symbolSize": 73,
                "draggable": true,
                "itemStyle": {
                    "normal": {
                        "shadowBlur": 100,
                        "shadowColor": colorList[1],
                        "color": colorList[1]
                    }
                }
            }, {
                "name": "“生涯在握 时间主语”系列活动之时光慢递仪式",
                "value": 2289,
                "symbolSize": 67,
                "draggable": true,
                "itemStyle": {
                    "normal": {
                        "shadowBlur": 100,
                        "shadowColor": colorList[2],
                        "color": colorList[2]
                    }
                }
            }, {
                "name": "大学生举办电影剧本创意模拟路演活动",
                "value": 2518,
                "symbolSize": 50,
                "draggable": true,
                "itemStyle": {
                    "normal": {
                        "shadowBlur": 100,
                        "shadowColor": colorList[3],
                        "color": colorList[3]
                    }
                }
            }, {
                "name": "“夺宝奇兵之五彩密码”校园趣味寻宝活动",
                "value": 4730,
                "symbolSize": 88,
                "draggable": true,
                "itemStyle": {
                    "normal": {
                        "shadowBlur": 100,
                        "shadowColor": colorList[4],
                        "color": colorList[4]
                    }
                }
            }, {
                "name": "校园活动“不打烊”，学生宅家也欢乐！",
                "value": 1952,
                "symbolSize": 55,
                "draggable": true,
                "itemStyle": {
                    "normal": {
                        "shadowBlur": 100,
                        "shadowColor": colorList[5],
                        "color": colorList[5]
                    }
                }
            }, {
                "name": "大学生自制水泥笔筒、洗衣液送新生活动",
                "value": 926,
                "symbolSize": 70,
                "draggable": true,
                "itemStyle": {
                    "normal": {
                        "shadowBlur": 100,
                        "shadowColor": colorList[6],
                        "color": colorList[6]
                    }
                }
            }, {
                "name": "‘云’游校园,直播看校园活动",
                "value": 4536,
                "symbolSize": 67,
                "draggable": true,
                "itemStyle": {
                    "normal": {
                        "shadowBlur": 100,
                        "shadowColor": colorList[7],
                        "color": colorList[7]
                    }
                }
            }, {
                "name": "大学生自制校徽校训月饼模具庆中秋活动",
                "value": 750,
                "symbolSize": 47,
                "draggable": true,
                "itemStyle": {
                    "normal": {
                        "shadowBlur": 100,
                        "shadowColor": colorList[8],
                        "color": colorList[8]
                    }
                }
            }, {
                "name": "大学生“趣味桌游棋牌大赛”",
                "value": 493,
                "symbolSize": 82,
                "draggable": true,
                "itemStyle": {
                    "normal": {
                        "shadowBlur": 100,
                        "shadowColor": colorList[9],
                        "color": colorList[9]
                    }
                }
            }, {
                "name": " “化香为你，独家记忆”女生节大学生DIY香水",
                "value": 385,
                "symbolSize": 59,
                "draggable": true,
                "itemStyle": {
                    "normal": {
                        "shadowBlur": 100,
                        "shadowColor": colorList[10],
                        "color": colorList[10]
                    }
                }
            }, {
                "name": "《我和我的祖国》快闪活动",
                "value": 4960,
                "symbolSize": 90,
                "draggable": true,
                "itemStyle": {
                    "normal": {
                        "shadowBlur": 100,
                        "shadowColor": colorList[11],
                        "color": colorList[11]
                    }
                }
            }, {
                "name": "大学生心理健康趣味运动会",
                "value": 8694000,
                "symbolSize": 134,
                "draggable": true,
                "itemStyle": {
                    "normal": {
                        "shadowBlur": 100,
                        "shadowColor": colorList[12],
                        "color": colorList[12]
                    }
                }
            }, {
                "name": "垃圾分类趣味运动会",
                "value": 5668,
                "symbolSize": 75,
                "draggable": true,
                "itemStyle": {
                    "normal": {
                        "shadowBlur": 100,
                        "shadowColor": colorList[13],
                        "color": colorList[13]
                    }
                }
            }, {
                "name": "大学生园艺植物微景观创意大赛",
                "value": 339,
                "symbolSize": 68,
                "draggable": true,
                "itemStyle": {
                    "normal": {
                        "shadowBlur": 100,
                        "shadowColor": colorList[14],
                        "color": colorList[14]
                    }
                }
            }, {
                "name": "创客挑战赛：烧脑48小时 让创意变“现实”",
                "value": 671,
                "symbolSize": 62,
                "draggable": true,
                "itemStyle": {
                    "normal": {
                        "shadowBlur": 100,
                        "shadowColor": colorList[15],
                        "color": colorList[15]
                    }
                }
            }, {
                "name": "“手绘糖画，传承非遗”活动",
                "value": 27000,
                "symbolSize": 114,
                "draggable": true,
                "itemStyle": {
                    "normal": {
                        "shadowBlur": 100,
                        "shadowColor": colorList[16],
                        "color": colorList[16]
                    }
                }
            }, {
                "name": "真人版“跳一跳” 让十九大精神更入脑",
                "value": 10777000,
                "symbolSize": 130,
                "draggable": true,
                "itemStyle": {
                    "normal": {
                        "shadowBlur": 100,
                        "shadowColor": colorList[17],
                        "color": colorList[17]
                    }
                }
            },
            ]
        }]
    };
    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
</script>


<script src="https://eqcn.ajz.miesnfu.com/wp-content/plugins/wp-3d-pony/live2dw/lib/L2Dwidget.min.js"></script>
<!--小帅哥： https://unpkg.com/live2d-widget-model-chitose@1.0.5/assets/chitose.model.json-->
<!--萌娘：https://unpkg.com/live2d-widget-model-shizuku@1.0.5/assets/shizuku.model.json-->
<!--小可爱（女）：https://unpkg.com/live2d-widget-model-koharu@1.0.5/assets/koharu.model.json-->
<!--小可爱（男）：https://unpkg.com/live2d-widget-model-haruto@1.0.5/assets/haruto.model.json-->
<!--初音：https://unpkg.com/live2d-widget-model-miku@1.0.5/assets/miku.model.json-->
<!-- 上边的不同链接显示的是不同的小人，这个可以根据需要来选择 下边的初始化部分，可以修改宽高来修改小人的大小，或者是鼠标移动到小人上的透明度，也可以修改小人在页面出现的位置。 -->
<script>
    /*https://unpkg.com/live2d-widget-model-shizuku@1.0.5/assets/shizuku.model.json*/
    L2Dwidget.init({ "model": { jsonPath:
                "https://unpkg.com/live2d-widget-model-haruto@1.0.5/assets/haruto.model.json",
            "scale": 1 }, "display": { "position": "right", "width": 110, "height": 150,
            "hOffset": 0, "vOffset": -20 }, "mobile": { "show": true, "scale": 0.5 },
        "react": { "opacityDefault": 0.8, "opacityOnHover": 0.1 } });
</script>
</body>
</html>