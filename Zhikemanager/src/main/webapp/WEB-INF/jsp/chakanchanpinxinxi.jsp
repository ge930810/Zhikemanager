<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>产品信息</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="author" content="悟空CRM">
<!-- 360浏览器默认使用Webkit内核 -->
<meta name="renderer" content="webkit">
<script src="${pageContext.request.contextPath}/statics/js/jquery-2.1.1.js"></script>
<link type="text/css" href="${pageContext.request.contextPath}/statics/css/jquery-ui-1.10.0.custom.css"
	rel="stylesheet">
<link type="text/css" href="${pageContext.request.contextPath}/statics/css/bootstrap-responsive.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/statics/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/statics/css/font-awesome.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/statics/css/font-awesome.min.css" rel="stylesheet">
<link type="text/css" href="${pageContext.request.contextPath}/statics/css/hovershow.css" rel="stylesheet">
<!-- animate -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/animate.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/notification.css">
<style type="text/css">
a.active {
	font-weight: bold;
	color: #777;
}

.nobr {
	white-space: nowrap;
}

#header-top {
	position: fixed;
	/*width: 87.3%;*/
	right: 0px;
	z-index: 102;
}

.sidebar-collapse {
	z-index: 9999;
}

.tooltip {
	width: 85px;
	line-height: 36px;
}

.tooltip-inner {
	padding: 3px 12px;
	text-align: left;
}

.table {
	margin-bottom: 0px;
}

@media ( max-width : 768px) {
	.nav.left-side {
		display: none;
	}
}

.navbar {
	margin-bottom: 0px;
}

.check_list {
	width: 20px;
	height: 20px;
}

.check_all {
	width: 20px;
	height: 20px;
}

.check_all {
	width: 20px;
	height: 20px;
}

input[type=checkbox], input[type=radio] {
	margin-top: 0px;
}

.radio.radio-inline {
	padding-left: 0px;
}

.alert-error {
	margin: 20px;
	line-height: 30px;
}

.text {
	color: #000;
}

.notification {
	top: 150px;
	z-index: 9999;
}

.checkbox, .radio {
	margin: 0 auto;
}

/*闪烁效果*/
.crm_heart {
	animation: heart 1s ease infinite;
}

@
keyframes heart { 0% {
	color: #FF6D57;
}
100%{
color
:
#93A6B5
;
}
}
</style>
<!-- Toastr style -->
<link href="${pageContext.request.contextPath}/statics/css/toastr.min.css" rel="stylesheet">
<!-- Sweet Alert -->
<link href="${pageContext.request.contextPath}/statics/css/sweetalert.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/statics/css/style.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/statics/css/awesome-bootstrap-checkbox.css" rel="stylesheet">
<!-- Mainly scripts -->
<script src="${pageContext.request.contextPath}/statics/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/moment.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/jquery.form.js" type="text/javascript"></script>
<!-- <script src="/Public/style/js/plugins/metisMenu/jquery.metisMenu.js"></script> -->
<script src="${pageContext.request.contextPath}/statics/js/jquery.slimscroll.min.js"></script>
<!-- Toastr -->
<script src="${pageContext.request.contextPath}/statics/js/toastr.min.js"></script>
<!-- Custom and plugin javascript -->
<script src="${pageContext.request.contextPath}/statics/js/pace.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/inspinia.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/5kcrm_zh-cn.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/statics/js/5kcrm.js" type="text/javascript"></script>
<!-- jQuery UI -->
<script src="${pageContext.request.contextPath}/statics/js/jquery-ui-1.10.0.custom.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/statics/js/WdatePicker.js" type="text/javascript"></script>
<link href="${pageContext.request.contextPath}/statics/css/WdatePicker.css" rel="stylesheet" type="text/css">
<!-- Sweet alert -->
<script src="${pageContext.request.contextPath}/statics/js/sweetalert.min.js"></script>
<!-- Jquery Validate -->
<script src="${pageContext.request.contextPath}/statics/js/jquery.validate.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/messages_zh.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/bootstrap-tooltip.js"></script>
<!-- 下拉筛选 -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/bootstrap-select.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/bootstrap-select.js"
	charset="UTF-8"></script>
<!-- select2 -->
<link href="${pageContext.request.contextPath}/statics/css/select2.min.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/statics/js/select2.full.min.js"></script>
<link href="http://demo2.5kcrm.net/Public/css/new.css">
<script>
	$(function() {
		var innerHeight = window.innerHeight;
		if (innerHeight < 768) {
			innerHeight = 768;
		}
		$("#page-wrapper").css("min-height", innerHeight);
		$(window).resize(function() {
			var innerHeight = window.innerHeight;
			if (innerHeight < 768) {
				innerHeight = 768;
			}
			$("#page-wrapper").css("min-height", innerHeight);
		});
		$(".select2").select2({
			placeholder : "--请选择--"
		// allowClear: true
		});
	});
</script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/layer.css" id="layuicss-layer">
</head>

<!-- <body class="navbar fixed-sidebar"> -->
<body class="navbar  pace-done">
	<div style="position: fixed; left: 0; top: 35%; z-index: 1000;">
		<div id="recordBtn"
			style="display: none; position: absolute; left: 0px; top: 0px; width: 27px; height: 27px; cursor: pointer; background: url(Public/img/record.png) left top no-repeat;"></div>
		<div class="recordBox"
			style="z-index: 1000; display: block; position: absolute; left: -222px; top: 26px; width: 220px; min-height: 30px; max-height: 550px; background: #fff; border: 1px solid #ccc">
			<span class="recordClose"
				style="position: absolute; right: 15px; top: 10px; display: block; width: 9px; height: 9px; cursor: pointer; background: url(Public/img/record.png) -3px -29px; z-index: 998;"></span><span
				class="fixed"
				style="display: block; width: 16px; height: 16px; background: url(&quot;Public/img/record.png&quot;) left -50px no-repeat; position: absolute; right: 8px; top: 6px; cursor: pointer; z-index: 999;"></span>
			<div class="title"
				style="position: relative; font-size: 14px; font-family: 微软雅黑; height: 30px; line-height: 30px; border-bottom: 1px solid rgb(204, 204, 204); background: rgb(230, 230, 230); text-indent: 25px;">
				<i
					style="position: absolute; display: block; width: 15px; height: 15px; background: url(&quot;Public/img/record.png&quot;) left bottom no-repeat; left: 5px; top: 7px;"></i>最近访问
			</div>
			<ul style="list-style: none; padding: 10px;">
				<li class="($vo[" type']}'=""
					style="line-height: 18px; display: block; margin-bottom: 8px;"><i
					style="display: inline-block; float: left; width: 18px; height: 18px; text-align: center; border: 1px solid rgb(204, 204, 204); border-radius: 100%; font-size: 12px; font-style: normal; line-height: 18px; margin-right: 8px; color: rgb(255, 255, 255); background: rgb(0, 136, 204);">财</i><a
					href="http://demo2.5kcrm.net/index.php?m=finance&amp;a=view&amp;id=334">M_20180312-0334</a></li>
				<li class="($vo[" type']}'=""
					style="line-height: 18px; display: block; margin-bottom: 8px;"><i
					style="display: inline-block; float: left; width: 18px; height: 18px; text-align: center; border: 1px solid rgb(204, 204, 204); border-radius: 100%; font-size: 12px; font-style: normal; line-height: 18px; margin-right: 8px; color: rgb(255, 255, 255); background: rgb(0, 136, 204);">客</i><a
					href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=320">武帝时代</a></li>
				<li class="($vo[" type']}'=""
					style="line-height: 18px; display: block; margin-bottom: 8px;"><i
					style="display: inline-block; float: left; width: 18px; height: 18px; text-align: center; border: 1px solid rgb(204, 204, 204); border-radius: 100%; font-size: 12px; font-style: normal; line-height: 18px; margin-right: 8px; color: rgb(255, 255, 255); background: rgb(0, 136, 204);">客</i><a
					href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=309">3123123</a></li>
				<li class="($vo[" type']}'=""
					style="line-height: 18px; display: block; margin-bottom: 8px;"><i
					style="display: inline-block; float: left; width: 18px; height: 18px; text-align: center; border: 1px solid rgb(204, 204, 204); border-radius: 100%; font-size: 12px; font-style: normal; line-height: 18px; margin-right: 8px; color: rgb(255, 255, 255); background: rgb(0, 136, 204);">商</i><a
					href="http://demo2.5kcrm.net/index.php?m=business&amp;a=view&amp;id=318">M_20171205-0318</a></li>
				<li class="($vo[" type']}'=""
					style="line-height: 18px; display: block; margin-bottom: 8px;"><i
					style="display: inline-block; float: left; width: 18px; height: 18px; text-align: center; border: 1px solid rgb(204, 204, 204); border-radius: 100%; font-size: 12px; font-style: normal; line-height: 18px; margin-right: 8px; color: rgb(255, 255, 255); background: rgb(0, 136, 204);">商</i><a
					href="http://demo2.5kcrm.net/index.php?m=business&amp;a=view&amp;id=478">波音787</a></li>
				<li class="($vo[" type']}'=""
					style="line-height: 18px; display: block; margin-bottom: 8px;"><i
					style="display: inline-block; float: left; width: 18px; height: 18px; text-align: center; border: 1px solid rgb(204, 204, 204); border-radius: 100%; font-size: 12px; font-style: normal; line-height: 18px; margin-right: 8px; color: rgb(255, 255, 255); background: rgb(0, 136, 204);">合</i><a
					href="http://demo2.5kcrm.net/index.php?m=contract&amp;a=view&amp;id=296">福特试驾会</a></li>
				<li class="($vo[" type']}'=""
					style="line-height: 18px; display: block; margin-bottom: 8px;"><i
					style="display: inline-block; float: left; width: 18px; height: 18px; text-align: center; border: 1px solid rgb(204, 204, 204); border-radius: 100%; font-size: 12px; font-style: normal; line-height: 18px; margin-right: 8px; color: rgb(255, 255, 255); background: rgb(0, 136, 204);">客</i><a
					href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=738">测试</a></li>
				<li class="($vo[" type']}'=""
					style="line-height: 18px; display: block; margin-bottom: 8px;"><i
					style="display: inline-block; float: left; width: 18px; height: 18px; text-align: center; border: 1px solid rgb(204, 204, 204); border-radius: 100%; font-size: 12px; font-style: normal; line-height: 18px; margin-right: 8px; color: rgb(255, 255, 255); background: rgb(0, 136, 204);">客</i><a
					href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=307">阿萨德</a></li>
			</ul>
		</div>
	</div>
	<div class="pace  pace-inactive">
		<div class="pace-progress" data-progress-text="100%"
			data-progress="99" style="transform: translate3d(100%, 0px, 0px);">
			<div class="pace-progress-inner"></div>
		</div>
		<div class="pace-activity"></div>
	</div>
	<div id="wrapper">
		<nav class="navbar-default navbar-static-side" role="navigation"
			style="width: 70px;">
		<div class="sidebar-collapse">
			<ul class="nav metismenu left-side" id="side-menu">
				<li class="nav-header" style="padding: 6px 21px 21px;"><br>
					<div class="logo-element" style="margin: -17px -25px;">
						<img class="img-circle" src="img/logo2.png"
							style="width: 38px; height: 38px; margin-right: 0px;" alt="悟空CRM">
					</div></li>
				<li><a data-toggle="tooltip" data-placement="right"
					data-original-title="首页" href=""><i class="fa fa-home"></i></a></li>

				<li><a data-toggle="tooltip" data-placement="right"
					data-original-title="客户管理" href="kehuguanli.htm"><i
						class="fa fa-user"></i></a></li>
				<li><a data-toggle="tooltip" data-placement="right"
					data-original-title="商机管理" href="shangjiguanli.htm"><i
						class="fa fa-suitcase"></i></a></li>
				<li><a data-toggle="tooltip" data-placement="right"
					data-original-title="产品管理" class="active" href="chanpinguanli.htm"><i
						class="fa fa-inbox"></i></a></li>
				<li><a data-toggle="tooltip" data-placement="right"
					data-original-title="合同订单" href="hetong.htm"><i
						class="fa fa-file-text"></i></a></li>
				<!--<li>
							<a data-toggle="tooltip" data-placement="right" data-original-title="财务管理" href=""><i class="fa fa-credit-card"></i></a>
						</li>
						<li>
							<a data-toggle="tooltip" data-placement="right" data-original-title="数据分析" href=""><i class="fa fa-area-chart"></i></a>
						</li>
						<li>
							<a data-toggle="tooltip" data-placement="right" data-original-title="办公" href=""><i class="fa fa-desktop"></i></a>
						</li>-->
				<li><a data-toggle="tooltip" data-placement="right"
					data-original-title="通讯录" href="renyuanguanli.htm"><i
						class="fa fa-phone-square"></i></a></li>
				<!--<li>
							<a data-toggle="tooltip" data-placement="right" data-original-title="营销" href=""><i class="fa fa-envelope"></i></a>
						</li>
						<li>
							<a data-toggle="tooltip" data-placement="right" data-original-title="系统设置" href=""><i class="fa fa-cog"></i></a>
						</li>-->
			</ul>
		</div>
		</nav>
		<div id="page-wrapper" class="gray-bg"
			style="background: rgb(230, 233, 240); min-height: 574px;">
			<div class="row border-bottom white-bg"
				style="box-shadow: 0px 4px 13px -8px #5A5A5A; z-index: 102;">
				<nav class="navbar navbar-default nav-head navbar-static-top"
					role="navigation" style="margin-bottom: 0">
				<ul class="nav navbar-nav navbar-left navbar-form-custom"
					style="min-width: 60%;">
					<li class="active"><a
						href="http://demo2.5kcrm.net/index.php?m=product&amp;a=index"><span
							class="fa fa-inbox" style="display: inline"></span>&nbsp;&nbsp;产品</a></li>
				</ul>
				<ul class="nav navbar-top-links navbar-right"
					style="margin-right: 0px;">
					<li class="dropdown" style=""><a
						class="dropdown-toggle count-info" id="todo_url"
						data-toggle="dropdown"
						href="http://demo2.5kcrm.net/index.php?m=product&amp;a=view&amp;id=92#"
						title="待办事项"> <img src="img/remain.png" alt="">
						<div class="label label-info" style="background-color: #FA7252;"
								id="todo_num">227</div>
					</a>
						<ul class="dropdown-menu dropdown-alerts folder-list m-b-md"
							style="width: 250px;">
							<li style="border-bottom: 1px dashed #e7eaec !important;"><a
								href="http://demo2.5kcrm.net/index.php?m=contract&amp;a=index&amp;contract_checked=1&amp;by=all"><i
									class="fa fa-list-alt"></i>&nbsp;&nbsp;待审核的合同<span
									class="label label-info pull-right"
									style="background-color: #FA7252;"
									id="header_check_contract_num">66</span></a></li>
							<li style="border-bottom: 1px dashed #e7eaec !important;"><a
								href="http://demo2.5kcrm.net/index.php?m=finance&amp;a=index&amp;t=receivingorder&amp;status[value]=0&amp;by=all"><i
									class="fa fa-money"></i>&nbsp;&nbsp;待审核的回款<span
									class="label label-info pull-right"
									style="background-color: #FA7252;" id="header_receivables_num">50</span></a></li>
							<li style="border-bottom: 1px dashed #e7eaec !important;"><a
								href="http://demo2.5kcrm.net/index.php?m=examine&amp;a=index&amp;by=me_examine&amp;examining=1"><i
									class="fa fa-check-square-o"></i>&nbsp;&nbsp;待处理的审批流<span
									class="label label-info pull-right"
									style="background-color: #FA7252;" id="header_examine_num">2</span></a></li>
							<li style="border-bottom: 1px dashed #e7eaec !important;"><a
								href="http://demo2.5kcrm.net/index.php?m=contract&amp;a=index&amp;by=dqcontact"><i
									class="fa fa-user"></i>&nbsp;&nbsp;合同到期提醒<span
									class="label label-info pull-right"
									style="background-color: #FA7252;" id="header_dqcontact_num">41</span></a></li>

							<li style="border-bottom: 1px dashed #e7eaec !important;"><a
								href="http://demo2.5kcrm.net/index.php?m=finance&amp;a=index&amp;t=receivables&amp;r_status=1&amp;by=me"><i
									class="fa fa-money"></i>&nbsp;&nbsp;应收款提醒<span
									class="label label-info pull-right"
									style="background-color: #FA7252;" id="receivables_num">68</span></a></li>
							<li style="border-bottom: 1px dashed #e7eaec !important;"><a
								href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=index&amp;by=todaycontact"><i
									class="fa fa-user"></i>&nbsp;&nbsp;今日需跟进客户<span
									class="label label-info pull-right"
									style="background-color: #FA7252;"
									id="header_follow_customer_num"></span></a></li>
						</ul></li>
					<li class="dropdown" style=""><a
						class="dropdown-toggle count-info" id="event_url"
						data-toggle="dropdown"
						href="http://demo2.5kcrm.net/index.php?m=product&amp;a=view&amp;id=92#"
						title="今日日程"> <img src="img/event.png" alt=""><span
							class="label label-warning" id="event_num">3</span>
					</a>
						<ul class="dropdown-menu dropdown-alerts">
							<li class="list-group" role="presentation" id="event_group"
								style="height: 220px;">
								<div class="slimScrollDiv"
									style="position: relative; overflow: hidden; width: auto; height: 100%;">
									<div class="full-height-scroll" id="event_list"
										data-height="220px" data-plugin="slimScroll"
										style="overflow: hidden; width: auto; height: 100%;">
										<a href="http://demo2.5kcrm.net/index.php?m=event&amp;a=index"
											title="点击查看"
											style="padding: 5px !important; border-bottom: 1px dashed #ddd; float: left; margin-bottom: 5px; width: 100%;">
											<div style="overflow: hidden; padding: 0 10px;">
												<span class="pull-left"
													style="color: #46be8a; line-height: 26px;"><i
													class="fa fa-circle"></i>&nbsp;&nbsp;【 提醒 】波音787</span><br> <small
													class="text-muted pull-right" style="margin-top: 5px;">2018年03月14
													15:00</small>
											</div>
										</a><a href="http://demo2.5kcrm.net/index.php?m=event&amp;a=index"
											title="点击查看"
											style="padding: 5px !important; border-bottom: 1px dashed #ddd; float: left; margin-bottom: 5px; width: 100%;">
											<div style="overflow: hidden; padding: 0 10px;">
												<span class="pull-left"
													style="color: #57c7d4; line-height: 26px;"><i
													class="fa fa-circle"></i>&nbsp;&nbsp;通话</span><br> <small
													class="text-muted pull-right" style="margin-top: 5px;">2018年03月14
													17:32 ~ 2018年03月14 23:59</small>
											</div>
										</a><a href="http://demo2.5kcrm.net/index.php?m=event&amp;a=index"
											title="点击查看"
											style="padding: 5px !important; border-bottom: 1px dashed #ddd; float: left; margin-bottom: 5px; width: 100%;">
											<div style="overflow: hidden; padding: 0 10px;">
												<span class="pull-left"
													style="color: #62a8ea; line-height: 26px;"><i
													class="fa fa-circle"></i>&nbsp;&nbsp;了解一下</span><br> <small
													class="text-muted pull-right" style="margin-top: 5px;">2018年03月14
													23:19 ~ 2018年03月14 23:59</small>
											</div>
										</a>
									</div>
									<div class="slimScrollBar"
										style="background: rgb(153, 153, 153); width: 7px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 7px; z-index: 99; right: 1px;"></div>
									<div class="slimScrollRail"
										style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div>
								</div>
							</li>
							<li>
								<div class="text-center link-block">
									<a href="http://demo2.5kcrm.net/index.php?m=event&amp;a=index">
										<strong>查看全部日程</strong> <i class="fa fa-angle-right"></i>
									</a>
								</div>
							</li>
							<li class="divider" style="height: 0px;"></li>
						</ul></li>
					<li class="dropdown"><a class="dropdown-toggle count-info"
						id="message_url" data-toggle="dropdown"
						href="http://demo2.5kcrm.net/index.php?m=product&amp;a=view&amp;id=92#"
						title="站内信"> <img src="img/bell.png" alt=""><span
							class="label label-primary" id="message_num"></span>
					</a>
						<ul class="dropdown-menu dropdown-alerts" style="width: 365px;">
							<li class="list-group" role="presentation" id="message_group"
								style="height: 220px; display: none;">
								<div class="slimScrollDiv"
									style="position: relative; overflow: hidden; width: auto; height: 100%;">
									<div class="full-height-scroll" id="message_list"
										data-height="220px" data-plugin="slimScroll"
										style="overflow: hidden; width: auto; height: 100%;"></div>
									<div class="slimScrollBar"
										style="background: rgb(153, 153, 153); width: 7px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 7px; z-index: 99; right: 1px;"></div>
									<div class="slimScrollRail"
										style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div>
								</div>
							</li>
							<li>
								<div class="text-center link-block">
									<a
										href="http://demo2.5kcrm.net/index.php?m=message&amp;a=index">
										<strong>站内信列表</strong> <i class="fa fa-angle-right"></i>
									</a>
								</div>
							</li>
							<li class="divider" style="height: 0px;"></li>
						</ul></li>
					<li style="padding-left: 30px;"><a
						href="http://demo2.5kcrm.net/index.php?m=product&amp;a=view&amp;id=92#"
						class="dropdown-toggle" data-toggle="dropdown"
						style="padding: 2px;"> <img alt="头像"
							style="height: 38px; width: 38px" class="img-circle"
							src="img/thumb_5aa5ec505c63c2291.png">
					</a>
						<ul class="dropdown-menu">
							<li><a
								href="http://demo2.5kcrm.net/index.php?m=user&amp;a=edit">个人资料</a></li>
							<li><a
								href="http://demo2.5kcrm.net/index.php?m=setting&amp;a=lockscreen">一键锁屏</a></li>
							<li class="divider"></li>
							<li><a href="javascript:void(0);" id="authorize">版本及授权信息</a></li>
							<li><a class="logout" href="javascript:void(0);">退出</a></li>
						</ul></li>
				</ul>
				</nav>
			</div>

			<!-- 模态框 -->



			<script type="text/javascript">
				$(document).on('click', '#authorize', function() {
					$('#Modal_anthorize').modal('show');
				});

				$('[data-toggle="tooltip"]').tooltip({
					html : true
				});
				/*时间插件*/
				$('.date').datepicker({
					format : "yyyy-mm-dd",
					todayBtn : "linked",
					keyboardNavigation : false,
					forceParse : false,
					calendarWeeks : true,
					autoclose : true
				});
				$("#dialog-message-send").dialog({
					autoOpen : false,
					modal : true,
					width : 800,
					maxHeight : 600,
					position : [ "center", 100 ]
				});

				$(function() {
					/*站内信*/
					message_tips();
					login_tips();
					$("#header_send_message").click(
							function() {
								$('#dialog-message-send').dialog('open');
								$('#dialog-message-send').load(
										'/index.php?m=message&a=send');
							});
					/*让复选框默认取消选择*/
					//$(':checkbox').prop('checked', false);
					/*记录菜单隐藏状态*/
					$(".navbar-minimalize").click(
							function() {
								var arr, reg = new RegExp(
										"(^| )mini-navbar=([^;]*)(;|$)");
								arr = document.cookie.match(reg);
								if (arr) {
									var nav_status = unescape(arr[2]) == 1 ? 0
											: 1;
								} else {
									var nav_status = 1;
								}
								document.cookie = "mini-navbar=" + nav_status;
							});
				});

				function salert() {
					var txt = "";
					if (txt != '') {
						swal(txt, "", "")
					}
				}

				/*退出提示*/
				$('.logout').click(function() {
					swal({
						title : "确定退出登录?",
						type : "warning",
						showCancelButton : true,
						confirmButtonColor : "#DD6B55",
						confirmButtonText : "确定",
						cancelButtonText : "取消",
						closeOnConfirm : false
					}, function(isConfirm) {
						if (isConfirm) {
							window.location = "/index.php?m=user&a=logout";
						}
					});
				});

				/*提交失败返回前一页*/
				var href = "";
				if (href != '' && href != null) {
					swal({
						title : "添加失败!",
						type : "error",
						confirmButtonColor : "#DD6B55",
						confirmButtonText : "返回",
						closeOnConfirm : false
					}, function() {
						location.href = 'javascript:history.back(-1)';
					});
				}
				var login_show = 0;
				function login_tips() {
					$.get("/index.php?m=message&a=logintips", function(data) {
						var is_login = data.data['is_login'];
						if (is_login == 0 && login_show != 1) {
							$.ajax({
								type : "GET",
								url : "/index.php?m=user&a=loginajax",
								async : true,
								success : function(data) {
									if (data.status != 2) {
										$("#login_modal").parent().removeClass(
												"modal-lg")
												.addClass("modal-md");
										$url = "/index.php?m=user&a=loginajax";
										$('#Modal_login').modal('show');
										login_show = 1;
										$('#login_modal').load($url);
									} else {
										login_show = 1;
									}
								}
							});
						}
					}, 'json')
					setTimeout('login_tips()', 20000);
				}

				/*轮询*/
				var mark_count = 1;//标记第一次弹出
				/*初始默认值*/

				var msg_num = '0,0';

				function message_tips() {
					$
							.get(
									"/index.php?m=message&a=tips",
									function(data) {
										var is_lock = data.data['is_lock'];
										if (is_lock == 1) {
											location.href = "/index.php?m=setting&a=lockscreen";
										}
										//卡片提醒显示与隐藏
										var message_html = '';
										var new_num = data.data['message']
												+ ','
												+ data.data['contract_count'];

										//待办事项
										$('#header_check_contract_num')
												.html(
														data.data['check_contract_num']);
										$('#header_dqcontact_num').html(
												data.data['contract_num']);
										$('#header_examine_num').html(
												data.data['examine_num']);
										$('#header_receivables_num')
												.html(
														data.data['receivingorder_num']);
										$('#receivables_num').html(
												data.data['receivables_num']);
										$('#header_follow_customer_num').html(
												data.data['today_customer']);
										if (data.data['todo_num']) {
											$('#todo_num').html(
													data.data['todo_num']);
										} else {
											$('#todo_num').html('');
										}

										//导航提醒实时写入数值
										if (data.data['message'] != 0
												&& data.data['message'] != '') {
											$('#message_group').show();
											//桌面提醒
											if (data.data['data_list']) {
												$(data.data['data_list'])
														.each(
																function(k, v) {
																	if (data.data['data_list_count'] < 3) {
																		animateMessage(
																				v.role_info.thumb_path,
																				v.role_info.full_name,
																				v.content_msubstr);
																	}
																	aaa(
																			v.role_info.thumb_path,
																			v.role_info.full_name,
																			v.content,
																			v.url_link);
																});
											}
											$('#message_num').html(
													data.data['message']);
											$('#message_list').html('');
											if (data.data['message_num'] != 0
													&& data.data['message_num'] != '') {
												message_html += '<a href="/index.php?m=message&a=index" style="width:100%;color:#676a6c;padding:5px !important;border-bottom:1px dashed #ddd;float:left;margin-bottom:5px;">\
		                    <div style="padding:0 10px;">\
		                        <img src="img/wukong.png" title="悟空小助手"> 您有<strong>'
														+ data.data['message_num']
														+ '</strong>条消息待查看\
		                        <span class="pull-right text-muted small" style="line-height:30px;">'
														+ data.data['message_time']
														+ '前</span>\
		                    </div>\
		                </a>';
											}

											if (data.data['message_announcement_count'] != 0
													&& data.data['message_announcement_count'] != '') {
												message_html += '<a href="/index.php?m=message&a=index&by=announcement" style="width:100%;color:#676a6c;padding:5px !important;border-bottom:1px dashed #ddd;float:left;margin-bottom:5px;">\
		                    <div style="padding:0 10px;">\
		                        <img src="img/announcement.png" title="系统公告"> 您有<strong>'
														+ data.data['message_announcement_count']
														+ '</strong>条公告信息待查看\
		                        <span class="pull-right text-muted small" style="line-height:30px;">'
														+ data.data['announcement_time']
														+ '前</span>\
		                    </div>\
		                </a>';
											}
											if (data.data['role_message_list']) {
												$(
														data.data['role_message_list'])
														.each(
																function(k, v) {
																	message_html += '<a href="/index.php?m=message&a=message_view&to_role_id='
																			+ v.role_id
																			+ '" title="点击回复" style="width:100%;color:#676a6c;padding:5px !important;border-bottom:1px dashed #ddd;float:left;margin-bottom:5px;" >\
	                            <div class="dropdown-messages-box" style="padding:0 10px;">\
	                                <div class="pull-left">\
	                                    <img alt="image" class="img-circle" src="'+v.thumb_path+'">&nbsp;\
	                                </div>\
	                                <div style="overflow:hidden;">\
	                                    <span>'
																			+ v.full_name
																			+ '</span><span class="label label-warning pull-right" style="margin-right: 3px;border-radius:50% !important;">'
																			+ v.unread_num
																			+ '</span><br>\
	                                    <span style="word-wrap: break-word;word-break: normal;float:left;margin-top:10px;width:100%;">'
																			+ v.content
																			+ '</span><br>\
	                                    <small class="text-muted pull-right" style="margin-top: 5px;">'
																			+ v.send_time
																			+ '</small>\
	                                </div>\
	                            </div>\
	                        </a>';
																});
											}
											$('#message_list').append(
													message_html);
										} else {
											$('#message_group').hide();
										}
										//日程提醒
										var event_temp = '';
										if (data.data['event_list'] != 0
												&& data.data['event_list'] != '') {
											$('#event_group').show();
											$('#event_list').html('');
											$('#event_num').html(
													data.data['event_num']);
											$
													.each(
															data.data['event_list'],
															function(k, v) {
																event_temp += '<a href="/index.php?m=event&a=index" title="点击查看" style="padding:5px !important;border-bottom:1px dashed #ddd;float:left;margin-bottom:5px;width:100%;">\
	                                <div style="overflow:hidden;padding:0 10px;">\
	                                	<span class="pull-left" style="color:'+v.color+';line-height:26px;"><i class="fa fa-circle"></i>&nbsp;&nbsp;'
																		+ v.subject
																		+ '</span><br>\
	                                    <small class="text-muted pull-right" style="margin-top: 5px;">'
																		+ v.between_date
																		+ '</small>\
	                                </div>\
	                            </a>';
															});
											$('#event_list').append(event_temp);
										} else {
											$('#event_group').hide();
										}
									}, 'json')
					setTimeout('message_tips()', 30000);
				}

				/*head 特效*/
				$('.nav-head .navbar-left li').mouseover(function() {
					$(this).find('a span').css("color", '#ffb173');
				});

				$('.nav-head .navbar-left li').mouseout(function() {
					$(this).find('a span').css("color", '#e6e9f2');
				});
			</script>

			<script type="text/javascript">
				function aaa(icon, name, content, url_link) {
					var t = new Date().toLocaleString();
					var options = {
						dir : "ltr",
						lang : "utf-8",
						icon : icon,
						body : content
					};
					if (Notification && Notification.permission === "granted") {
						var n = new Notification(name + t, options);
						//5秒后自动关闭 
						n.onshow = function() {
							setTimeout(function() {
								n.close();
							}, 5000)
						};
						n.onclick = function() {
							// alert("You clicked me!");
							window.location = url_link;
							n.close();
						};
						n.onclose = function() {
							console.log("notification closed!");
						};
						n.onerror = function() {
							console.log("An error accured");
						}
					}
				}
			</script>
			<script src="${pageContext.request.contextPath}/statics/js/PCASClass.js" type="text/javascript"></script>
			<div class="wrapper wrapper-content animated fadeIn">
				<div class="row">
					<div class="col-lg-12">
						<!-- <div class="white-bg" style="padding:7px 25px 0px 25px;margin-bottom:15px;">
				<div class="row " id="title-show">
					<ul class="nav pull-left" style="margin:2px 0 0 15px;">
						<span><img src="/Public/img/product_view_icon.png" style="margin-bottom:9px;" alt=""></span>
						<span style="font-size:21px;margin-left:5px">da的地位</span>
					</ul>
				</div>
			</div> -->
						<div class="title-bar" style="">
							<div class="row " id="title-show">
								<ul class="nav pull-left" style="margin: 0px 10px 0px 20px;">
									<span><img src="img/product_view_icon.png"
										style="margin-bottom: 9px;" alt=""></span>
									<span style="font-size: 21px; margin-left: 5px">&nbsp;&nbsp;&nbsp;da的地位</span>&nbsp;&nbsp;
								</ul>
								<a href="javascript:void(0)" id="delete_product"
									class="btn btn-outline btn-default pull-right"
									style="margin-right: 15px;"><i class="fa fa-times"></i>&nbsp;&nbsp;下架</a>&nbsp;&nbsp;
								<a href="bianjichanpinxinxi.htm"
									class="btn btn-outline btn-default pull-right"
									style="margin-right: 15px;"><i class="fa fa-pencil"></i>&nbsp;&nbsp;编辑</a>&nbsp;&nbsp;
							</div>
						</div>
						<div class="tabs-container">
							<div
								style="padding: 15px 0px 0px 20px; background: rgb(255, 255, 255); min-height: 492.48px;"
								id="left-content">
								<ul class="nav nav-tabs" id="left_list" style="height: 40px;">
									<li class="active"><a
										href="http://demo2.5kcrm.net/index.php?m=product&amp;a=view&amp;id=92#tab1"
										data-toggle="tab" type="tab1">基本信息</a></li>
									<li><a
										href="http://demo2.5kcrm.net/index.php?m=product&amp;a=view&amp;id=92#tab3"
										data-toggle="tab" type="tab3">日程</a></li>
									<li><a
										href="http://demo2.5kcrm.net/index.php?m=product&amp;a=view&amp;id=92#tab2"
										data-toggle="tab" type="tab2">产品附件</a></li>
								</ul>
								<div class="tab-content ">
									<div class="tab-pane in active " id="tab1">
										<div class="panel-body ">
											<div class="form-horizontal view-group ">
												<div class="form-group">
													<label class="col-lg-2 control-label">创建时间</label>
													<div class="col-lg-4">
														<p class="form-p">2018-03-12 21:22:42</p>
													</div>
													<label class="col-lg-2 control-label">产品信息添加者</label>
													<div class="col-lg-4">
														<p class="form-p">
															<a class="role_info" href="javascript:void(0)" rel="1">邹总</a>
														</p>
													</div>
												</div>
												<div id="list-show" rel="false" class="">
													<div class="form-group">
														<label class="col-lg-2 control-label">服务种类</label>
														<div class="col-lg-4">
															<p class="form-p">
																<span style="color: #333333">瓶</span>
															</p>
														</div>

														<label class="col-lg-2 control-label">产品类别</label>
														<div class="col-lg-4">
															<p class="form-p">
																<span style="color: #">平媒媒体</span>
															</p>
														</div>
													</div>
													<div class="form-group">
														<label class="col-lg-2 control-label">备注</label>
														<div class="col-lg-4">
															<p class="form-p">
																<span style="color: #"></span>
															</p>
														</div>

														<label class="col-lg-2 control-label">商品名称</label>
														<div class="col-lg-4">
															<p class="form-p">
																<span style="color: #021012">da的地位</span>
															</p>
														</div>
													</div>
													<div class="form-group">
														<label class="col-lg-2 control-label">建议售价</label>
														<div class="col-lg-4">
															<p class="form-p">
																<span style="color: #">0.00</span>
															</p>
														</div>

														<label class="col-lg-2 control-label">产品编号</label>
														<div class="col-lg-4">
															<p class="form-p">
																<span style="color: #333333"></span>
															</p>
														</div>
													</div>
													<div class="form-group">
														<label class="col-lg-2 control-label">成本价</label>
														<div class="col-lg-4">
															<p class="form-p">
																<span style="color: #1F1F1F">0.00</span>
															</p>
														</div>

														<label class="col-lg-2 control-label">商品描述</label>
														<div class="col-lg-4">
															<p class="form-p">
																<span style="color: #333333"></span>
															</p>
														</div>
													</div>
													<!-- <div class="form-group">
					                        <label class="col-lg-2 control-label">库存</label>
					                        <div class="col-lg-4">
					                            <p class="form-p">
					                                					                            </p>
					                        </div>
					                        <div class="col-lg-6"></div>
					                    </div> -->
													<div class="form-group">
														<label class="col-lg-2 control-label">产品图片</label>
														<div class="col-lg-4 ">
															<a class="litebox"
																href="http://demo2.5kcrm.net/index.php?m=product&amp;a=view&amp;id=92"
																title="点击查看大图"><img
																src="http://demo2.5kcrm.net/index.php?m=product&amp;a=view&amp;id=92"
																style="max-width: 200px; height: auto;"></a>
														</div>
														<div class="col-lg-6 "></div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="tab-pane fade back_box" id="tab3">
										<div class="panel-body">
											<div class="ibox">
												<div
													style="text-align: center; color: #E4E4E4; font-size: 22px; font-weight: 700; padding-top: 15px;">
													<img src="img/exclamation_mark.png"
														style="margin-top: -3px;">&nbsp;&nbsp;暂无数据
												</div>
											</div>
										</div>
									</div>
									<div class="tab-pane " id="tab2">
										<div class="panel-body">
											<div class="header1">
												<div class="pull-right">
													<a href="javascript:void(0);" type="button"
														class="add_file btn btn-primary"><i
														class="fa fa-upload"></i>&nbsp;&nbsp;上传</a>
												</div>
												<div style="clear: both;"></div>
											</div>
											<div style="background-color: #fff;">
												<div
													style="text-align: center; color: #E4E4E4; font-size: 22px; font-weight: 700; padding-top: 15px;">
													<img src="img/exclamation_mark.png"
														style="margin-top: -3px;">&nbsp;&nbsp;暂无数据
												</div>
											</div>
											<table class="table product-table">

											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>


			<link href="${pageContext.request.contextPath}/statics/css/litebox.css" rel="stylesheet" type="text/css">
			<script src="${pageContext.request.contextPath}/statics/js/litebox.min.js" type="text/javascript"></script>
			<script src="${pageContext.request.contextPath}/statics/js/images-loaded.min.js" type="text/javascript"></script>
			<script type="text/javascript">
				//页面加载时执行Tab start
				$(function() {
					var thisId = window.location.hash;
					var atype = thisId.substr(1);
					$('#left_list a[type="' + atype + '"]').tab('show');
				});
				// 页面加载时执行Tab end
				$('#left_list a').click(function(e) {
					var maodian = '#' + $(this).attr('type');
					url_jump(maodian);
				});
				function url_jump(maodian) {
					var product_id = "92";
					;
					var url = "/index.php?m=product&a=view&id=" + product_id
							+ maodian;
					window.history.replaceState({}, 0, 'http://'
							+ window.location.host + url);
				}

				//初始化图片查看插件
				$('.litebox').liteBox({
					revealSpeed : 400,
					background : 'rgba(0,0,0,.8)',
					overlayClose : true,
					escKey : true,
					navKey : true,
					errorMessage : '图片加载失败.'
				});
				/**
				 * 如果是图片时 双击可查看大图
				 */
				$('.litebox_file').liteBox({
					revealSpeed : 400,
					background : 'rgba(0,0,0,.8)',
					overlayClose : true,
					escKey : true,
					navKey : true,
					errorMessage : '图片加载失败.'
				});

				//排序
				$(".ui-sortable").sortable({
					connectWith : ".box-secondary",
					stop : function() {
						var images_arr = new Array();
						$(".box-secondary").each(function(key, val) {
							images_arr.push($(val).attr('rel'));
						});

						$.post('/index.php?m=product&a=sortImg', {
							images_arr : images_arr.join(',')
						}, 'json');
					}
				});
				width = 800;
				$(".role_info").click(
						function() {
							$role_id = $(this).attr('rel');
							$('#dialog-role-info').dialog('open');
							$('#dialog-role-info').load(
									'/index.php?m=user&a=dialoginfo&id='
											+ $role_id);
						});
				$("#dialog-role-info").dialog({
					autoOpen : false,
					modal : true,
					width : 600,
					maxHeight : 550,
					position : [ "center", 100 ]
				});
				$("#dialog-file").dialog({
					autoOpen : false,
					modal : true,
					width : width,
					maxHeight : 400,
					position : [ "center", 100 ],
					buttons : {
						"确定" : function() {
							location.reload();
						},
						"取消" : function() {
							$(this).dialog("close");
						}
					}
				});
				$(".add_file")
						.click(
								function() {
									$('#dialog-file').dialog('open');
									$('#dialog-file')
											.load(
													'/index.php?m=file&a=add&r=RFileProduct&module=product&id=92');
								});
				$(".more").click(function() {
					log_id = $(this).attr('rel');
					$('#llog_' + log_id).attr('class', '');
					$('#slog_' + log_id).attr('class', 'hide');
				});
				$('.del_product')
						.click(
								function() {
									var file_id = $(this).attr('rel');
									swal(
											{
												title : "您确定要删除这个附件吗？",
												text : "删除后将无法恢复，请谨慎操作！",
												type : "warning",
												showCancelButton : true,
												confirmButtonColor : "#DD6B55",
												confirmButtonText : "是的，我要删除！",
												cancelButtonText : '让我再考虑一下…',
												closeOnConfirm : false,
												closeOnCancel : false
											},
											function(isConfirm) {
												if (isConfirm) {
													$
															.ajax({
																type : 'get',
																url : "/index.php?m=file&a=delete&r=RFileProduct&id="
																		+ file_id,
																async : false,
																success : function(
																		data) {
																	if (data.status == 1) {
																		swal(
																				"删除成功！",
																				"您已经永久删除了信息！",
																				"success");
																		location
																				.reload();
																	} else {
																		swal({
																			title : "操作失败！",
																			text : data.info,
																			type : "error"
																		})
																		return false;
																	}
																},
																dataType : 'json'
															});
												} else {
													swal("已取消", "您取消了删除操作！",
															"error");
												}
											});
								});

				// 下架
				$('#delete_product')
						.click(
								function() {
									var product_id = "92";
									swal(
											{
												title : "温馨提示",
												text : "您确定要下架这个产品吗？",
												type : "warning",
												showCancelButton : true,
												confirmButtonColor : "#DD6B55",
												confirmButtonText : "是的，我要下架！",
												cancelButtonText : '让我再考虑一下…',
												closeOnConfirm : false,
												closeOnCancel : false
											},
											function(isConfirm) {
												if (isConfirm) {
													$
															.ajax({
																type : 'get',
																url : "/index.php?m=product&a=delete&id="
																		+ product_id,
																async : false,
																success : function(
																		data) {
																	if (data.status == 1) {
																		swal(
																				"下架成功！",
																				"您已经下架了该产品！",
																				"success");
																		location
																				.reload();
																	} else {
																		swal({
																			title : "操作失败！",
																			text : data.info,
																			type : "error"
																		})
																		return false;
																	}
																},
																dataType : 'json'
															});
												} else {
													swal("已取消", "您取消了下架操作！",
															"error");
												}
											});
								});

				//上架产品
				$('#revert_product')
						.click(
								function() {
									var product_id = "92";
									swal(
											{
												title : "温馨提示",
												text : "您确定要上架这个产品吗？",
												type : "warning",
												showCancelButton : true,
												confirmButtonColor : "#DD6B55",
												confirmButtonText : "是的，我要上架！",
												cancelButtonText : '让我再考虑一下…',
												closeOnConfirm : false,
												closeOnCancel : false
											},
											function(isConfirm) {
												if (isConfirm) {
													$
															.ajax({
																type : 'get',
																url : "/index.php?m=product&a=revert&product_id="
																		+ product_id,
																async : false,
																success : function(
																		data) {
																	if (data.status == 1) {
																		swal(
																				"上架成功！",
																				"您已经上架了该产品！",
																				"success");
																		location
																				.reload();
																	} else {
																		swal({
																			title : "操作失败！",
																			text : data.info,
																			type : "error"
																		})
																		return false;
																	}
																},
																dataType : 'json'
															});
												} else {
													swal("已取消", "您取消了下架操作！",
															"error");
												}
											});
								});
			</script>
			<script>
				// spacer.gif

				$(document)
						.ready(
								function() {
									// 固定按钮

									var list = '';
									var t_type = "finance";
									var t_name = '';
									if (t_type == "leads") {
										t_name = '<i>线</i>';
									}
									if (t_type == "customer") {
										t_name = '<i>客</i>';
									}
									if (t_type == "business") {
										t_name = '<i>商</i>';
									}
									if (t_type == "contract") {
										t_name = '<i>合</i>';
									}
									if (t_type == "examine") {
										t_name = '<i>审</i>';
									}
									if (t_type == "finance") {
										t_name = '<i>财</i>';
									}
									list += "<li class='($vo['type']}'>"
											+ t_name
											+ "<a href='/index.php?m=finance&a=view&id=334'>M_20180312-0334</a></li>";
									var t_type = "customer";
									var t_name = '';
									if (t_type == "leads") {
										t_name = '<i>线</i>';
									}
									if (t_type == "customer") {
										t_name = '<i>客</i>';
									}
									if (t_type == "business") {
										t_name = '<i>商</i>';
									}
									if (t_type == "contract") {
										t_name = '<i>合</i>';
									}
									if (t_type == "examine") {
										t_name = '<i>审</i>';
									}
									if (t_type == "finance") {
										t_name = '<i>财</i>';
									}
									list += "<li class='($vo['type']}'>"
											+ t_name
											+ "<a href='/index.php?m=customer&a=view&id=320'>武帝时代</a></li>";
									var t_type = "customer";
									var t_name = '';
									if (t_type == "leads") {
										t_name = '<i>线</i>';
									}
									if (t_type == "customer") {
										t_name = '<i>客</i>';
									}
									if (t_type == "business") {
										t_name = '<i>商</i>';
									}
									if (t_type == "contract") {
										t_name = '<i>合</i>';
									}
									if (t_type == "examine") {
										t_name = '<i>审</i>';
									}
									if (t_type == "finance") {
										t_name = '<i>财</i>';
									}
									list += "<li class='($vo['type']}'>"
											+ t_name
											+ "<a href='/index.php?m=customer&a=view&id=309'>3123123</a></li>";
									var t_type = "business";
									var t_name = '';
									if (t_type == "leads") {
										t_name = '<i>线</i>';
									}
									if (t_type == "customer") {
										t_name = '<i>客</i>';
									}
									if (t_type == "business") {
										t_name = '<i>商</i>';
									}
									if (t_type == "contract") {
										t_name = '<i>合</i>';
									}
									if (t_type == "examine") {
										t_name = '<i>审</i>';
									}
									if (t_type == "finance") {
										t_name = '<i>财</i>';
									}
									list += "<li class='($vo['type']}'>"
											+ t_name
											+ "<a href='/index.php?m=business&a=view&id=318'>M_20171205-0318</a></li>";
									var t_type = "business";
									var t_name = '';
									if (t_type == "leads") {
										t_name = '<i>线</i>';
									}
									if (t_type == "customer") {
										t_name = '<i>客</i>';
									}
									if (t_type == "business") {
										t_name = '<i>商</i>';
									}
									if (t_type == "contract") {
										t_name = '<i>合</i>';
									}
									if (t_type == "examine") {
										t_name = '<i>审</i>';
									}
									if (t_type == "finance") {
										t_name = '<i>财</i>';
									}
									list += "<li class='($vo['type']}'>"
											+ t_name
											+ "<a href='/index.php?m=business&a=view&id=478'>波音787</a></li>";
									var t_type = "contract";
									var t_name = '';
									if (t_type == "leads") {
										t_name = '<i>线</i>';
									}
									if (t_type == "customer") {
										t_name = '<i>客</i>';
									}
									if (t_type == "business") {
										t_name = '<i>商</i>';
									}
									if (t_type == "contract") {
										t_name = '<i>合</i>';
									}
									if (t_type == "examine") {
										t_name = '<i>审</i>';
									}
									if (t_type == "finance") {
										t_name = '<i>财</i>';
									}
									list += "<li class='($vo['type']}'>"
											+ t_name
											+ "<a href='/index.php?m=contract&a=view&id=296'>福特试驾会</a></li>";
									var t_type = "customer";
									var t_name = '';
									if (t_type == "leads") {
										t_name = '<i>线</i>';
									}
									if (t_type == "customer") {
										t_name = '<i>客</i>';
									}
									if (t_type == "business") {
										t_name = '<i>商</i>';
									}
									if (t_type == "contract") {
										t_name = '<i>合</i>';
									}
									if (t_type == "examine") {
										t_name = '<i>审</i>';
									}
									if (t_type == "finance") {
										t_name = '<i>财</i>';
									}
									list += "<li class='($vo['type']}'>"
											+ t_name
											+ "<a href='/index.php?m=customer&a=view&id=738'>测试</a></li>";
									var t_type = "customer";
									var t_name = '';
									if (t_type == "leads") {
										t_name = '<i>线</i>';
									}
									if (t_type == "customer") {
										t_name = '<i>客</i>';
									}
									if (t_type == "business") {
										t_name = '<i>商</i>';
									}
									if (t_type == "contract") {
										t_name = '<i>合</i>';
									}
									if (t_type == "examine") {
										t_name = '<i>审</i>';
									}
									if (t_type == "finance") {
										t_name = '<i>财</i>';
									}
									list += "<li class='($vo['type']}'>"
											+ t_name
											+ "<a href='/index.php?m=customer&a=view&id=307'>阿萨德</a></li>";
									$(document.body)
											.prepend(
													"<div style='position:fixed;left:0;top:35%;z-index:1000;'><div id='recordBtn' style='display:none;position:absolute;left:0px;top:0px;width:27px; height:27px;cursor: pointer;background: url(Public/img/record.png) left top no-repeat;'></div><div class='recordBox' style='z-index: 1000;display:block; position:absolute;left:-222px;top:26px;width:220px;min-height:30px; max-height:550px; background:#fff; border:1px solid #ccc'><span class='recordClose' style='position:absolute;right:15px; top:10px; display:block;width:9px; height:9px;cursor: pointer;  background:url(Public/img/record.png) -3px -29px;z-index:998;'></span><span class='fixed'></span><div class='title'><i></i>最近访问</div><ul style='list-style:none'>"
															+ list
															+ "</ul></div></div>");

									// 设置样式

									$('.recordBox ul').css({
										'padding' : '10px 10px'
									});
									$('.recordBox ul li').css({
										'line-height' : '18px',
										'display' : 'block',
										'margin-bottom' : '8px'
									});
									$('.recordBox ul li i').css({
										'display' : 'inline-block',
										'float' : 'left',
										'width' : '18px',
										'height' : '18px',
										'text-align' : 'center',
										'border' : '1px solid #ccc',
										'border-radius' : '100%',
										'-webkit-border-radius' : '100%',
										'-moz-border-radius' : '100%',
										'-ms-border-radius' : '100%',
										'font-size' : '12px',
										'font-style' : 'normal',
										'line-height' : '18px',
										'margin-right' : '8px',
										'color' : '#585858',
										'background' : '#0088cc',
										'color' : '#ffffff'
									});
									$('.title').css({
										'position' : 'relative',
										'font-size' : '14px',
										'font-family' : '微软雅黑',
										'height' : '30px',
										'line-height' : '30px',
										'border-bottom' : '1px solid #ccc',
										'background' : '#e6e6e6',
										'text-indent' : '25px'
									});
									$('.title i')
											.css(
													{
														'position' : 'absolute',
														'display' : 'block',
														'width' : '15px',
														'height' : '15px',
														'background' : 'url(Public/img/record.png) left bottom no-repeat',
														'left' : '5px',
														'top' : '7px'
													});
									$('.fixed')
											.css(
													{
														'display' : 'block',
														'width' : '16px',
														'height' : '16px',
														'background' : 'url(Public/img/record.png) left -50px no-repeat',
														'position' : 'absolute',
														'right' : '8px',
														'top' : '6px',
														'cursor' : 'pointer',
														'z-index' : '999'
													});

									//隐藏展示
									$('#recordBtn').click(
											function(oEvent) {
												var oleft = $('.recordBox')
														.css('left');

												if (oleft == '-222px') {
													$('.recordBox').animate({
														left : '0px'
													}, 300);
												} else {
													$('.recordBox').animate({
														left : '-222px'
													}, 300);
													delCookie("yes");
													$('.fixed').show();
												}
												e = window.event || oEvent;
												if (e.stopPropagation) {
													e.stopPropagation();
												} else {
													e.cancelBubble = true;
												}
											});

									//关闭按钮

									$('.recordClose').click(function(oEvent) {
										delCookie("yes");
										$('.recordBox').animate({
											left : '-222px'
										}, 300);
										$('.fixed').show();
										e = window.event || oEvent;
										if (e.stopPropagation) {
											e.stopPropagation();
										} else {
											e.cancelBubble = true;
										}
									});
									$('.recordClose').mouseenter(
											function() {
												$(this).css(
														'background-position',
														'-3px -41px');
											});
									$('.recordClose').mouseleave(
											function() {
												$(this).css(
														'background-position',
														'-3px -29px');
											});

									// 阻止冒泡
									$('.recordBox').click(function(oEvent) {

										$('.recordBox').animate({
											left : '0px'
										}, 300);
										e = window.event || oEvent;
										if (e.stopPropagation) {
											e.stopPropagation();
										} else {
											e.cancelBubble = true;
										}
									});

									$(document).click(function() {

										var ofixed = getCookie('yes');
										if (ofixed == '1') {
											$('.recordBox').animate({
												left : '0px'
											}, 300);

										} else {
											$('.recordBox').animate({
												left : '-222px'
											}, 300);
											$('.fixed').show();
										}

									});

									$('.fixed').click(function() {

										SetCookie("yes", "1");

										$(this).hide();
									});
									var ofixed = getCookie('yes');
									if (ofixed == '1') {
										$('.recordBox').animate({
											left : '0px'
										}, 10);
										$('.fixed').hide();
									}

								});

				//写cookies函数  cookie设置
				function SetCookie(name, value)//两个参数，一个是cookie的名子，一个是值  
				{
					var Days = 30; //此 cookie 将被保存 30 天  
					var exp = new Date(); //new Date("December 31, 9998");  
					exp.setTime(exp.getTime() + Days * 24 * 60 * 60 * 1000);
					document.cookie = name + "=" + escape(value) + ";expires="
							+ exp.toGMTString();
				}
				function getCookie(name)//取cookies函数          
				{
					var arr = document.cookie.match(new RegExp("(^| )" + name
							+ "=([^;]*)(;|$)"));
					if (arr != null)
						return unescape(arr[2]);
					return null;

				}
				function delCookie(name)//删除cookie  
				{
					var exp = new Date();
					exp.setTime(exp.getTime() - 1);
					var cval = getCookie(name);
					if (cval != null)
						document.cookie = name + "=" + cval + ";expires="
								+ exp.toGMTString();
				}
			</script>
		</div>
	</div>
	<div
		class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-front ui-draggable ui-resizable"
		tabindex="-1" role="dialog" aria-describedby="dialog-role-info"
		aria-labelledby="ui-id-1" style="display: none; position: fixed;">
		<div
			class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix">
			<span id="ui-id-1" class="ui-dialog-title">员工信息</span>
			<button
				class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only ui-dialog-titlebar-close"
				role="button" aria-disabled="false" title="关闭">
				<span class="ui-button-icon-primary ui-icon ui-icon-closethick"></span><span
					class="ui-button-text">关闭</span>
			</button>
		</div>
		<div class="ui-dialog-content ui-widget-content" style=""
			id="dialog-role-info">
			<div class="spiner-example">
				<div class="sk-spinner sk-spinner-three-bounce">
					<div class="sk-bounce1"></div>
					<div class="sk-bounce2"></div>
					<div class="sk-bounce3"></div>
				</div>
			</div>
		</div>
		<div class="ui-resizable-handle ui-resizable-n" style="z-index: 90;"></div>
		<div class="ui-resizable-handle ui-resizable-e" style="z-index: 90;"></div>
		<div class="ui-resizable-handle ui-resizable-s" style="z-index: 90;"></div>
		<div class="ui-resizable-handle ui-resizable-w" style="z-index: 90;"></div>
		<div
			class="ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se"
			style="z-index: 90;"></div>
		<div class="ui-resizable-handle ui-resizable-sw" style="z-index: 90;"></div>
		<div class="ui-resizable-handle ui-resizable-ne" style="z-index: 90;"></div>
		<div class="ui-resizable-handle ui-resizable-nw" style="z-index: 90;"></div>
	</div>
	<div
		class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-front ui-dialog-buttons ui-draggable ui-resizable"
		tabindex="-1" role="dialog" aria-describedby="dialog-file"
		aria-labelledby="ui-id-2" style="display: none; position: fixed;">
		<div
			class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix">
			<span id="ui-id-2" class="ui-dialog-title">添加附件</span>
			<button
				class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only ui-dialog-titlebar-close"
				role="button" aria-disabled="false" title="关闭">
				<span class="ui-button-icon-primary ui-icon ui-icon-closethick"></span><span
					class="ui-button-text">关闭</span>
			</button>
		</div>
		<div class="ui-dialog-content ui-widget-content" style=""
			id="dialog-file">
			<div class="spiner-example">
				<div class="sk-spinner sk-spinner-three-bounce">
					<div class="sk-bounce1"></div>
					<div class="sk-bounce2"></div>
					<div class="sk-bounce3"></div>
				</div>
			</div>
		</div>
		<div class="ui-dialog-buttonpane ui-widget-content ui-helper-clearfix">
			<div class="ui-dialog-buttonset">
				<button type="button"
					class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only"
					role="button" aria-disabled="false">
					<span class="ui-button-text">确定</span>
				</button>
				<button type="button"
					class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only"
					role="button" aria-disabled="false">
					<span class="ui-button-text">取消</span>
				</button>
			</div>
		</div>
		<div class="ui-resizable-handle ui-resizable-n" style="z-index: 90;"></div>
		<div class="ui-resizable-handle ui-resizable-e" style="z-index: 90;"></div>
		<div class="ui-resizable-handle ui-resizable-s" style="z-index: 90;"></div>
		<div class="ui-resizable-handle ui-resizable-w" style="z-index: 90;"></div>
		<div
			class="ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se"
			style="z-index: 90;"></div>
		<div class="ui-resizable-handle ui-resizable-sw" style="z-index: 90;"></div>
		<div class="ui-resizable-handle ui-resizable-ne" style="z-index: 90;"></div>
		<div class="ui-resizable-handle ui-resizable-nw" style="z-index: 90;"></div>
	</div>
	<!-- nice-scroll -->
	<script src="js/jquery.nicescroll.min.js" type="text/javascript"></script>
	<style>
.left_chat-message {
	float: left;
	max-width: 90%;
	background: #EFF1F3 !important;
	color: #000 !important;
	margin-left: 34px;
	margin-top: -22px;
	border: 1px solid #CECECE;
	border-radius: 3px;
}

.right_chat-message {
	float: right;
	max-width: 90%;
	background: #EFF1F3 !important;
	color: #000 !important;
	margin-right: 50px;
	margin-top: -22px;
	border: 1px solid #CECECE;
	border-radius: 3px;
}

.feedback_content {
	font-size: 13px;
	padding: 5px 15px;
}

.feedback_content .left {
	text-align: left;
	clear: both;
}

.feedback_content .right {
	text-align: right;
	clear: both;
}

.feedback_content>div {
	padding-bottom: 20px;
}

.feedback_body {
	padding: 1px !important;
}
</style>
	<script>
		$(function() {
			var scroll_width = 5;
			$(".nicescroll").niceScroll({
				cursorcolor : "#ccc",//#CC0071 光标颜色 
				cursoropacitymax : 0.5, //改变不透明度非常光标处于活动状态（scrollabar“可见”状态），范围从1到0 
				touchbehavior : false, //使光标拖动滚动像在台式电脑触摸设备 
				cursorwidth : scroll_width + "px", //像素光标的宽度 
				cursorborder : "0", //     游标边框css定义 
				cursorborderradius : "5px",//以像素为光标边界半径 
				autohidemode : false, //是否隐藏滚动条 
				zindex : 100,
				background : "#F3F3F5",//滚动条背景色
			});
		});
	</script>
	<div class="small-chat-box fadeInRight animated" id="feedback_div"
		style="z-index: 1001; width: 385px; height: 500px; background-color: #f9f9f9; border-color: #ccc;">
		<div class="heading" draggable="true"
			style="background-color: #fff; border: 1px solid #d8e3ef; color: #6A7687;">
			<small class="chat-date pull-right"> 服务热线：400-6968-650 </small> 悟空小助手
		</div>
		<div id="feedback_body" class="nicescroll" tabindex="0"
			style="height: 355px; overflow: hidden; outline: none;">
			<div class="feedback_content" id="list_feedback"
				style="background-color: #fff;">
				<div class="left">
					<div class="author-name">
						<img alt="头像" style="height: 32px; width: 32px" class="img-circle"
							src="img/wukong.png"> <small class="chat-date"></small>
					</div>
					<div class="chat-message active left_chat-message">
						您好，请输入关键字获取帮助，如“密码”。</div>
				</div>
				<div style="clear: both; padding-bottom: 0px;" id="clearfeedback"></div>
			</div>
		</div>
		<div class="form-chat">
			<textarea class="form-control" cols="20" rows="2"
				style="width: 100%;" onkeyup="wordFunction();" id="feedback_content"
				placeholder="请输入您的问题"></textarea>
			<div class="input-group input-group-sm"
				style="padding-top: 5px; line-height: 25px;">
				<div class="pull-left">
					问题没有解决？ <a href="javascript:void(0);" class="feed_back">点击反馈</a>
				</div>
				<div class="pull-right" style="margin-right: 5px;">
					<a href="javascript:void(0);" id="app_download"
						style="color: #FF761B;">APP下载(Android/IOS)</a>
				</div>
				<span class="input-group-btn">
					<button class="btn btn-primary" id="feedback_submit" type="button">发送</button>
				</span>
			</div>
		</div>
		<div id="ascrail2000" class="nicescroll-rails nicescroll-rails-vr"
			style="width: 5px; z-index: 100; background: rgb(243, 243, 245); cursor: default; position: absolute; top: 0px; left: -5px; height: 355px; opacity: 0.5; display: none;">
			<div class="nicescroll-cursors"
				style="position: relative; top: 0px; float: right; width: 5px; height: 0px; background-color: rgb(204, 204, 204); border: 0px; background-clip: padding-box; border-radius: 5px;"></div>
		</div>
		<div id="ascrail2000-hr" class="nicescroll-rails nicescroll-rails-hr"
			style="height: 5px; z-index: 100; background: rgb(243, 243, 245); top: 350px; left: 0px; position: absolute; opacity: 0.5; cursor: default; display: none;">
			<div class="nicescroll-cursors"
				style="position: absolute; top: 0px; height: 5px; width: 0px; background-color: rgb(204, 204, 204); border: 0px; background-clip: padding-box; border-radius: 5px;"></div>
		</div>
	</div>
	<div id="down_url"
		style="display: none; width: 120px; height: 120px; background-color: #000; z-index: 1009; position: fixed; bottom: 65px; right: 160px; text-align: center;">
		<img src="img/download.jpg" style="width: 120px; height: 120px;">
	</div>
	<div id="small-chat" style="z-index: 1001;">
		<span class="badge badge-warning pull-right"></span> <a
			class="open-small-chat" title="悟空小助手"> <i class="fa fa-comments"></i>
		</a>
	</div>

	<script>
		$("#app_download").hover(function() {
			$('#down_url').animate({
				opacity : "show"
			}, "slow");
		}, function() {
			$('#down_url').animate({
				opacity : "hide"
			}, "fast");
		});
		$('#feedback_div')
				.on(
						'click',
						'.feed_back',
						function() {
							var version = "2.3.6";
							var full_name = "邹总";
							var telephone = "";
							var server_name = "demo2.5kcrm.net:80/";
							var frameSrc = "http://help.crm.cc/index.php?m=feedBack&a=add"
									+ '&version='
									+ version
									+ '&full_name='
									+ full_name
									+ '&telephone='
									+ telephone
									+ '&server_name=' + server_name;
							$("#NoPermissioniframe").attr("src", frameSrc);
							$('#NoPermissionModal').modal({
								show : true,
								backdrop : 'static'
							});
						});

		$('#feedback_div').keydown(function(event) {
			if (event.keyCode == "13") {
				$('#feedback_submit').click();
			}
		});

		function feedback_ajax(question) {
			var url = "http://help.crm.cc/index.php?m=feedBack&a=ajaxdata&question="
					+ question;
			var img = "./Uploads/head/thumb_5aa5ec505c63c2291.png";
			$
					.ajax({
						type : 'get',
						url : url,
						async : true,
						dataType : 'jsonp',
						jsonp : "callback",//服务端用于接收callback调用的function名的参数
						success : function(data) {
							temp = '';
							if (data.status == 1) {
								temp += '<div class="right">\
                                <div class="author-name">';
								if (img) {
									temp += '<img alt="头像" style="height:38px;width:38px" class="img-circle" src="'+img+'" />';
								} else {
									temp += '<img alt="头像" style="height:38px;width:38px" class="img-circle" src="/Public/img/avatar_default.png" />';
								}
								temp += '<small class="chat-date"></small>\
                        </div>\
                            <div class="chat-message right_chat-message">'
										+ question
										+ '</div>\
                        </div>';
								$
										.each(
												data.data,
												function(k, v) {
													temp += '<div class="left">\
                                    <div class="author-name">\
                                        <img alt="头像" style="height:32px;width:32px" class="img-circle" src="/Public/img/wukong.png">\
                                        <small class="chat-date"></small>\
                                    </div>\
                                    <div class="chat-message active left_chat-message"><a style="color:#fff;" target="_blank" href="http://help.crm.cc/index.php?m=help&a=view&help_id='
															+ v['help_id']
															+ '&help_menu_id='
															+ v['help_menu_id']
															+ '">'
															+ v['name']
															+ '</a></div>\
                                </div>';
												});
								$('#feedback_content').val('');
								$('#clearfeedback').before(temp);
								var html_h = parseInt($('#list_feedback')
										.height() + 200);
								$("#feedback_body").animate({
									"scrollTop" : html_h
								}, 1000);
							} else {
								temp = '';
								temp += '<div class="right">\
                                <div class="author-name">';
								if (img) {
									temp += '<img alt="头像" style="height:38px;width:38px" class="img-circle" src="'+img+'" />';
								} else {
									temp += '<img alt="头像" style="height:38px;width:38px" class="img-circle" src="/Public/img/avatar_default.png" />';
								}
								temp += '<small class="chat-date"></small>\
                        </div>\
                            <div class="chat-message right_chat-message">'
										+ question
										+ '</div>\
                        </div>';
								temp += '<div class="left">\
                        <div class="author-name">\
                            <img alt="头像" style="height:32px;width:32px" class="img-circle" src="/Public/img/wukong.png">\
                            <small class="chat-date"></small>\
                        </div>\
                        <div class="chat-message active left_chat-message">'
										+ data['data'][0]['name']
										+ '</div>\
                    </div>';
								$('#feedback_content').val('');
								$('#clearfeedback').before(temp);
								var html_h = parseInt($('#list_feedback')
										.height() + 180);
								$("#feedback_body").animate({
									"scrollTop" : html_h
								}, 1000);
							}
						},
						error : function() {
							temp = '';
							temp += '<div class="right">\
                                <div class="author-name">';
							if (img) {
								temp += '<img alt="头像" style="height:38px;width:38px" class="img-circle" src="'+img+'" />';
							} else {
								temp += '<img alt="头像" style="height:38px;width:38px" class="img-circle" src="/Public/img/avatar_default.png" />';
							}
							temp += '<small class="chat-date"></small>\
                    </div>\
                        <div class="chat-message right_chat-message">'
									+ question
									+ '</div>\
                    </div>';
							temp += '<div class="left">\
                    <div class="author-name">\
                        <img alt="头像" style="height:32px;width:32px" class="img-circle" src="/Public/img/wukong.png">\
                        <small class="chat-date"></small>\
                    </div>\
                    <div class="chat-message active left_chat-message">您这个问题太难了，我还没学会，可以点击<button style="color:#1ab394;padding:5px 10px;" class="feed_back btn btn-white btn-sm">反馈</button>按钮，提交详细描述给官方！</br><span style="color:#000;line-height:30px;"">常见问题请点击链接：</span></br><a style="color:#3AA8F5;line-height:25px;" target="_blank" href="http://help.crm.cc">http://help.crm.cc</a></br><span style="color:#000;line-height:30px;"">帮助文档地址：</span></br><a style="color:#3AA8F5;line-height:25px;" target="_blank" href="http://cdn.crm.cc/wukong2_help.pdf">悟空CRM2.0帮助文档</a></div>\
                </div>';
							$('#feedback_content').val('');
							$('#clearfeedback').before(temp);
							var html_h = parseInt($('#list_feedback').height() + 180);
							$("#feedback_body").animate({
								"scrollTop" : html_h
							}, 1000);
						}
					});
		}

		$('#feedback_submit').click(function() {
			var feedback_content = $.trim($('#feedback_content').val());
			if (!feedback_content) {
				swal({
					title : "温馨提示",
					text : "不能发送空白消息！",
					type : "warning"
				})
				$('#feedback_content').val('');
				return false;
			}
			feedback_ajax(feedback_content);
		});

		// 字数限制
		function wordFunction() {
			var feedbackLength = $("#feedback_content").val().length;
			if (feedbackLength >= 100) {
				alert_crm('您输入的内容过长！');
			}
		}
	</script>
	<script src="${pageContext.request.contextPath}/statics/js/index.js"></script>
	<script src="${pageContext.request.contextPath}/statics/js/notification.js"></script>
	<!-- layer -->
	<script src="${pageContext.request.contextPath}/statics/js/layer.js"></script>
	<script src="${pageContext.request.contextPath}/statics/js/call.js"></script>
	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							/*复选框选择效果*/
							if ($('.check_all').size() > 0) {
								var icheck_num = 0;
								var all_check_num = 0;
								/*选择所有and取消所有*/
								$(".check_all")
										.change(
												function() {
													$(
															"input[class='check_list']")
															.prop(
																	'checked',
																	$(this)
																			.prop(
																					"checked"));//选中
													// if($(".check_all").prop("checked")){
													if ($(this).is(":checked")) { //jQuery方式判断
														$(".single_btn")
																.hide()
																.children()
																.each(
																		function() {
																			$(
																					this)
																					.attr(
																							'rel',
																							'');
																		})
														$('#title-hide').show();
														$('#title-show').hide();
														all_check_num = $("input[class='check_list']:checked").length;
													} else {
														$('#title-hide').hide();
														$('#title-show').show();
														all_check_num = 0;
													}

													if (document
															.getElementById("oDivL_tab_Test3")) {
														if ($(
																".check_all:checked")
																.size() > 0
																&& icheck_num % 2 == 0) {
															icheck_num = all_check_num / 2;
															$("#icheck_num")
																	.text(
																			all_check_num / 2);
														} else {
															icheck_num = all_check_num;
															$("#icheck_num")
																	.text(
																			all_check_num);
														}
													} else {
														icheck_num = all_check_num;
														// all_check_num = $("input[class='check_list']:checked").length;
														// icheck_num = all_check_num;
														$("#icheck_num").text(
																icheck_num);
													}
												});
								/*让隐藏标签显示*/
								$('.check_list')
										.click(
												function() {
													if ($(this).prop("checked")) {
														icheck_num++;
													} else {
														icheck_num--;
													}
													$("#icheck_num").text(
															icheck_num);
													//处理单选时才有的操作
													if (icheck_num == 1) {
														$(".single_btn")
																.show()
																.children()
																.each(
																		function() {
																			$(
																					this)
																					.attr(
																							'rel',
																							$(
																									"input.check_list:checked")
																									.val());
																			$(
																					'#log_customer')
																					.attr(
																							'rel1',
																							$(
																									"input.check_list:checked")
																									.attr(
																											'rel'));

																			$(
																					'#log_business')
																					.attr(
																							'rel',
																							$(
																									"input.check_list:checked")
																									.attr(
																											'rel'));
																			$(
																					'.business_btn')
																					.children()
																					.attr(
																							'rel1',
																							$(
																									"input.check_list:checked")
																									.attr(
																											'rel'));

																			$(
																					'#examine_type')
																					.val(
																							$(
																									"input.check_list:checked")
																									.attr(
																											'rel'));
																			if ($(
																					"input.check_list:checked")
																					.attr(
																							'rel1') == 1) {
																				$(
																						'#to_top_span')
																						.html(
																								'&nbsp;取消置顶');
																				$(
																						'#to_check')
																						.html(
																								'<input type="hidden" id="is_checked" value="2">&nbsp;撤销');
																				$(
																						'#user_span')
																						.html(
																								'<a id="delete" href="javascript:void(0)" onclick="del_user(2)"><i class="fa fa-check"></i>&nbsp;启用账号</a>');
																			} else {
																				$(
																						'#to_top_span')
																						.html(
																								'&nbsp;置顶');
																				var rel_name = $(
																						"input.check_list:checked")
																						.attr(
																								'rel3');
																				$(
																						'#to_check')
																						.html(
																								'<input type="hidden" id="is_checked" rel="'+rel_name+'" value="1">&nbsp;审核');
																			}
																		})
													} else {
														$(".single_btn")
																.hide()
																.children()
																.each(
																		function() {
																			$(
																					this)
																					.attr(
																							'rel',
																							'');
																		})
													}
													if (icheck_num <= 0) {
														$('#title-hide').hide();
														$('#title-show').show();
													} else {
														$('#title-hide').show();
														$('#title-show').hide();
													}
												});
								/*点插 取消所有选中*/
								$('#back-show').click(
										function() {
											icheck_num = 0;
											$("#icheck_num").text(icheck_num);
											$('#title-hide').hide();
											$('#title-show').show();
											$(".check_list,.check_all").attr(
													"checked", false);
										});
							}
						});
	</script>

	<div class="modal inmodal" id="Profile" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content animated bounceInRight"></div>
		</div>
	</div>
	<div class="modal inmodal fade" id="Modal_login" tabindex="-1"
		style="overflow: auto; border: 1px solid #000000;" role="dialog">
		<div class="modal-dialog modal-md" style="width: 700px;">
			<div class="modal-content" id="login_modal"></div>
		</div>
	</div>
	<div class="modal inmodal fade" id="Modal_anthorize" aria-hidden="true"
		role="dialog" tabindex="-1">
		<div class="modal-dialog" style="width: 500px;">

			<div class="modal-content">
				<div class="modal-header" style="border: none;">
					<b style="font-size: 16px;">版本及授权信息</b>
					<button type="button" class="close"
						style="font-size: 34px; font-weight: 400; color: #fff;"
						data-dismiss="modal">
						<span aria-hidden="true">×</span><span class="sr-only">Close</span>
					</button>
				</div>
				<div class="modal-body col-sm-12">
					<div class="form-horizontal m-t">
						<div class="form-group ">
							<label class="control-label col-sm-3" style="padding-top: 0px;">版本信息</label>
							<div class="col-sm-6">CRM2.0 - beta2.3.6</div>
							<div class="col-sm-3 pull-left">
								<a target="_blank" href="http://www.crm.cc/update/">查看更新日志</a>
							</div>
						</div>
						<div class="form-group ">
							<label class="control-label col-sm-3"></label>
							<div class="col-sm-9">发布日期：2018年1月27日</div>
						</div>
						<div class="form-group ">
							<label class="control-label col-sm-3" style="padding-top: 0px;">授权信息</label>
							<div class="col-sm-6">授权人数：100人</div>
							<div class="col-sm-3 pull-left">
								<a target="_blank"
									href="http://help.crm.cc/index.php?m=help&amp;a=view&amp;help_id=128&amp;help_menu_id=3"
									title="点击查看如何增加授权人数">增加授权人数</a>
							</div>
						</div>
						<div class="form-group ">
							<label class="control-label col-sm-3"></label>
							<div class="col-sm-6">到期时间：2028年03月05日</div>
							<div class="col-sm-3 pull-left"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="NoPermissionModal">
		<div class="modal-dialog" style="width: 800px; height: 545px;">
			<div class="modal-content" style="height: 100%;">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 class="modal-title" id="NoPermissionModalLabel">用户反馈</h4>
				</div>
				<div class="modal-body feedback_body" style="height: 440px;">
					<iframe id="NoPermissioniframe" width="100%" height="100%"
						frameborder="0" src="img/saved_resource.html"></iframe>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关
						闭</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>