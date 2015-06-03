$(function(){
    $('.i-checks').iCheck({
        checkboxClass: 'icheckbox_square-green'
    });
    onAdjustPostion();
    $(window).resize(function () {
        onAdjustPostion();
    });
});

/** 调整中间区域的垂直居中位置
 */
function onAdjustPostion() {
    var $loginContainer = $("#amp-login-main");
    var _winHeight = $(window).height();
    var _mainHeight = $loginContainer.outerHeight(true);
    var _mt = (_winHeight - _mainHeight)/2;
    $loginContainer.css("padding-top",_mt);
}