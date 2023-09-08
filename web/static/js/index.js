$(function(){
    // 隐藏侧边栏
    $('.del').click(function(){
        $('.sidebar').animate({
            "left":"-300px",
        })
    })
    // 弹出侧边栏
    $('.show').click(function(){
        $('.sidebar').animate({
            "left":"0px",
        })
    })
    // 隐藏注册表
    $('.del1').click(function(){
        $('.reg').animate({
            "top":"-100vh",
        })
        $('.reg').hide();
        $('.main').show();
    })
    // 弹出注册表
    $('.show1').click(function(){
        $('.reg').animate({
            "top":"0px",
        })
        $('.reg').show();
        $('.main').hide();
    })

})



