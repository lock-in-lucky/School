
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>在线选课系统</title>
    <link rel="shortcut icon" href="https://cdn4.iconfinder.com/data/icons/education-24/63/graduation-512.png" type="image/x-icon">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/tailwind.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css">
    <%--<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-3.6.0.js"/>
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/tailwind.min.css" />--%>

    <style>
        .code {
            display: inline-block;
            font-family: Arial;
            font-style: italic;
            color: rgb(255, 255, 255);
            font-size: 28px;
            letter-spacing: 2px;
            font-weight: bolder;
            cursor: pointer;
            line-height: 30px;
            text-align: center;
            vertical-align: middle;
            background-color: #6dabdd;
            border-radius: 1rem;
            padding: 4px 2px;
            margin: 5px 0 0 0;
            float: right;
        }

        .free {
            display: block;
            position: relative;
        }

        .er {
            font-family: Arial;
            font-style: italic;
            font-weight: bold;
            padding: 8px 10px;
            margin: 0 0 0 -10px;
            border-radius: 1rem;
            color: rgb(236, 48, 48);
            font-size: 12px;
            display: block;
            position: absolute;
            top: -5px;
            left: 10px;
        }

        .buttvis {
            position: absolute;
            top: -30px;
            right: 10px;
        }

        #Phonelogin {
            display: none;
        }
        div.at-container {
            display: flex;
            align-items: center;
            justify-content: center;
            height: auto;
        }
        .at-item {
            color: #ffffff;
            animation-name: focus-in-contract;
            animation-duration: 1s;
            animation-timing-function: ease-in;
            animation-delay: 0s;
            animation-iteration-count: 1;
            animation-direction: alternate;
            animation-fill-mode: backwards;
        }
        @keyframes focus-in-contract {
            0%{
                letter-spacing: 1em;
                filter: blur(12px);
                opacity: 0;
            }
            100%{
                filter: blur(0);
                opacity: 1;
            }
        }


    </style>
</head>

<body>
<div class="relative min-h-screen flex">
    <div class="
                    flex flex-col
                    sm:flex-row
                    items-center
                    md:items-start
                    sm:justify-center
                    md:justify-start
                    flex-auto
                    min-w-0
                    bg-white
                ">
        <div class="
                        sm:w-1/2
                        xl:w-3/5
                        h-full
                        hidden
                        md:flex
                        flex-auto
                        items-center
                        justify-center
                        p-10
                        overflow-hidden
                        bg-purple-900
                        text-white
                        bg-no-repeat bg-cover
                        relative
                    " style="background-image: url(${pageContext.request.contextPath}/static/img/img.jpg)">
            <div class="
                            absolute
                            bg-gradient-to-b
                            from-indigo-600
                            to-blue-200
                            opacity-75
                            inset-0
                            z-0
                        "></div>
            <div class="w-full max-w-md z-10">
                <div class="sm:text-4xl xl:text-5xl font-bold leading-tight mb-6">
                    <div class='at-container'>
                    <h1 class='at-item'>欢迎登入</h1>
                </div>
                </div>
                <div class="sm:text-sm xl:text-base text-gray-200 font-normal" id="banner">
                    不计辛勤一砚寒，桃熟流丹，李熟技残，种花容易树人难。幽谷飞香不一般，诗满人间，画满人间，英才济济笑开颜。
                </div>
            </div>


            <ul class="circles">
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
            </ul>
        </div>
    </div>
        <div class="
                        md:flex md:items-center md:justify-center
                        w-full
                        sm:w-auto
                        md:h-full
                        w-2/5
                        xl:w-2/5
                        p-8
                        md:p-10
                        lg:p-10
                        sm:rounded-lg
                        md:rounded-none
                        bg-white
                    ">
            <div class="max-w-md w-full mx-auto space-y-8">
                <div class="text-center">
                    <h2 class="mt-6 text-3xl font-bold text-gray-900">在线选课系统</h2>

                </div>
                <!--学生登入-->
                <div class="flex flex-row justify-center items-center space-x-3">

                </div>
                <div class="flex items-center justify-center space-x-2">
                    <span class="h-px w-16 bg-gray-200"></span>
                    <span class="text-gray-300 font-normal" id="loginmode">管理员登录</span>
                    <span class="h-px w-16 bg-gray-200"></span>
                </div>
                <form class="mt-8 space-y-6 " action="${pageContext.request.contextPath}/adminLogon" method="POST" >
                    <input type="hidden" name="remember" value="true" />
                    <div class="relative">
                        <label class="ml-3 text-sm font-bold text-gray-700 tracking-wide"
                               id="accountstyle">管理员账号</label>
                        <input class="
                                        w-full
                                        text-base
                                        px-4
                                        py-2
                                        border-b border-gray-300
                                        focus:outline-none
                                        rounded-2xl
                                        focus:border-indigo-500
                                    " id="accountBoxDefaults" type="text" placeholder="请输入管理员账号" name="adminId"
                               value="${admin.adminId}" />
                    </div>
                    <!--密码输入-->
                    <div class="mt-8 content-center">
                        <label class="ml-3 text-sm font-bold text-gray-700 tracking-wide">密码</label>
                        <input class="
                                        w-full
                                        content-center
                                        text-base
                                        px-4
                                        py-1
                                        border-b
                                        rounded-2xl
                                        border-gray-300
                                        focus:outline-none focus:border-indigo-500
                                    " id="pwd" type="password" placeholder="请输入密码" name="adminPassword"
                               value="${admin.adminPassword}" />
                        <span class="free">
                                <!--密码可见性-->
                                <button type="button" onclick="Visibility();" class="buttvis"><svg t="1639275935140"
                                                                                                   class="icon" viewBox="0 0 1535 1024" version="1.1"
                                                                                                   xmlns="http://www.w3.org/2000/svg" p-id="21347" width="30" height="30">
                                        <path
                                                d="M31.013921 582.096649c17.452085-16.497533 34.309826-33.589409 51.473744-50.42914 7.06008-6.915996 16.515543-11.274515 23.8818-18.334595q13.345712-12.769379 27.141684-25.070487c33.247212-29.573089 68.205412-57.03896 103.307695-84.414778q12.877441-10.013786 25.754883-20.045583l12.967493-10.15787a65.46783 65.46783 0 0 0 6.519767-5.132966c3.710144-3.818206 4.736737-8.428871 5.979455-13.363722q8.464891-33.661451 18.98297-66.78259c13.345712-42.162363 28.906704-83.640331 46.358788-124.27181 19.991552-46.556903 42.198384-92.159254 65.611913-137.095219l-32.923024-13.886024c-3.692133 12.463202-10.410015 23.413529-17.68622 34.05768l32.923024 13.886024c4.808779-11.814827 11.688754-22.819186 17.68622-34.05768h-31.103973c17.398053 26.511319 30.113401 55.616137 42.126342 84.865038 6.429715 15.651044 12.769379 31.356119 19.469251 46.827059a88.052881 88.052881 0 0 1 4.718726 10.806244 26.11509 26.11509 0 0 1 0.468271 5.691289c0.684395 9.581537 6.681861 18.010407 10.60813 26.511319 6.339663 13.868014 8.554943 32.887004 25.916976 36.885314 10.247922 2.359363 20.009562-4.970872 28.816651-9.365411q12.319119-6.141549 24.76431-11.994932a635.497218 635.497218 0 0 1 90.736432-35.102283c33.517368-9.833682 66.962694-15.434919 101.938904-15.236805 36.813272 0.216125 73.356389 4.952862 109.863484 8.753058a354.28272 354.28272 0 0 1 49.708724 8.897141c17.452085 4.376529 35.048252 8.753058 51.509765 16.083294 15.813138 7.042069 31.374129 14.624451 46.953131 22.152801 7.420288 3.602081 14.840576 7.204163 22.296884 10.64415 9.221328 4.304487 18.838886 10.662161 29.284922 7.528351 12.607285-3.746165 17.452085-16.029262 21.738562-27.015611q5.403122-13.831993 10.60813-27.700006c6.934007-18.280563 13.795972-36.597147 21.000135-54.769649 13.831993-34.92218 29.21288-69.268026 48.628099-101.506655h-31.085963c5.979455 11.238494 12.859431 22.242853 17.68622 34.05768l32.923024-13.886024c-7.204163-10.698182-13.994086-21.612489-17.686219-34.05768l-32.923025 13.886024c21.504426 44.197539 44.017435 87.944818 63.504696 133.09691 19.289146 44.66581 36.128877 90.592348 51.221598 136.879094 4.988883 15.290836 9.797662 30.617692 14.048118 46.160674l4.664695 17.019835c0.288167 1.080624 0.540312 2.19727 0.900521 3.259883 2.66554 7.94259 9.779651 11.868858 16.209366 16.569575 38.218084 28.186287 75.301513 57.885449 111.430389 88.701256 41.604041 35.498513 81.911332 72.491889 121.15601 110.565889l-4.628675-7.942589 3.710144 11.418598 4.628674-17.524126c-76.580251 74.148846-157.230855 144.443466-243.518715 207.065651-64.495268 46.827059-132.088326 89.727849-203.193414 125.838715q-21.23427 10.806244-42.90079 20.711969-10.265932 4.700716-20.621917 9.167297l-5.186997 2.23329a14.642461 14.642461 0 0 1-1.476853 0.630365c-3.367946 1.386801-6.717882 2.791613-10.103839 4.160404-23.071332 9.347401-46.484861 17.848314-70.240588 25.21457-18.658782 5.781341-37.551699 10.806244-56.64273 15.0567q-11.526661 2.521457-23.143374 4.574644-5.078935 0.88251-10.17588 1.674968l-4.592654 0.684395-2.071196 0.288167c-3.151821 0.468271 5.403122-0.684395 1.638947-0.216125a298.864697 298.864697 0 0 1-37.677772 2.66554c-11.0764 0-21.954686 0-33.013077-0.990572-5.205008-0.468271-10.373995-1.116645-15.560991-1.801041-2.629519-0.306177 5.583226 0.792458 1.909103 0.252146l-2.071197-0.288167-4.916841-0.738427q-5.132966-0.792458-10.229912-1.692978c-16.731668-2.953707-33.301243-6.699871-49.726734-11.05839-21.522437-5.709299-42.756707-12.427181-63.70281-19.937521q-18.748834-6.717882-37.173481-14.246232l-8.843109-3.602081c-3.061769-1.260729 0 0 0.45026 0.198114l-2.575489-1.098635-5.205007-2.23329q-10.373995-4.484591-20.657937-9.203318c-66.926673-30.617692-130.791577-67.827194-191.882879-108.818881-82.559707-55.436033-160.040478-118.040209-233.55896-184.91285q-32.238629-29.302933-63.414644-59.632458l4.628675 7.942589-3.710144-11.544671a18.406636 18.406636 0 0 0-22.152801-12.607285c-9.005204 2.503447-15.597013 12.859431-12.607285 22.152801 2.611509 8.050652 4.41255 15.200784 10.482057 21.486416 10.536088 10.896296 21.936676 21.090187 32.995066 31.464181q32.094546 30.09539 65.233695 59.056125 60.424916 52.770493 124.505945 101.128437c67.160808 50.555213 137.689563 96.968032 212.090555 136.194699 52.806514 27.84409 107.738256 52.230181 164.507059 70.816921 34.50794 11.274515 69.88038 20.477833 105.829153 25.62881a322.026081 322.026081 0 0 0 47.475433 4.070352c10.500067 0 20.892072 0 31.356119-0.8645a526.696348 526.696348 0 0 0 88.214975-15.47094c49.834797-12.877441 98.156719-31.248056 145.037809-52.410285 67.935256-30.617692 132.736701-68.13337 194.674492-109.539296 85.279278-57.002939 165.479621-121.570249 241.339456-190.478067q33.265222-30.203453 65.485841-61.541561a17.866324 17.866324 0 0 0 4.628674-17.524127c-1.224708-3.764175-2.323343-7.600392-3.602081-11.328546-4.124383-11.310536-17.596168-20.567885-26.151111-28.690578q-25.64682-24.386091-51.942015-48.087788-52.788504-47.529465-108.422651-91.853076-32.418733-25.700851-65.864059-50.158984l8.284787 10.806244A1567.553801 1567.553801 0 0 0 1190.541947 96.536071c-13.543826-28.402412-27.718017-56.498647-41.423936-84.792997-9.005204-18.460667-38.650334-5.403122-32.923025 13.886024 4.574643 15.452929 12.301108 29.392985 21.306312 42.666654 5.024904 7.384267 13.940055 11.130432 22.494999 7.366257 7.420288-3.259884 13.868014-12.82341 10.428025-21.252281-6.033486-14.822565-13.813982-28.564506-21.306311-42.666654-6.483747-12.175035-24.368081-11.202473-31.103974 0-37.821855 63.036425-60.623031 133.691253-87.440527 201.842633l4.628675-7.942589q-3.99831 3.602081 0.558323 1.098634l13.886024 1.801041c-16.695647-7.492329-33.121139-15.560992-49.600662-23.503581-17.380043-8.374839-35.012232-17.740251-53.238763-24.115935-38.308136-13.381733-78.29124-18.982969-118.400417-23.41353-38.90248-4.214435-78.057105-8.428871-117.247751-6.015476-37.821855 2.341353-74.887273 11.562681-110.54788 23.989863-39.136615 13.633878-76.760355 31.302088-113.627659 50.122963l13.886024-1.801041q5.114956 3.872238 3.025749 1.801041l4.628674 7.942589q-4.916841-14.120159-11.004358-27.754037c-1.945124-4.358519-4.016321-8.644995-6.15956-12.913462-3.602081-7.294215 0.252146-0.396229-0.666385 0.342198 0.756437-0.594343-0.8645-9.905724-0.738426-9.221329-1.692978-9.311381-7.114111-18.316584-10.806245-27.015611-3.512029-8.266777-6.897986-16.587585-10.283942-24.908393-14.408326-35.336419-28.816652-71.19514-49.762755-103.253664-7.07809-10.806244-24.422112-12.607285-31.103974 0-7.51034 14.102149-15.272825 27.84409-21.306311 42.666654-3.331925 8.194735 2.953707 18.244542 10.428025 21.252281 8.644995 3.476009 17.326012 0.252146 22.494999-7.366257 9.005204-13.27367 16.731668-27.213725 21.306312-42.666654 5.727309-19.307157-23.413529-32.184598-32.923025-13.886024-44.197539 84.829018-84.072581 172.269545-113.465565 263.384195q-12.607285 38.992532-22.440967 78.777521l4.628674-7.94259c-42.666655 33.679461-86.23383 66.278299-127.621745 101.560686q-15.9212 13.561837-31.356119 27.663986-7.366257 6.753903-14.60644 13.633878a113.573628 113.573628 0 0 1-15.380888 11.652734c-11.742785 7.996621-21.21626 19.289146-31.266067 29.21288S16.083294 546.796251 5.691289 556.611923c-17.019835 15.975231 8.482902 41.423937 25.322632 25.484726z"
                                                fill="#23B0E4" p-id="21348"></path>
                                        <path id="passwordIcon" d=" " fill="#23B0E4" p-id="21544"></path>
                                    </svg>
                                </button>
                            </span>
                        <span class="free"><span class="er" id="passwordmsgerr">${msgerr}</span></span>
                    </div>
                    <div class="mt-8 content-center ">
                        <label class="ml-3 text-sm font-bold text-gray-700 tracking-wide ">验证码</label>
                        <div class="w-full
                                ">
                            <input class="
                                    content-center
                                    text-base
                                    px-3
                                    py-2
                                    border-b
                                    rounded-2xl
                                    border-gray-300
                                    focus:outline-none focus:border-indigo-500
                                " id="inputCode" type="text" placeholder="点击图片生成验证码" />
                            <div id="checkCode" class="code" onclick="createCode()">
                            </div>
                            <span class="free"><span class="er"></span></span>
                        </div>
                    </div>
                    <div class="flex items-center justify-between">
                        <div class="flex items-center">
                            <input id="remember_me" name="remember_me" type="checkbox" class="
                                            h-4
                                            w-4
                                            bg-blue-500
                                            focus:ring-blue-400
                                            border-gray-300
                                            rounded
                                        " />
                            <label for="remember_me" class="ml-2 block text-sm text-gray-900">记住我</label>
                        </div>

                    </div>
                    <div>
                        <button type="button" class="
                                        w-full
                                        flex
                                        justify-center
                                        bg-gradient-to-r
                                        from-indigo-500
                                        to-blue-600
                                        hover:bg-gradient-to-l
                                        hover:from-blue-500
                                        hover:to-indigo-600
                                        text-gray-100
                                        p-4
                                        rounded-full
                                        tracking-wide
                                        font-semibold
                                        shadow-lg
                                        cursor-pointer
                                        transition
                                        ease-in
                                        duration-500
                                    "
                                id="loginbut";
                                onclick=validateCode();
                        >登 录</button>
                    </div>
                    </p>
                </form>
            </div>
        </div>
    </div>
    </div>
${msgerr}
</body>
<script>
    //页面加载时，生成随机验证码
    var items = document.getElementsByClassName('er');
    //获取账号框默认值
    var accountstyle = document.getElementById('accountstyle');
    //获取手机号登入
    var accountBoxDefaults = document.getElementById('accountBoxDefaults');
    //获取密码
    var pwd = document.getElementById('pwd');
    window.onload = function () {
        createCode();

    }


    pwd.addEventListener("input",inputHandler);
    function inputHandler(){
        items[0].innerHTML=' ';
    }

    // var passwordmsgerr = document.getElementById("passwordmsgerr");
    // passwordmsgerr.onkeypress=function (){
    //     console.log(111);
    //     items[0].innerHTML=' ';
    // }
    // passwordmsgerr.addEventListener("input",inputHandler);
    // function inputHandler(){
    // }

    //生成验证码的方法
    function createCode() {

        var code = "";
        var codeLength = parseInt(4); //验证码的长度
        var checkCode = document.getElementById("checkCode");
        ////所有候选组成验证码的字符，当然也可以用中文的
        var codeChars = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9,
            'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z',
            'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z');
        //循环组成验证码的字符串
        for (var i = 0; i < 4; i++) {
            //获取随机验证码下标
            var charNum = Math.floor(Math.random() * 62);
            //组合成指定字符验证码
            code += codeChars[charNum];
        }
        if (checkCode) {
            //为验证码区域添加样式名
            checkCode.className = "code";
            //将生成验证码赋值到显示区
            checkCode.innerHTML = code;
        }
    }

    //检查验证码是否正确
    function validateCode() {
        //获取显示区生成的验证码
        var checkCode = document.getElementById("checkCode").innerHTML;
        //获取输入的验证码
        var inputCode = document.getElementById("inputCode").value;
        //获取验证码报错的span

        var banner = document.getElementById('banner');
        var loginbut=document.getElementById('loginbut');
        console.log(checkCode);
        console.log(inputCode);
        console.log(accountBoxDefaults.value);
        console.log(pwd);
        console.log(loginbut.type);
        items[0].innerHTML='${msgerr}';
        if(pwd.value.length==0){
            items[0].innerHTML = '请输入密码';
        }else{
            items[0].innerHTML = ' ';
        }
        if (inputCode.length <= 0 ) {
            //密码提示框
            items[1].innerHTML = '请输入验证码！';
        }
        else if (inputCode.toUpperCase() != checkCode.toUpperCase()) {
            items[1].innerHTML = '验证码有误！';
            createCode();
        }
        else {
            items[1].innerHTML = ' ';
            items[0].innerHTML = '';
            loginbut.type='submit';
        }
    }
    //密码可见性
    var a = 1;
    function Visibility() {
        //获取密码可见性图标
        var passwordIcon = document.getElementById('passwordIcon');
        a++;
        if (a % 2 == 0) {
            pwd.type = "text";
            // console.log( passwordIcon.id);
            passwordIcon.setAttribute("d", "M941.530057 550.200218a188.514932 188.514932 0 0 1-334.111064 119.769208c-50.42914-60.785124-56.516658-149.864598-15.741096-217.295563a190.910316 190.910316 0 0 1 83.802425-74.400992 188.190745 188.190745 0 0 1 266.031725 171.909336c0 11.580692 18.010407 11.616713 18.010407 0a206.99361 206.99361 0 0 0-37.821855-118.97675 206.489319 206.489319 0 0 0-225.022028-79.768093 206.525339 206.525339 0 0 0-29.230891 386.719463 209.298942 209.298942 0 0 0 126.973371 14.408326 206.489319 206.489319 0 0 0 162.525915-170.054265 219.402781 219.402781 0 0 0 2.575488-32.418733c0.054031-11.472629-17.956376-11.49064-17.992397 0.108063z");
        }
        else {
            pwd.type = "password";
            passwordIcon.setAttribute("d", " ");
        }
    }
</script>

</html>