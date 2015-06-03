<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>应用管理平台</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">

    <!-- Toastr style -->
    <link href="css/plugins/toastr/toastr.min.css" rel="stylesheet">

    <!-- Gritter -->
    <link href="js/plugins/gritter/jquery.gritter.css" rel="stylesheet">

    <link href="css/animate.css" rel="stylesheet">
    <link href="css/base.css" rel="stylesheet">
    <link href="css/index.css" rel="stylesheet">

</head>
<style type="text/css">

</style>
<body style="min-width: 517px;overflow-x: auto;">
<div id="wrapper">
<nav class="navbar-default navbar-static-side" role="navigation">
    <div class="sidebar-collapse">
        <ul class="nav" id="side-menu">
            <li class="amp-school-logo">
                <img alt="image" class="" src="img/logo.png" width="220px;" height="60px;">
            </li>
            <li class="nav-header amp-nav-header">
                <div class="dropdown profile-element"> <span>
                            <img alt="image" class="img-circle" src="img/profile_small.jpg"/>
                             </span>
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                        <span class="clear">
                            <span class="block m-t-xs">
                                <strong class="font-bold">李彦宏</strong>
                                <b class="caret"></b>
                            </span>
                        <span class="text-muted text-xs block">百度CEO</span> </span>
                    </a>
                    <ul class="dropdown-menu animated fadeInDown m-t-xs">
                        <li><a href="profile.html">档案</a></li>
                        <li><a href="javascript:;void(0)">联系方式</a></li>
                        <li><a href="javascript:;void(0)">邮箱</a></li>
                        <li class="divider"></li>
                        <li><a href="login.html">登出</a></li>
                    </ul>
                </div>
                <div class="logo-element">
                    <img alt="image" class="" src="img/logo-mini.png" width="60px;" height="60px;"/>
                </div>
            </li>
            <li class="active">
                <a href="javascript:void(0)" onclick="location.reload();"><i class="fa fa-th-large"></i> <span
                        class="nav-label">我的首页</span>
                    <span class="label label-danger pull-right">NEW</span></a>
            </li>
            <li>
                <a href="javascript:void(0)"><i id="myCollectionIcon" class="fa fa-star"></i> <span class="nav-label">常用应用</span> <span
                        class="fa arrow"></span></a>
                <ul id="myCollectionList" class="nav nav-second-level">
                    <li class=""><a href="javascript:void(0)" url="templates/app1_form.html">我的个人信息</a></li>
                    <li><a href="javascript:void(0)" url="templates/teacherInfo.html">我的课表</a></li>
                    <li><a href="javascript:void(0)" url="templates/teacherInfo.html">学生业务查询</a></li>
                    <li><a href="javascript:void(0)" url="templates/teacherInfo.html">校园招聘会</a></li>
                    <li><a href="javascript:void(0)" url="templates/teacherInfo.html">学生缴费查询</a></li>
                </ul>
            </li>
            <li>
                <a href="javascript:void(0)"><i class="fa fa-user"></i> <span class="nav-label">学工服务</span> <span
                        class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li class=""><a href="javascript:void(0)" url="TingChaKe/tingchake.html">查听课</a></li>
                    <li class=""><a href="javascript:void(0)" url="TingChaKe/tixing.html">查听课提醒</a></li>
                    <li class=""><a href="javascript:void(0)" url="TingChaKe/xueyuantongji.html">学院查听课统计</a></li>
                    <li class=""><a href="javascript:void(0)" url="TingChaKe/tongji.html">全校查听课统计</a></li>
                    <li class=""><a href="javascript:void(0)" url="templates/teacherInfo.html">我的成绩</a></li>
                    <li><a href="javascript:void(0)" url="templates/teacherInfo.html">我的课表</a></li>
                    <li><a href="javascript:void(0)" url="templates/teacherInfo.html">空闲教室</a></li>
					<li><a href="javascript:void(0)" url="templates/jobSchool.html">宣讲会管理</a></li>
					<li><a href="javascript:void(0)" url="templates/addMeeting.html">宣讲会发布</a></li>
                </ul>
            </li>
            <li>
                <a href="javascript:void(0)"><i class="fa fa-coffee"></i> <span class="nav-label">生活服务</span> <span
                        class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li class=""><a href="javascript:void(0)" url="XiangMuShenBao/xiangmushengbao.html">项目申报</a></li>
                    <li class=""><a href="javascript:void(0)" url="templates/teacherInfo.html">一卡通网银</a></li>
                    <li><a href="javascript:void(0)" url="templates/teacherInfo.html">今日菜谱</a></li>
					<li><a href="javascript:void(0)" url="njust/jobStu.do">我的宣讲会</a></li>
					<li><a href="javascript:void(0)" url="templates/detail.html">详细页</a></li>
                    <li><a href="javascript:void(0)" url="templates/calendar.html">日程</a></li>
                    <li><a href="javascript:void(0)" url="student/my.do?id=1">个人信息</a></li>
                </ul>
            </li>
            <li>
                <a href="javascript:void(0)"><i class="fa fa-table"></i> <span class="nav-label">财务服务</span> <span
                        class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li class=""><a href="javascript:void(0)" url="templates/teacherInfo.html">缴费查询</a></li>
                    <li><a href="javascript:void(0)" url="templates/teacherInfo.html">一卡通网银</a></li>
                    <li><a href="javascript:void(0)" url="DangFei/chaxun.html">党费查询</a></li>
                </ul>
            </li>
            <li>
                <a href="javascript:void(0)"><i class="fa fa-desktop"></i> <span class="nav-label">IT服务</span> <span
                        class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li class=""><a href="javascript:void(0)" url="templates/teacherInfo.html">会议室预约</a></li>
                    <li><a href="javascript:void(0)" url="templates/teacherInfo.html">我的网盘</a></li>
                    <li><a href="javascript:void(0)" url="templates/teacherInfo.html">校园黄页</a></li>
                </ul>
            </li>
            <li>
                <a href="javascript:void(0)"><i class="fa fa-table"></i> <span class="nav-label">组件</span> <span
                        class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li class=""><a href="javascript:void(0)" url="templates/form.html">Form表单</a></li>
                    <li><a href="javascript:void(0)" url="templates/dialog.html">对话框</a></li>
                    <li><a href="javascript:void(0)" url="templates/validation.html">校验</a></li>
                    <li><a href="javascript:void(0)" url="templates/appSearchResults.html">查询多个</a></li>
                    <li><a href="javascript:void(0)" url="templates/tabs_panels.html">tab&panel</a></li>
                </ul>
            </li>
            <li class="landing_link">
                <a target="_blank" href="Landing_page/index.html"><i class="fa fa-star"></i> <span class="nav-label">最新上线</span>
                    <span class="label label-warning pull-right">NEW</span></a>
            </li>
            <li class="special_link">
                <a href="package.html"><i class="fa fa-database"></i> <span class="nav-label">推荐服务</span></a>
            </li>
        </ul>

    </div>
</nav>

<div id="page-wrapper" class="gray-bg dashbard-1">
<div id="page-header" class="row border-bottom">
<nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
<div class="navbar-header">
    <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>

    <form role="search" class="amp-nav-searchform form-inline" method="post" action="search_results.html">
        <div class="form-group" style="position: relative">
            <input type="text" class=" amp-search-input input-sm" id="top-search" name="top-search" autocomplete="off"
                   placeholder="请输入关键字搜索..." oninput="onInput();" onpropertychange="onPropChange();">

            <div id="amp-seachpanel" class="animated fadeIn">
                <div class="seachpanel-header">
                    <p>以下显示<span class="seachpanel-header-item">“<span class="item-color">服务查询</span>”</span>的相关搜索结果</p>
                </div>
                <div class="clearfix">
                    <div class="search-lp">
                        <div class="search-results full-height-scroll">
                            <ul>
                                <li>科研服务</li>
                                <li>
                                    <a class="frame-link" data-target="#sr01" url="templates/appSearchEmpty.html"><img src="img/app/app1-mini.png"/><span>科研成果查询</span></a>
                                </li>
                                <li>
                                    <a class="frame-link" data-target="#sr02" url="templates/appSearchEmpty.html"><img src="img/app/app2-mini.png"/><span>获奖情况查询</span></a>
                                </li>
                            </ul>
                            <ul>
                                <li>学工服务</li>
                                <li>
                                    <a class="frame-link" data-target="#sr03" url="templates/appSearchEmpty.html"><img src="img/app/app3-mini.png"/><span>考试服务</span></a>
                                </li>
                                <li>
                                    <a class="frame-link" data-target="#sr04"url="templates/appSearchEmpty.html"><img src="img/app/app4-mini.png"/><span>一卡通服务</span></a>
                                </li>
                                <li>
                                    <a class="frame-link" data-target="#sr05"url="templates/appSearchEmpty.html"><img src="img/app/app5-mini.png"/><span>课表查询服务</span></a>
                                </li>
                                <li>
                                    <a class="frame-link" data-target="#sr06"url="templates/appSearchEmpty.html"><img src="img/app/app6-mini.png"/><span>考试成绩查询</span></a>
                                </li>
                            </ul>
                            <ul>
                                <li>生活服务</li>
                                <li>
                                    <a class="frame-link" data-target="#sr07" url="templates/appSearchEmpty.html"><img src="img/app/app7-mini.png"/><span>校车服务</span></a>
                                </li>
                                <li>
                                    <a class="frame-link" data-target="#sr08" url="templates/appSearchEmpty.html"><img src="img/app/app8-mini.png"/><span>出行服务</span></a>
                                </li>
                            </ul>
                        </div>
                        <div class="more"><a class="frame-link" url="templates/appSearchResults.html">点击查看全部搜索结果...  </a></div>
                    </div>
                    <div class="search-rp">
                        <div class="search-result">
                            <a class="frame-link" id="sr01" style="display: block;" url="templates/appSearchEmpty.html">
                                <img src="img/app/app1.png"/>
                                <div><strong>科研成果查询</strong></div>
                                <div>科研服务</div>
                                <div class="amp-star">
                                    <i class="fa fa-star amp-appStore-yellowStar"></i>
                                    <i class="fa fa-star amp-appStore-yellowStar"></i>
                                    <i class="fa fa-star amp-appStore-yellowStar"></i>
                                    <i class="fa fa-star amp-appStore-yellowStar"></i>
                                    <i class="fa fa-star amp-appStore-grayStar"></i>
                                    <span class="amp-score">112份评分</span>
                                </div>
                            </a>
                            <a class="frame-link" id="sr02" style="display: none;" url="templates/appSearchEmpty.html">
                                <img src="img/app/app2.png"/>
                                <div><strong>科研成果查询</strong></div>
                                <div>科研服务</div>
                                <div class="amp-star">
                                    <i class="fa fa-star amp-appStore-yellowStar"></i>
                                    <i class="fa fa-star amp-appStore-yellowStar"></i>
                                    <i class="fa fa-star amp-appStore-yellowStar"></i>
                                    <i class="fa fa-star amp-appStore-yellowStar"></i>
                                    <i class="fa fa-star amp-appStore-grayStar"></i>
                                    <span class="amp-score">112份评分</span>
                                </div>
                            </a>
                            <a class="frame-link" id="sr03" style="display: none;" url="templates/appSearchEmpty.html">
                                <img src="img/app/app3.png"/>
                                <div><strong>科研成果查询</strong></div>
                                <div>科研服务</div>
                                <div class="amp-star">
                                    <i class="fa fa-star amp-appStore-yellowStar"></i>
                                    <i class="fa fa-star amp-appStore-yellowStar"></i>
                                    <i class="fa fa-star amp-appStore-yellowStar"></i>
                                    <i class="fa fa-star amp-appStore-yellowStar"></i>
                                    <i class="fa fa-star amp-appStore-grayStar"></i>
                                    <span class="amp-score">112份评分</span>
                                </div>
                            </a>
                            <a class="frame-link" id="sr04" style="display: none;" url="templates/appSearchEmpty.html">
                                <img src="img/app/app4.png"/>
                                <div><strong>科研成果查询</strong></div>
                                <div>科研服务</div>
                                <div class="amp-star">
                                    <i class="fa fa-star amp-appStore-yellowStar"></i>
                                    <i class="fa fa-star amp-appStore-yellowStar"></i>
                                    <i class="fa fa-star amp-appStore-yellowStar"></i>
                                    <i class="fa fa-star amp-appStore-yellowStar"></i>
                                    <i class="fa fa-star amp-appStore-grayStar"></i>
                                    <span class="amp-score">112份评分</span>
                                </div>
                            </a>
                            <a class="frame-link" id="sr05" style="display: none;" url="templates/appSearchEmpty.html">
                                <img src="img/app/app5.png"/>
                                <div><strong>科研成果查询</strong></div>
                                <div>科研服务</div>
                                <div class="amp-star">
                                    <i class="fa fa-star amp-appStore-yellowStar"></i>
                                    <i class="fa fa-star amp-appStore-yellowStar"></i>
                                    <i class="fa fa-star amp-appStore-yellowStar"></i>
                                    <i class="fa fa-star amp-appStore-yellowStar"></i>
                                    <i class="fa fa-star amp-appStore-grayStar"></i>
                                    <span class="amp-score">112份评分</span>
                                </div>
                            </a>
                            <a class="frame-link" id="sr06" style="display: none;" url="templates/appSearchEmpty.html">
                                <img src="img/app/app6.png"/>
                                <div><strong>科研成果查询</strong></div>
                                <div>科研服务</div>
                                <div class="amp-star">
                                    <i class="fa fa-star amp-appStore-yellowStar"></i>
                                    <i class="fa fa-star amp-appStore-yellowStar"></i>
                                    <i class="fa fa-star amp-appStore-yellowStar"></i>
                                    <i class="fa fa-star amp-appStore-yellowStar"></i>
                                    <i class="fa fa-star amp-appStore-grayStar"></i>
                                    <span class="amp-score">112份评分</span>
                                </div>
                            </a>
                            <a class="frame-link" id="sr07" style="display: none;" url="templates/appSearchEmpty.html">
                                <img src="img/app/app7.png"/>
                                <div><strong>科研成果查询</strong></div>
                                <div>科研服务</div>
                                <div class="amp-star">
                                    <i class="fa fa-star amp-appStore-yellowStar"></i>
                                    <i class="fa fa-star amp-appStore-yellowStar"></i>
                                    <i class="fa fa-star amp-appStore-yellowStar"></i>
                                    <i class="fa fa-star amp-appStore-yellowStar"></i>
                                    <i class="fa fa-star amp-appStore-grayStar"></i>
                                    <span class="amp-score">112份评分</span>
                                </div>
                            </a>
                            <a class="frame-link" id="sr08" style="display: none;" url="templates/appSearchEmpty.html">
                                <img src="img/app/app8.png"/>
                                <div><strong>科研成果查询</strong></div>
                                <div>科研服务</div>
                                <div class="amp-star">
                                    <i class="fa fa-star amp-appStore-yellowStar"></i>
                                    <i class="fa fa-star amp-appStore-yellowStar"></i>
                                    <i class="fa fa-star amp-appStore-yellowStar"></i>
                                    <i class="fa fa-star amp-appStore-yellowStar"></i>
                                    <i class="fa fa-star amp-appStore-grayStar"></i>
                                    <span class="amp-score">112份评分</span>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>

            </div>

        </div>
        <button type="button" class="btn btn-sm btn-primary amp-search-btn" id="search_btn_id">搜&nbsp;索</button>
    </form>
</div>
<ul class="nav navbar-top-links navbar-right amp-nav">

    <li class="dropdown">
        <a class="count-info frame-link"   id="appStore-link" url="templates/appStore.html">
            <i class="fa fa-plus-square"></i> 应用仓库
        </a>
    </li>
    <li class="dropdown">
        <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
            <i class="fa fa-comment-o"></i>服务提醒
            <span class="label label-warning amp-sup-label">8</span>
        </a>
        <ul class="dropdown-menu dropdown-messages">
            <li>
                <div class="dropdown-messages-box">
                    <a href="profile.html" class="pull-left">
                        <img alt="image" class="img-circle" src="img/a1.jpg">
                    </a>

                    <div class="media-body">
                        <small class="pull-right text-navy">停留12小时</small>
                        <strong>戚继光</strong>发起的<strong>费用报销</strong>申请
                        <br>
                        应用：费用报销
                        <br>
                        <small class="text-muted">到达时间： 2014.10.6 7:58上午</small>
                    </div>
                </div>
            </li>
            <li class="divider"></li>
            <li>
                <div class="dropdown-messages-box">
                    <a href="profile.html" class="pull-left">
                        <img alt="image" class="img-circle" src="img/a2.jpg">
                    </a>

                    <div class="media-body ">
                        <small class="pull-right text-navy">停留12小时</small>
                        <strong>姜子牙</strong>发起的<strong>试用期转正</strong>申请
                        <br>
                        应用：试用期转正
                        <br>
                        <small class="text-muted">到达时间： 2014.10.6 7:58上午</small>
                    </div>
                </div>
            </li>
            <li class="divider"></li>
            <li>
                <div class="dropdown-messages-box">
                    <a href="profile.html" class="pull-left">
                        <img alt="image" class="img-circle" src="img/a3.jpg">
                    </a>

                    <div class="media-body ">
                        <small class="pull-right text-navy">停留1小时</small>
                        <strong>杨五郎</strong>发起的<strong>出差</strong>申请
                        <br>
                        应用：出差申请
                        <br>
                        <small class="text-muted">到达时间： 2014.10.6 7:58上午</small>
                    </div>
                </div>
            </li>
            <li class="divider"></li>
            <li>
                <div class="text-center link-block">
                    <a href="mailbox.html">
                        <i class="fa fa-envelope"></i> <strong>查看所有信息</strong>
                    </a>
                </div>
            </li>
        </ul>
    </li>


    <li>
        <a href="login.html">
            <i class="fa fa-sign-out"></i> 安全退出
        </a>
    </li>
</ul>

</nav>
</div>
<div class="row border-bottom white-bg page-heading" id="amp-index-breadcrumb" style="display: none;">
    <div class="col-lg-10">
        <h2>Advanced Form Elements</h2>
        <ol class="breadcrumb">
            <li>
                <a href="index.html">Home</a>
            </li>
            <li>
                <a>Forms</a>
            </li>
            <li class="active">
                <strong>Advanced Form Elements</strong>
            </li>
        </ol>
    </div>
    <div class="col-lg-2">

    </div>
</div><!-- 面包屑导航部分-->
<div class="row" id="amp-container">
<div class="gray-bg clearfix">
<div class="amp-main-wrapper">
<div style="font-size: 16px;margin-bottom: 10px;">本期应用</div>
<div class="pull-right amp-main-rpart">
    <div class="ibox amp-main-servicetips">
        <div class="ibox-title">
            <span class="title16">服务小贴士</span>
            <span class="badge badge-info pull-right">更多</span>
        </div>
        <div class="ibox-content">
            <div class="list">

                <div class="list-item">
                    <div class="amp-serviceTips-left">
                        <i class="fa fa-envelope fa-2x"></i>
                        <span class="amp-fa-text">我的邮箱</span>
                    </div>
                    <div class="amp-serviceTips-right">
                        <span class="amp-fa-text text-muted">未读邮件</span>
                        <span><span class="amp-text-prompt">2</span>封</span>
                    </div>
                </div>

                <div class="list-item">
                    <div class="amp-serviceTips-left">
                        <i class="fa fa-rmb fa-2x"></i>
                        <span class="amp-fa-text">我的学费</span>
                    </div>
                    <div class="amp-serviceTips-right">
                        <span class="amp-fa-text text-muted">无提示信息</span>
                        <span><span class="amp-text-prompt"></span></span>
                    </div>
                </div>

                <div class="list-item">
                    <div class="amp-serviceTips-left">
                        <i class="fa fa-credit-card fa-2x"></i>
                        <span class="amp-fa-text">校园卡</span>
                    </div>
                    <div class="amp-serviceTips-right">
                        <span class="amp-fa-text text-muted">卡内余额</span>
                        <span><span class="amp-text-prompt">39.07</span>元</span>
                    </div>
                </div>

                <div class="list-item">
                    <div class="amp-serviceTips-left">
                        <i class="fa fa-book fa-2x"></i>
                        <span class="amp-fa-text">图书借阅</span>
                    </div>
                    <div class="amp-serviceTips-right">
                        <span class="amp-fa-text text-muted">未还图书</span>
                        <span><span class="amp-text-prompt">3</span>本</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="ibox amp-main-servicetips">
        <div class="ibox-title">
            <span class="title16">应用排行</span>
        </div>
        <div class="ibox-content">
            <div class="amp-app-list">

                <div class="amp-app-item">
                    <div><img style="display: block;" src="img/app/app1.png" /></div>
                </div>


                <div class="amp-app-item">
                    <span>2. 教学成果查询</span>
                    <span class="text-muted">[教学]</span>
                </div>

                <div class="amp-app-item">
                    <span>3. 出行服务</span><span class="text-muted">[学工]</span>
                </div>
                <div class="amp-app-item">
                    <div><img src="" /></div>
                    <div><span>4. 考试成绩</span><span class="text-muted">[学工]</span></div>
                </div>
                <div class="amp-app-item">
                    <div><img src="" /></div>
                    <div><span>5. 一卡通服务</span><span class="text-muted">[学工]</span></div>
                </div>
                <div class="amp-app-item">
                    <div><img src="" /></div>
                    <div><span>6. 天气服务</span><span class="text-muted">[学工]</span></div>
                </div>
                <div class="amp-app-item">
                    <div><img src="" /></div>
                    <div><span>7. 校车服务</span><span class="text-muted">[学工]</span></div>
                </div>
                <div class="amp-app-item">
                    <div><img src="" /></div>
                    <div><span>8. 日程安排</span><span class="text-muted">[学工]</span></div>
                </div>
                <div class="amp-app-item">
                    <div><img src="" /></div>
                    <div><span>9. 网络服务</span><span class="text-muted">[学工]</span></div>
                </div>
                <div class="amp-app-item">
                    <div><img src="" /></div>
                    <div><span>10. 课表查询</span><span class="text-muted">[学工]</span></div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="amp-main-lpart clearfix">
<div class="" style="float:left;width: 100%;">
<div class="row">
    <div class="col-lg-4 col-md-6 col-sm-12">
        <div class="ibox amp-main-appbox1">
            <div class="ibox-title">
                <a class="frame-link" url="templates/teacherInfo.html">
                    <span class="badge badge-warning pull-right">剩余1天</span>
                    <h5>科研获奖情况</h5>
                </a>
            </div>
            <div class="ibox-content">
                <span>截止：2015/03/31</span>
                <span class="text-warning">已提交未保存</span>
            </div>
        </div>                    </div>
    <div class="col-lg-4 col-md-6 col-sm-12">
        <div class="ibox amp-main-appbox1">
            <div class="ibox-title">
                <a class="frame-link" url="templates/teacherInfo.html">
                    <span class="badge badge-warning pull-right">剩余5天</span>
                    <h5>干部任期考核</h5>
                </a>
            </div>
            <div class="ibox-content">
                <span>截止：2015/03/31</span>
                <span class="text-info">审核中</span>
            </div>
        </div>                    </div>
    <div class="col-lg-4 col-md-6 col-sm-12">
        <div class="ibox amp-main-appbox1">
            <div class="ibox-title">
                <a class="frame-link" url="templates/teacherInfo.html">
                    <span class="badge badge-info pull-right">剩余6天</span>
                    <h5>干部任期考核</h5>
                </a>
            </div>

            <div class="ibox-content">
                <span>截止：2015/03/31</span>
                <span class="text-info">审核中</span>
            </div>
        </div>                    </div>
    <div class="col-lg-4 col-md-6 col-sm-12">
        <div class="ibox amp-main-appbox1">
            <div class="ibox-title">
                <a class="frame-link" url="templates/teacherInfo.html">
                    <span class="badge badge-info pull-right">剩余12天</span>
                    <h5>聘期考核申报</h5>
                </a>
            </div>
            </a>
            <div class="ibox-content">
                <span>截止：2015/03/31</span>
                <span></span>
            </div>
        </div>                    </div>
    <div class="col-lg-4 col-md-6 col-sm-12">
        <div class="ibox amp-main-appbox1">
            <div class="ibox-title">
                <a class="frame-link" url="templates/teacherInfo.html">
                    <span class="badge navy-bg pull-right">剩余16天</span>
                    <h5>立项申请</h5>
                </a>
            </div>
            <div class="ibox-content">
                <span>截止：2015/03/31</span>
                <span class=""></span>
            </div>
        </div>
    </div>
    <div class="col-lg-4 col-md-6 col-sm-12">
        <div class="ibox amp-main-appbox1">
            <div class="ibox-title">
                <a class="frame-link" url="templates/teacherInfo.html">
                    <span class="badge navy-bg pull-right">剩余16天</span>
                    <h5>立项申请</h5>
                </a>
            </div>
            <div class="ibox-content">
                <span>截止：2015/03/31</span>
                <span class="text-navy">已完成</span>
            </div>
        </div>
    </div>
</div>
<!--接收拖动的块-->
<div id="amp-draggable-receiveArea" style="min-height: 200px;">
    <div data-flag="my-tasks-block" aria-disabled="false" class="skin-sort-flag row">
        <div class="col-lg-12">
            <div class="ibox" id="my-tasks">
                <div class="ibox-title">
                    <h5>我的任务</h5>
                    <div class="ibox-tools  amp-ibox-tools1">
                        <a class="collapse-link">
                            <i class="fa fa-chevron-up amp-cursor"></i>
                        </a>                    <span class="amp-viewMore">
                        <span class="badge badge-info m-r-xs amp-cursor amp-badge-viewMore">
                        view more
                        <span class="caret amp-caret-bottom"></span>
                    </span>
                        <i class="fa fa-bars amp-cursor"></i>
                    </span>
                        <i id="removeSortItem" class="fa fa-times amp-cursor"></i>
                    </div>
                </div>
                <div class="ibox-content">
                    <table class="table table-striped" style="margin-bottom: 0">
                        <thead>
                        <tr>
                            <th>任务</th>
                            <th>停留时间</th>
                            <th>发起人</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>姜楠的干部任期考核</td>
                            <td><span class="badge navy-bg">28分</span></td>
                            <td>严敏</td>
                            <!-- td><img src="img/user5.jpg" alt="" class="img-circle" style="height: 22px;"></td-->
                        </tr>
                        <tr>
                            <td>候登学的干部选拔申报</td>
                            <td><span class="badge navy-bg">3时</span></td>
                            <td>严敏</td>
                            <!-- td><img src="img/user5.jpg" alt="" class="img-circle" style="height: 22px;"></td-->                                    </tr>

                        <tr>
                            <td>"马亮的年度考核" 请审批</td>
                            <td><span class="badge navy-bg">8时20分</span></td>
                            <td>严敏</td>
                            <!-- td><img src="img/user5.jpg" alt="" class="img-circle" style="height: 22px;"></td-->                                    </tr>

                        <tr>
                            <td>"严敏的职称评定" 请审批</td>
                            <td><span class="badge navy-bg">2天</span></td>
                            <td>严敏</td>
                            <!-- td><img src="img/user5.jpg" alt="" class="img-circle" style="height: 22px;"></td-->                                    </tr>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div data-flag="process-block" class="skin-sort-flag row">
        <div class="col-lg-12">
            <div class="ibox float-e-margins" id="process-follow">
                <div class="ibox-title">
                    <h5>流程追踪</h5>
                    <div class="ibox-tools amp-ibox-tools1">
                        <a class="collapse-link">
                            <i class="fa fa-chevron-up amp-cursor"></i>
                        </a>
                                    <span class="amp-viewMore">
                                        <span class="badge badge-info m-r-xs amp-cursor amp-badge-viewMore">
                                        view more
                                        <span class="caret amp-caret-bottom"></span>
                                    </span>
                                        <i class="fa fa-bars amp-cursor"></i>
                                    </span>
                        <i id="removeSortItem" class="fa fa-times amp-cursor"></i>
                    </div>
                </div>
                <div class="ibox-content">
                    <table class="table table-striped" style="margin-bottom: 0">
                        <thead>
                        <tr>
                            <th>任务</th>
                            <th>当前办理人</th>
                            <th>停留时间</th>
                            <th>状态</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>姜楠的干部任期考核</td>
                            <td>严敏</td>
                            <td><span class="badge navy-bg">28分</span></td>
                            <td class="text-danger">未完成</td>
                        </tr>
                        <tr>
                            <td>候登学的干部选拔申报</td>
                            <td>严敏</td>
                            <td><span class="badge navy-bg">3时</span></td>
                            <td class="text-navy">已完成</td>
                        </tr>
                        <tr>
                            <td>"马亮的年度考核" 请审批</td>
                            <td>严敏</td>
                            <td><span class="badge navy-bg">8时20分</span></td>
                            <td class="text-warning">审核中</td>
                        </tr>
                        <tr>
                            <td>"严敏的职称评定" 请审批</td>
                            <td>严敏</td>
                            <td><span class="badge navy-bg">2天</span></td>
                            <td class="text-warning">未完成</td>
                        </tr>
                        <tr>
                            <td>候登学的干部选拔申报</td>
                            <td>严敏</td>
                            <td><span class="badge navy-bg">3时</span></td>
                            <td class="text-navy">已完成</td>
                        </tr>
                        <tr>
                            <td>候登学的干部选拔申报</td>
                            <td>严敏</td>
                            <td><span class="badge navy-bg">3时</span></td>
                            <td class="text-navy">已完成</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<!--拖动初始化模块  备用 start-->
<div id="my-tasks-block" class="row" style="display: none;">
    <div class="col-lg-12">
        <div class="ibox" id="my-tasks">
            <div class="ibox-title">
                <h5>我的任务</h5>
                <div class="ibox-tools amp-ibox-tools1">
                    <a class="collapse-link">
                        <i class="fa fa-chevron-up amp-cursor"></i>
                    </a>
                    <span class="amp-viewMore">
                        <span class="badge badge-info m-r-xs amp-cursor amp-badge-viewMore">
                        view more
                        <span class="caret amp-caret-bottom"></span>
                    </span>
                        <i class="fa fa-bars amp-cursor"></i>
                    </span>
                    <i id="removeSortItem" class="fa fa-times amp-cursor"></i>
                </div>
            </div>
            <div class="ibox-content">
                <table class="table table-striped" style="margin-bottom: 0">
                    <thead>
                    <tr>
                        <th>任务</th>
                        <th>停留时间</th>
                        <th>发起人</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>姜楠的干部任期考核</td>
                        <td><span class="badge navy-bg">28分</span></td>
                        <td>严敏</td>
                        <!-- td><img src="img/user5.jpg" alt="" class="img-circle" style="height: 22px;"></td-->
                    </tr>
                    <tr>
                        <td>候登学的干部选拔申报</td>
                        <td><span class="badge navy-bg">3时</span></td>
                        <td>严敏</td>
                        <!-- td><img src="img/user5.jpg" alt="" class="img-circle" style="height: 22px;"></td-->                                    </tr>
                    </tr>
                    <tr>
                        <td>"马亮的年度考核" 请审批</td>
                        <td><span class="badge navy-bg">8时20分</span></td>
                        <td>严敏</td>
                        <!-- td><img src="img/user5.jpg" alt="" class="img-circle" style="height: 22px;"></td-->                                    </tr>
                    </tr>
                    <tr>
                        <td>"严敏的职称评定" 请审批</td>
                        <td><span class="badge navy-bg">2天</span></td>
                        <td>严敏</td>
                        <!-- td><img src="img/user5.jpg" alt="" class="img-circle" style="height: 22px;"></td-->                                    </tr>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<div id="process-block" class="row" style="display: none;">
    <div class="col-lg-12">
        <div class="ibox float-e-margins" id="process-follow">
            <div class="ibox-title">
                <h5>流程追踪</h5>
                <div class="ibox-tools amp-ibox-tools1">
                    <a class="collapse-link">
                    <i class="fa fa-chevron-up amp-cursor"></i>
                    </a>
                    <span class="amp-viewMore">
                        <span class="badge badge-info m-r-xs amp-cursor amp-badge-viewMore">
                        view more
                        <span class="caret amp-caret-bottom"></span>
                    </span>
                        <i class="fa fa-bars amp-cursor"></i>
                    </span>
                    <i id="removeSortItem" class="fa fa-times amp-cursor"></i>
                </div>
            </div>
            <div class="ibox-content">
                <table class="table table-striped" style="margin-bottom: 0">
                    <thead>
                    <tr>
                        <th>任务</th>
                        <th>当前办理人</th>
                        <th>停留时间</th>
                        <th>状态</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>姜楠的干部任期考核</td>
                        <td>严敏</td>
                        <td><span class="badge navy-bg">28分</span></td>
                        <td class="text-danger">未完成</td>
                    </tr>
                    <tr>
                        <td>候登学的干部选拔申报</td>
                        <td>严敏</td>
                        <td><span class="badge navy-bg">3时</span></td>
                        <td class="text-navy">已完成</td>
                    </tr>
                    <tr>
                        <td>"马亮的年度考核" 请审批</td>
                        <td>严敏</td>
                        <td><span class="badge navy-bg">8时20分</span></td>
                        <td class="text-warning">审核中</td>
                    </tr>
                    <tr>
                        <td>"严敏的职称评定" 请审批</td>
                        <td>严敏</td>
                        <td><span class="badge navy-bg">2天</span></td>
                        <td class="text-warning">未完成</td>
                    </tr>
                    <tr>
                        <td>候登学的干部选拔申报</td>
                        <td>严敏</td>
                        <td><span class="badge navy-bg">3时</span></td>
                        <td class="text-navy">已完成</td>
                    </tr>
                    <tr>
                        <td>候登学的干部选拔申报</td>
                        <td>严敏</td>
                        <td><span class="badge navy-bg">3时</span></td>
                        <td class="text-navy">已完成</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<!--拖动初始化模块  备用 end-->
</div>

</div>
</div>
</div>

<iframe style="display: none;" name="indexIframe" frameborder="0" id="index-iframe" scrolling="no"
        allowtransparency="true" src="" onload="addEvt(this);" width="100%"></iframe>
</div><!-- iframe部分-->
<!--悬浮窗-->
<div class="amp-theme-config">
    <div class="theme-config-box">
        <div class="spin-icon">
            <i class="fa fa-cogs fa-spin"></i>
        </div>
        <div class="skin-setttings">
            <div class="title">选择颜色</div>
            <table class="amp-theme-table">
                <tr>
                    <td>
                        <div class="amp-choice-block">
                            <div class="amp-choice-item amp-default-skin"></div>
                        </div>
                        <div class="">默认</div>
                    </td>
                    <td>
                        <div class="amp-choice-block">
                            <div class="amp-choice-item default-skin"></div>
                        </div>
                        <div class="">绿色</div>
                    </td>
                    <td>
                        <div class="amp-choice-block">
                            <div class="amp-choice-item amp-blue-skin"></div>
                        </div>
                        <div class="">蓝色</div>
                    </td>
                    <td>
                        <div class="amp-choice-block">
                            <div class="amp-choice-item yellow-skin"></div>
                        </div>
                        <div class="">黄色</div>
                    </td>
                </tr>
            </table>
            <div class="title">添加新的小部件</div>
            <div class="amp-widget-item skin-sort-flag" data-flag="my-tasks-block">
                <div class="amp-widget-img"><img src="img/png72/计算机报名.png"></div>
                <div>
                    <div>我的任务</div>
                    <div class="text-muted">我的任务的简短说明</div>
                </div>
                <div class="amp-widget-line"></div>
            </div>
            <div class="amp-widget-item skin-sort-flag" data-flag="process-block">
                <div class="amp-widget-img"><img src="img/png72/学生缴费查询.png"></div>
                <div>
                    <div>新闻公告</div>
                    <div class="text-muted">新闻公告的简短说明</div>
                </div>
                <div class="amp-widget-line"></div>
            </div>
            <div class="amp-widget-item skin-sort-flag" data-flag="process-block">
                <div class="amp-widget-img"><img src="img/png72/我的成绩.png"></div>
                <div>
                    <div>课表查询</div>
                    <div class="text-muted">学习课程</div>
                </div>
                <div class="amp-widget-line"></div>
            </div>
        </div>
    </div>
</div>
<div class="footer">
    <div class="pull-right">
        Version 1.0
    </div>
    <div>
        <strong>Copyright</strong> 南京农业大学 © 2014-2015
    </div>
</div>

</div>
</div>

<!-- Mainly scripts -->
<script src="js/jquery-2.1.1.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<!-- Custom and plugin javascript -->
<script src="js/common.js"></script>
<script src="js/plugins/pace/pace.min.js"></script>

<!-- jQuery UI -->
<script src="js/plugins/jquery-ui/jquery-ui.min.js"></script>

<!-- 通知插件Toastr -->
<script src="js/plugins/toastr/toastr.min.js"></script>
<script src="js/index.js"></script>
<script src="js/amp-drag.js"></script>

<script>

</script>
</body>
</html>
