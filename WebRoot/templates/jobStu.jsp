<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

	<!DOCTYPE html>


	<div class="gray-bg amp-main-wrapper clearfix">




		<center ><h4>宣讲会</h4></center>
		<div class="amp-main-lpart clearfix">
			<div class="" style="float:left;width: 100%;">
				<div class="row">
					<c:forEach var="talk" items="${talktList }">
						<div class="col-lg-4 col-md-6 col-sm-12">
							<div class="ibox amp-main-appbox1">
								<div class="ibox-title">
									<a class="frame-link"  href="njust/detail.do?id=${talk.id }"
									> <span
										class="badge badge-warning pull-right">关注数</span>
										<h5>${talk.company }</h5>
									</a>
								</div>
								<div class="ibox-content">
									<span>时间：2015/03/31</span><br /> <span>地点：${talk.address }</span> <span
										class="badge badge-info pull-right">100</span></br> <span>${talk.briefintroduction }</span>
								</div>
							</div>
						</div>

					</c:forEach>





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