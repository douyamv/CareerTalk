<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>应用管理平台</title>

    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../font-awesome/css/font-awesome.css" rel="stylesheet">

    <!-- Toastr style -->
    <link href="../css/plugins/toastr/toastr.min.css" rel="stylesheet">

    <!-- Gritter -->
    <link href="../js/plugins/gritter/jquery.gritter.css" rel="stylesheet">

    <link href="../css/animate.css" rel="stylesheet">
    <link href="../css/base.css" rel="stylesheet">


</head>
<style type="text/css">

</style>
<body class="gray-bg">

<div class="gray-bg amp-main-wrapper clearfix">


    <div class="amp-main-lpart clearfix">
        <div class="" style="float:left;width: 100%;">
            <div class="row">
                <div class="ibox amp-main-appbox1">

                    <div class="col-xs-12  col-sm-12">
                        <div class="ibox-title">
                            <a class="frame-link" url="templates/teacherInfo.html">

                                <h5>个人信息</h5>
                            </a>
                        </div>
                        <div class="ibox-content">
                            <span>姓名：</span>
                            <span class="text-info">${student.name}</span>
                        </div>
                        <div class="ibox-content">
                            <span>学校：</span>
                            
                       
	
                            <span class="text-info">${student.school}</span>
                        </div>
                        <div class="ibox-content">
                            <span>专业：</span>
                            <span class="text-info">${student.major}</span>

                        </div>


                        <div class="ibox-content">
                            <span> 学号：</span>
                            <span class="text-info">${student.schoolid}</span>

                        </div>
                        


                    </br>




            </div>
        </div>
    </div>

    <!-- Mainly scripts -->
    <script src="../js/jquery-2.1.1.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="../js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="../js/common.js"></script>
    <script src="../js/plugins/pace/pace.min.js"></script>

    <!-- jQuery UI -->
    <script src="../js/plugins/jquery-ui/jquery-ui.min.js"></script>

    <!-- 通知插件Toastr -->

    <script>

    </script>
</body>