<%--
  Created by IntelliJ IDEA.
  User: shuaigehong
  Date: 2016/5/11
  Time: 12:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>活动介绍页</title>
    <link rel="stylesheet" href="../../../css/css.css">
</head>
<body>
<div class="wrapper">
    <div id="content" class="content"> <div class="s_arr"><a  class="s_left png"></a> <a  class="s_right png"></a></div>
        <div id="color_list" class="bg_colors">
            <div class="bgs_box bgs_1">
                <div class="wp">
                    <div class="img_area">
                        <div class="shadow png">
                            <div class="s_img"></div>
                        </div>
                    </div>
                </div>

            </div>
            <div class="bgs_box bgs_2">
                <div class="wp">
                    <div class="img_area">
                        <div class="shadow png">
                            <div class="s_img"></div>
                        </div>
                    </div>
                </div>

            </div>
            <div class="bgs_box bgs_3">
                <div class="wp">
                    <div class="img_area">
                        <div class="shadow png">
                            <div class="s_img"></div>
                        </div>
                        <div class="shadow01 png">
                            <div class="s_img01"></div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <div class="main">
            <div id="txt_list" class="item_txt_box">
                <div class="item_txt item_txt_1">
                    <div class="txt_info png"> <strong class="hd">订做系统</strong>
                        <h2 class="hd">精彩赛事 创意无限</h2>
                        <p class="hd">想展现你的创意、才华！快来吧！</p>
                    </div>
                    <div class="detail">
                        <ul id="v_info">
                        </ul>
                        <a href="" class="download_btn png">参与</a>
                        <p>想组队？ <a href="#" target="_blank" class="chk_link">快去组团吧</a></p>
                    </div>
                </div>
                <div class="item_txt item_txt_2">
                    <div class="txt_info png">
                        <h2 class="hd">上衣设计 为您而来</h2>
                        <p class="hd">海量设计，新鲜创意，想评就评；<br/>
                            创意时尚，设计新颖。 </p>
                    </div>
                    <div class="detail other">
                    </div>
                </div>
                <div class="item_txt item_txt_3">
                    <div class="txt_info png">
                        <h2 class="hd">专业设计  量身定做</h2>
                        <p class="hd">百种新款，随你喜欢；<br/>
                           </p>
                    </div>
                    <div class="detail other">
                    </div>
                </div>
            </div>
        </div>
        <div id="switch_box" class="switch_list"> <span class="on"></span> <span class=""></span> <span class=""></span> </div>
    </div>
</div>

<script type="text/javascript" src="../../../js/ie6png.js"></script>
<script type="text/javascript" src="../../../js/jquery-1.10.1.min.js"></script>
<script type="text/javascript">
    (function($){
        var initHeight = $(window).height() - 60,
                $colorList = $('#color_list').find('.bgs_box'),
                $txtList = $('#txt_list').find('.item_txt'),
                $switchList = $('#switch_box').find('span'),
                timer = null,
                key = 1;

        //IE6 bug
        $switchList.eq(0).addClass('on');
        $txtList.eq(0).addClass('on');
        $colorList.eq(0).addClass('on');

        //高度调整
        $('#content').css('min-height',initHeight + 'px')
        //视窗变化时
        $(window).resize(function(){
            initHeight = $(window).height() - 60;
            $('#content').css('min-height',initHeight + 'px');
            if($(window).height() > 866){
                $('#ft_area').addClass('pst_ft');
            }else{
                $('#ft_area').removeClass('pst_ft');
            }
        })
        loadFinish();
        $('#switch_box').on('click','span',function(){
            var stepIndex = $switchList.index($(this));
            actFn(stepIndex);
        }).hover(function(){
            clearInterval(timer);
        },function(){
            timer = setInterval(function(){
                actFn(key);
            },3000)
        })

        $('.s_arr').on('click','a',function(){
            var step = $('.s_arr').find('a').index($(this));
            $('#switch_box').find('span').each(function(i){
                var css=$(this).hasClass("on");
                if(css){
                    if(step==0){
                        if(i==0){
                            step=2
                        }else{
                            step=i-1;
                        }
                    }else{
                        if(i==2){
                            step=0;
                        }else{
                            step=i+1;
                        }
                    }
                }
            });
            actFn(step);
        }).hover(function(){
            clearInterval(timer);
        },function(){
            timer = setInterval(function(){
                actFn(key);
            },3000)
        })
        //底部位置调整
        if($(window).height() > 866){
            $('#ft_area').addClass('pst_ft');
        }else{
            $('#ft_area').removeClass('pst_ft');
        }
        //轮播
        function actFn(stepIndex){
            var stepIndex = stepIndex;
            $switchList.eq(stepIndex).addClass('on').siblings().removeClass('on');
            $colorList.stop().eq(stepIndex).animate({opacity:1},800).css({flter:"Alpha(Opacity=100)"}).siblings().animate({opacity:0},800);
            $txtList.eq(stepIndex).addClass('on').siblings().removeClass('on');
            key = stepIndex;
            $('.bgs_box').eq(key).find(".img_area").addClass('item_img_css3');
            $('.bgs_box').eq(key).siblings().find(".img_area").removeClass('item_img_css3');
            $('.bgs_box').eq(key).find(".footer").fadeIn(800);
            $('.bgs_box').eq(key).siblings().find(".footer").fadeOut(800);
            $(".item_txt").eq(key).addClass('item_txt_css3').siblings().removeClass('item_txt_css3');
            key++;
            if(key == $txtList.length){
                key = 0;
            }
        }
        //预加载banner动画背景图
        function preloadImages(){
            var arrImage = [];
            var parLen = arguments.length;
            var cur = 0;
            for (var i = 0; i < parLen; i++) {
                arrImage[i] = new Image();
                arrImage[i].onload = function(){
                    if(cur == parLen -1){
                        loadFinish();
                    }
                    cur++;
                };
                arrImage[i].src = arguments[i];
            }
        }
        function loadFinish(){
            $txtList.eq(0).addClass('item_txt_css3');
            $colorList.eq(0).find(".img_area").addClass('item_img_css3');
            //自动轮播
            timer = setInterval(function(){
                actFn(key);
            },3000);
        }
    })(jQuery)
</script>
</body>
</html>
