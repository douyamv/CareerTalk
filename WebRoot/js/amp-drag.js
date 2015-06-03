$(function(){
    initDraggable(".skin-setttings .skin-sort-flag", "#amp-draggable-receiveArea");
    initSortable("#amp-draggable-receiveArea",".row");
//    console.log($("#amp-draggable-receiveArea").find("i#removeSortItem").length)
    $("#amp-draggable-receiveArea").on("click","#removeSortItem",function(){
        removeSortableItem($(this));
    });
    $(".skin-setttings").find("div[data-flag=my-tasks-block]").draggable( 'disable');
    $(".skin-setttings").find("div[data-flag=process-block]").draggable( 'disable');
});

function initDraggable(_selector, _connectToSortable){
    $(_selector).draggable({
        connectToSortable: _connectToSortable,
        helper: 'clone',
        start:function(event, ui){
            ui.item
            var $dragObj = ui.helper;
            var flag = $dragObj.attr("data-flag");
            $dragObj.html($("#"+flag).html());
            $dragObj.removeAttr("class").addClass("skin-sort-flag").addClass("row");
        },
        drag: function(event, ui){
            ui.helper.width(450);
        },
        stop: function(event, ui){

        }
    });
}

function initSortable(_selector, _connectWith){
    $(_selector).sortable({
        connectWith:_connectWith,
        handle:".ibox-title",
        scroll:false,
        start: function(event, ui){
            var $dragObj = $(ui.item);
            $(ui.placeholder).removeAttr("class").addClass("ui-sortable-placeholder");
            var flag = $dragObj.attr("data-flag");
            $dragObj.html($("#"+flag).html());
            $dragObj.removeAttr("class").addClass("skin-sort-flag").addClass("row");
        },
        stop: function(event, ui){
            var $dragObj = $(ui.item);
            var flag = $dragObj.attr("data-flag");
            $(".skin-setttings").find("div[data-flag="+flag+"]").addClass("amp-skin-disable").draggable( 'disable');
            $(".skin-setttings").find("div[data-flag="+flag+"]").removeClass("amp-skin-disable").draggable( 'disable');
            $dragObj.addClass("row").removeAttr("style");
        }
    });
}

function removeSortableItem($obj){
    var $sortObj = $obj.parents(".skin-sort-flag:first");
    var dataFlag = $sortObj.attr("data-flag");
    $sortObj.remove();
    $(".skin-setttings").find("div[data-flag="+dataFlag+"]").addClass("amp-skin-disable").draggable( 'enable');
}