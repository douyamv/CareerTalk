$(document).ready(function () {
    //页面resize时重新计算主iframe的高度
    $(window).resize(function () {
        var ifr = $("#index-iframe");
        ifr.css("height", 0);
        setTimeout(function () {
            var doc = ifr[0].contentWindow.document;
            var cur_height = doc.body.scrollHeight;
            ifr[0].style.height = cur_height + 'px';
            setFootBarPosition();
        }, 500);
    });

    //点击左侧切换iframe的src
    sideLeftClick();

    //点击其它元素，切换iframe的src
    $(".frame-link").on("click",function(){
        if ($(this).attr("url") != undefined) {
            //切换iframe的src前重置iframe的高度为0，否则iframe高度无法自适应
            $("#amp-container .amp-main-wrapper").hide();
            $("#index-iframe").css("display", "block");
            $("#index-iframe").css("height", 0).attr("src", $(this).attr("url"));
            $("#amp-seachpanel").hide();
        }
    });

    // 绿色欢迎组件
    setTimeout(function () {
        toastr.options = {
            closeButton: true,
            progressBar: true,
            showMethod: 'slideDown',
            timeOut: 4000
        };
        toastr.success('Welcome to our application platform', '欢迎来到应用管理平台');

    }, 1300);

    // 点击搜索框时，如果不为空，显示搜索面板
    $("#top-search").on("click",function(){
        if ($(this).val() !== "") {
            $("#amp-seachpanel").show();
        }
    });

    // 搜索面板中搜索列表的hover效果
    $(".search-results ul li a").hover(function(){
        if ($(this).attr("data-target") !== "") {
            var targetapp = $(this).attr("data-target");
            $(".search-rp a").css("display","none");
            $(targetapp).css("display","block");
        }
    });

    $(document).click(function(e){
        //隐藏查询弹出框
        if ( $((e.target || e.srcElement)).closest("#amp-seachpanel .frame-link ").length == 0 && $((e.target || e.srcElement)).closest("#top-search").length == 0 ) {
            $("#amp-seachpanel").hide();
        }
        //隐藏右侧弹出框
        if($(e.target).parents(".amp-theme-config:first").length == 0){
            var $configObj = $(".amp-theme-config");
            if($configObj.find(".theme-config-box.show").length == 1){
                $configObj.find(".spin-icon").click();
            }
        }
    });
    setFootBarPosition();

    //根据标志位改变右侧弹框
    var fwFlag = "app";
    onChangeFw(fwFlag);

    onHideBreadCrumb();
});

/**
 *  内嵌iframe加载完后重新计算其高度
 *  @param ifr 传入的iframe
 */
function addEvt(ifr) {
    var doc = ifr.contentWindow.document;
    var init_height = 0;
    $(doc).click(function () {
        var cur_height = doc.body.scrollHeight;
        if (cur_height > init_height) {
            ifr.style.height = cur_height + 'px';
        }
    });
    init_height = doc.body.scrollHeight;
    ifr.style.height = init_height + 'px';


}

/**
 * 点击时，在右侧iframe中打开左侧导航中的a链接
 */
function sideLeftClick(){
    $("#side-menu li > a").on("click", function () {
        if ($(this).attr("url") != undefined) {
            //切换iframe的src前重置iframe的高度为0，否则iframe高度无法自适应
            $("#amp-container .amp-main-wrapper").hide();
            $("#index-iframe").css("display", "block");
            $("#index-iframe").css("height", 0).attr("src", $(this).attr("url"));
        }
        if ($(this).next("ul").length === 0) {
            $("#side-menu li").removeClass("active");
            $(this).parents("li").addClass("active");

            // 显示并更新面包屑导航，首先遍历左侧nav得到面包屑导航的数据
            onGetBreadLables();
        }
    });
}

/**
 * 搜索框input中的内容改变时触发的函数，onPropChange是IE中的触发函数
 */
function onInput(){
    $("#amp-seachpanel").show();
    if ($("#top-search").val() == "") {
        $("#amp-seachpanel").hide();
    }
}
function onPropChange(){
    $("#amp-seachpanel").show();
    if ($("#top-search").val() == "") {
        $("#amp-seachpanel").hide();
    }
}

/**
 * 可拖动区域中模块的展开收缩效果
 * @param $obj 传入的展开收缩按钮
 */
function hideOrShowData($obj){
    var $parentObj = $obj.parents(".ibox:first");
    var flag = $obj.hasClass("fa-chevron-up");
    if(flag){
        $parentObj.find(".ibox-content").animate({height:'toggle'});
        $obj.removeClass("fa-chevron-up").addClass("fa-chevron-down");
    }else{
        $parentObj.find(".ibox-content").animate({height:'toggle'});
        $obj.removeClass("fa-chevron-down").addClass("fa-chevron-up");
    }
}

var createCollectionCount = 0;//用于记录临时创建的收藏button数，避免连续点击时的button重复冲突
/**
 * 添加收藏功能及动画
 * @param _appName iframe中传入的app名
 * @param _offset   iframe中传入的收藏按钮的位置
 */
function appStoreCollection(_appName, _offset, _appClassify){
    var _iframeOffset = $("#index-iframe").offset();
    var _buttonLeft = _offset.left + _iframeOffset.left;
    var _buttonTop = _offset.top + _iframeOffset.top;
    var $myCollectionIcon = $("#myCollectionIcon");
    var _myCollectionIconOffset = $myCollectionIcon.offset();
    var _buttonHtml = '<button id="tempAppStoreCollectionBtn_'+createCollectionCount+'" type="button" class="btn btn-primary btn-xs amp-appStore-btnStore" '+
        'style="top:'+_buttonTop+'px;left:'+_buttonLeft+'px;position:absolute;z-index: 1000;padding: 1px 15px;">收藏</button>';
    var _myCollectionItemHtml = '<li><a href="javascript:void(0)" url="">'+_appName+'</a></li>';
    var $ulObj = $("#side-menu");
    var liObj = "";
    $ulObj.children("li").each(function(){
        if($.trim($(this).find(".nav-label:first").text()) == _appClassify){
            liObj = $(this);
        }
    });

    if(liObj == ""){
        var _liHtml = '<li data-flag="addFromCollection"><a href="javascript:void(0)"><i class="fa fa-table"></i> <span class="nav-label">'+_appClassify+'</span> <span class="fa arrow"></span></a><ul class="nav nav-second-level collapse" aria-expanded="false" style="height: 0px;"></ul></li>';
        $ulObj.children("li.landing_link").before(_liHtml);
    }

    $ulObj.children("li").each(function(){
        if($.trim($(this).find(".nav-label:first").text()) == _appClassify){
            liObj = $(this);
        }
    });
    var $iconObj = liObj.find("i:first");
    var _iconOffset = $iconObj.offset();

    $("body").append(_buttonHtml);
    var $tempCollectionBtn = $("#tempAppStoreCollectionBtn_"+createCollectionCount);
    $tempCollectionBtn.animate({
            top:_iconOffset.top+"px",
            left:_iconOffset.left+"px"
        },"slow",function(){
            $tempCollectionBtn.addClass("animated").addClass("fadeOut");
            $iconObj.animate({"fontSize":"2em"}).animate({"fontSize":"13px"});
            liObj.find("ul").append(_myCollectionItemHtml);
            setTimeout(function(){
                $tempCollectionBtn.remove();
            },1000);
            indexIframe.window.changeAppCollection(_appName);
        }
    );
    createCollectionCount++;
    sideLeftClick();

    addFromCollectionAction();
}

var sideLeftLabelName = "我的首页";
function addFromCollectionAction(){
    $("li a","#side-menu").off("click");
    var $sideObj = $("#side-menu");

    $("#side-menu li > a").on("click", function (e) {
        e.preventDefault();
        if ($(this).next("ul").length !== 0) {
            var clickNavLabel = $.trim($(this).find(".nav-label").text());
            if (clickNavLabel == sideLeftLabelName) {
                if ($(this).parent("li").hasClass("active")) {
                    $(this).parent("li").removeClass("active").children("ul").collapse("hide");
                } else {
                    $(this).parent("li").addClass("active").children("ul").collapse("show");
                }
            } else {
                $sideObj.children("li.active").removeClass("active").children("ul").collapse("hide");
                $(this).parent("li").addClass("active").children("ul").collapse("show");
            }
            sideLeftLabelName = clickNavLabel;
        }
        else {
            if ($(this).attr("url") != undefined) {
                //切换iframe的src前重置iframe的高度为0，否则iframe高度无法自适应
                $("#amp-container .amp-main-wrapper").hide();
                $("#index-iframe").css("display", "block");
                $("#index-iframe").css("height", 0).attr("src", $(this).attr("url"));

                $("#side-menu li").removeClass("active");
                $(this).parents("li").addClass("active");
            }
        }
    });
}

function setFootBarPosition(){
    var _window_h = $(window).height();
    var _header_h = $("#page-header").outerHeight(true);
    var _iframe_min_h = _window_h - _header_h;
    $("#page-wrapper").css("min-height",_window_h+"px");
    $("#index-iframe").css("min-height",_iframe_min_h+"px");
}

function appStoreCollectionToCancel(_appName,_appClassify){
    $("#side-menu").find(".nav-label:contains('"+_appClassify+"')").each(function(){
        var labelName = $.trim($(this).text());
        if(labelName == _appClassify){
            $(this).parents("li:first").find("ul").find("a:contains('"+_appName+"')").parents("li:first").remove();
            return;
        }
    })
}

/**
 * 右侧悬浮窗部分js
 */
(function(){
    // Config box

    // Enable/disable fixed top navbar
    $('#fixednavbar').click(function () {
        if ($('#fixednavbar').is(':checked')) {
            $(".navbar-static-top").removeClass('navbar-static-top').addClass('navbar-fixed-top');
            $("body").removeClass('boxed-layout');
            $("body").addClass('fixed-nav');
            $('#boxedlayout').prop('checked', false);
        } else {
            $(".navbar-fixed-top").removeClass('navbar-fixed-top').addClass('navbar-static-top');
            $("body").removeClass('fixed-nav');
        }
    });

    // Enable/disable fixed sidebar
    $('#fixedsidebar').click(function () {
        if ($('#fixedsidebar').is(':checked')) {
            $("body").addClass('fixed-sidebar');
            $('.sidebar-collapse').slimScroll({
                height: '100%',
                railOpacity: 0.9
            });
        } else {
            $('.sidebar-collapse').slimscroll({destroy: true});
            $('.sidebar-collapse').attr('style', '');
            $("body").removeClass('fixed-sidebar');
        }
    });

    // Enable/disable collapse menu
    $('#collapsemenu').click(function () {
        if ($('#collapsemenu').is(':checked')) {
            $("body").addClass('mini-navbar');
            SmoothlyMenu();
        } else {
            $("body").removeClass('mini-navbar');
            SmoothlyMenu();
        }
    });

    // Enable/disable boxed layout
    $('#boxedlayout').click(function () {
        if ($('#boxedlayout').is(':checked')) {
            $("body").addClass('boxed-layout');
            $('#fixednavbar').prop('checked', false);
            $(".navbar-fixed-top").removeClass('navbar-fixed-top').addClass('navbar-static-top');
            $("body").removeClass('fixed-nav');
            $(".footer").removeClass('fixed');
            $('#fixedfooter').prop('checked', false);
        } else {
            $("body").removeClass('boxed-layout');
        }
    });

    // Enable/disable fixed footer
    $('#fixedfooter').click(function () {
        if ($('#fixedfooter').is(':checked')) {
            $('#boxedlayout').prop('checked', false);
            $("body").removeClass('boxed-layout');
            $(".footer").addClass('fixed');
        } else {
            $(".footer").removeClass('fixed');
        }
    });

    // SKIN Select
    $('.spin-icon').click(function () {
        $(".theme-config-box").toggleClass("show");
    });

    // Default skin
    $('.s-skin-0').click(function () {
        $("body").removeClass("skin-1");
        $("body").removeClass("skin-2");
        $("body").removeClass("skin-3");
    });

    // Blue skin
    $('.s-skin-1').click(function () {
        $("body").removeClass("skin-2");
        $("body").removeClass("skin-3");
        $("body").addClass("skin-1");
    });

    // Inspinia ultra skin
    $('.s-skin-2').click(function () {
        $("body").removeClass("skin-1");
        $("body").removeClass("skin-3");
        $("body").addClass("skin-2");
    });

    // Yellow skin
    $('.s-skin-3').click(function () {
        $("body").removeClass("skin-1");
        $("body").removeClass("skin-2");
        $("body").addClass("skin-3");
    });
})();


//进入应用后，右侧栏变换为评价悬浮窗
/*$(".dropdown > a").on("click", function () {
    if($('.theme-config').length>0){
        if(parseInt($(this).css("margin-right"))==0){
            $(".theme-config-box").toggleClass("show",false);
        }
    }
    else{
        $('.amp-theme-config').css("display", "none");
        $.get("skin-config.html", function (data) {
            $('body').append(data);
        });
    }
});*/
//end变换悬浮窗

/**
 * 根据标志改变右侧弹框内容
 * @param fwFlag 标志位：home app none
 */
function onChangeFw(fwFlag){
    $(".theme-config-box").removeClass("show");
    if (fwFlag == "home") {
        $('.theme-config').css("display", "none");
        $('.amp-theme-config').css("display", "block");
    }
    else if(fwFlag == "app"){
        $('.amp-theme-config').css("display", "none");
        $.get("skin-config.html", function (data) {
            $('body').append(data);
        });
    }else if(fwFlag == "none"){
        $('.theme-config').css("display", "none");
        $('.amp-theme-config').css("display", "none");
    }
}

/**
 * 遍历左侧nav得到面包屑导航的数据
 * @param
 */
function onGetBreadLables() {
    $("#amp-index-breadcrumb").css("display", "block");
    var activelinks = $("#side-menu li.active").children("a");
    var lables = [];
    activelinks.each(function(i,li){
        if ($(this).find(".nav-label").text() !== ""){
            lables.push($(this).find(".nav-label").text());
        }
        else if ($(this).text() !== ""){
            lables.push($(this).text());
        }
    });
    // 解析并显示lables数组
    onChangeBreadcrumb(lables);
}


/**
 * 动态更新面包屑导航
 * @param array 存有导航元素的数组
 */
function onChangeBreadcrumb(array){
    if (array === []) return;
    var breadcrumbHtml = "<li><a onclick='location.reload();'>首页</a></li>";
    $.each(array,function(i,item){
        var itemHtml = "<li><span>"+item+"</span></li>";
        if (i === array.length - 1) {
            $("#amp-index-breadcrumb .breadcrumb").prev("h2").html(item);
            var itemHtml = "<li class='active'><strong>"+item+"</strong></li>";
        }
        breadcrumbHtml += itemHtml;
    });
    $("#amp-index-breadcrumb .breadcrumb").html(breadcrumbHtml);
}

function onHideBreadCrumb() {
    $("#search_btn_id, .frame-link").on("click",function(){
        $("#amp-index-breadcrumb").hide();
    });
}