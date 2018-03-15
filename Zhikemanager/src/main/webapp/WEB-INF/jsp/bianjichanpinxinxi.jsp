<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>aa</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="author" content="æç©ºCRM">
<!-- 360æµè§å¨é»è®¤ä½¿ç¨Webkitåæ ¸ -->
<meta name="renderer" content="webkit">
<link rel="shortcut icon"
	href="http://demo2.5kcrm.net/Public/ico/favicon.png">
<script src="js/jquery-2.1.1.js"></script>
<link type="text/css" href="css/jquery-ui-1.10.0.custom.css"
	rel="stylesheet">
<link type="text/css" href="css/bootstrap-responsive.min.css"
	rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/font-awesome.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link type="text/css" href="css/hovershow.css" rel="stylesheet">
<!-- animate -->
<link rel="stylesheet" href="css/animate.min.css">
<link rel="stylesheet" href="css/notification.css">
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

/*éªçææ*/
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
<link href="css/toastr.min.css" rel="stylesheet">
<!-- Sweet Alert -->
<link href="css/sweetalert.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/awesome-bootstrap-checkbox.css" rel="stylesheet">
<!-- Mainly scripts -->
<script src="js/bootstrap.min.js"></script>
<script src="js/moment.min.js"></script>
<script src="js/jquery.form.js" type="text/javascript"></script>
<!-- <script src="/Public/style/js/plugins/metisMenu/jquery.metisMenu.js"></script> -->
<script src="js/jquery.slimscroll.min.js"></script>
<!-- Toastr -->
<script src="js/toastr.min.js"></script>
<!-- Custom and plugin javascript -->
<script src="js/pace.min.js"></script>
<script src="js/inspinia.js"></script>
<script src="js/5kcrm_zh-cn.js" type="text/javascript"></script>
<script src="js/5kcrm.js" type="text/javascript"></script>
<!-- jQuery UI -->
<script src="js/jquery-ui-1.10.0.custom.min.js" type="text/javascript"></script>
<script src="js/WdatePicker.js" type="text/javascript"></script>
<link href="css/WdatePicker.css" rel="stylesheet" type="text/css">
<!-- Sweet alert -->
<script src="js/sweetalert.min.js"></script>
<!-- Jquery Validate -->
<script src="js/jquery.validate.min.js"></script>
<script src="js/messages_zh.min.js"></script>
<script src="js/bootstrap-tooltip.js"></script>
<!-- ä¸æç­é -->
<link rel="stylesheet" href="css/bootstrap-select.css">
<script type="text/javascript" src="js/bootstrap-select.js"
	charset="UTF-8"></script>
<!-- select2 -->
<link href="css/select2.min.css" rel="stylesheet">
<script src="js/select2.full.min.js"></script>
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
			placeholder : "--è¯·éæ©--"
		// allowClear: true
		});
	});
</script>
<link rel="stylesheet" href="css/layer.css" id="layuicss-layer">
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
				style="position: relative; font-size: 14px; font-family: å¾®è½¯éé»; height: 30px; line-height: 30px; border-bottom: 1px solid rgb(204, 204, 204); background: rgb(230, 230, 230); text-indent: 25px;">
				<i
					style="position: absolute; display: block; width: 15px; height: 15px; background: url(&quot;Public/img/record.png&quot;) left bottom no-repeat; left: 5px; top: 7px;"></i>æè¿è®¿é®
			</div>
			<ul style="list-style: none; padding: 10px;">
				<li class="($vo[" type']}'=""
					style="line-height: 18px; display: block; margin-bottom: 8px;"><i
					style="display: inline-block; float: left; width: 18px; height: 18px; text-align: center; border: 1px solid rgb(204, 204, 204); border-radius: 100%; font-size: 12px; font-style: normal; line-height: 18px; margin-right: 8px; color: rgb(255, 255, 255); background: rgb(0, 136, 204);">è´¢</i><a
					href="http://demo2.5kcrm.net/index.php?m=finance&amp;a=view&amp;id=334">M_20180312-0334</a></li>
				<li class="($vo[" type']}'=""
					style="line-height: 18px; display: block; margin-bottom: 8px;"><i
					style="display: inline-block; float: left; width: 18px; height: 18px; text-align: center; border: 1px solid rgb(204, 204, 204); border-radius: 100%; font-size: 12px; font-style: normal; line-height: 18px; margin-right: 8px; color: rgb(255, 255, 255); background: rgb(0, 136, 204);">å®¢</i><a
					href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=320">æ­¦å¸æ¶ä»£</a></li>
				<li class="($vo[" type']}'=""
					style="line-height: 18px; display: block; margin-bottom: 8px;"><i
					style="display: inline-block; float: left; width: 18px; height: 18px; text-align: center; border: 1px solid rgb(204, 204, 204); border-radius: 100%; font-size: 12px; font-style: normal; line-height: 18px; margin-right: 8px; color: rgb(255, 255, 255); background: rgb(0, 136, 204);">å®¢</i><a
					href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=309">3123123</a></li>
				<li class="($vo[" type']}'=""
					style="line-height: 18px; display: block; margin-bottom: 8px;"><i
					style="display: inline-block; float: left; width: 18px; height: 18px; text-align: center; border: 1px solid rgb(204, 204, 204); border-radius: 100%; font-size: 12px; font-style: normal; line-height: 18px; margin-right: 8px; color: rgb(255, 255, 255); background: rgb(0, 136, 204);">å</i><a
					href="http://demo2.5kcrm.net/index.php?m=business&amp;a=view&amp;id=318">M_20171205-0318</a></li>
				<li class="($vo[" type']}'=""
					style="line-height: 18px; display: block; margin-bottom: 8px;"><i
					style="display: inline-block; float: left; width: 18px; height: 18px; text-align: center; border: 1px solid rgb(204, 204, 204); border-radius: 100%; font-size: 12px; font-style: normal; line-height: 18px; margin-right: 8px; color: rgb(255, 255, 255); background: rgb(0, 136, 204);">å</i><a
					href="http://demo2.5kcrm.net/index.php?m=business&amp;a=view&amp;id=478">æ³¢é³787</a></li>
				<li class="($vo[" type']}'=""
					style="line-height: 18px; display: block; margin-bottom: 8px;"><i
					style="display: inline-block; float: left; width: 18px; height: 18px; text-align: center; border: 1px solid rgb(204, 204, 204); border-radius: 100%; font-size: 12px; font-style: normal; line-height: 18px; margin-right: 8px; color: rgb(255, 255, 255); background: rgb(0, 136, 204);">å</i><a
					href="http://demo2.5kcrm.net/index.php?m=contract&amp;a=view&amp;id=296">ç¦ç¹è¯é©¾ä¼</a></li>
				<li class="($vo[" type']}'=""
					style="line-height: 18px; display: block; margin-bottom: 8px;"><i
					style="display: inline-block; float: left; width: 18px; height: 18px; text-align: center; border: 1px solid rgb(204, 204, 204); border-radius: 100%; font-size: 12px; font-style: normal; line-height: 18px; margin-right: 8px; color: rgb(255, 255, 255); background: rgb(0, 136, 204);">å®¢</i><a
					href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=738">æµè¯</a></li>
				<li class="($vo[" type']}'=""
					style="line-height: 18px; display: block; margin-bottom: 8px;"><i
					style="display: inline-block; float: left; width: 18px; height: 18px; text-align: center; border: 1px solid rgb(204, 204, 204); border-radius: 100%; font-size: 12px; font-style: normal; line-height: 18px; margin-right: 8px; color: rgb(255, 255, 255); background: rgb(0, 136, 204);">å®¢</i><a
					href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=307">é¿è¨å¾·</a></li>
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
								style="width: 38px; height: 38px; margin-right: 0px;"
								alt="æç©ºCRM">
						</div></li>
					<li><a data-toggle="tooltip" data-placement="right"
						data-original-title="é¦é¡µ" href=""><i class="fa fa-home"></i></a>
					</li>

					<li><a data-toggle="tooltip" data-placement="right"
						data-original-title="å®¢æ·ç®¡ç" href="kehuguanli.htm"><i
							class="fa fa-user"></i></a></li>
					<li><a data-toggle="tooltip" data-placement="right"
						data-original-title="åæºç®¡ç" href="shangjiguanli.htm"><i
							class="fa fa-suitcase"></i></a></li>
					<li><a data-toggle="tooltip" data-placement="right"
						data-original-title="äº§åç®¡ç" class="active"
						href="chanpinguanli.htm"><i class="fa fa-inbox"></i></a></li>
					<li><a data-toggle="tooltip" data-placement="right"
						data-original-title="ååè®¢å" href="hetong.htm"><i
							class="fa fa-file-text"></i></a></li>
					<!--<li>
							<a data-toggle="tooltip" data-placement="right" data-original-title="è´¢å¡ç®¡ç" href=""><i class="fa fa-credit-card"></i></a>
						</li>
						<li>
							<a data-toggle="tooltip" data-placement="right" data-original-title="æ°æ®åæ" href=""><i class="fa fa-area-chart"></i></a>
						</li>
						<li>
							<a data-toggle="tooltip" data-placement="right" data-original-title="åå¬" href=""><i class="fa fa-desktop"></i></a>
						</li>-->
					<li><a data-toggle="tooltip" data-placement="right"
						data-original-title="éè®¯å½" href="renyuanguanli.htm"><i
							class="fa fa-phone-square"></i></a></li>
					<!--<li>
							<a data-toggle="tooltip" data-placement="right" data-original-title="è¥é" href=""><i class="fa fa-envelope"></i></a>
						</li>
						<li>
							<a data-toggle="tooltip" data-placement="right" data-original-title="ç³»ç»è®¾ç½®" href=""><i class="fa fa-cog"></i></a>
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
								class="fa fa-inbox" style="display: inline"></span>&nbsp;&nbsp;äº§å</a></li>
					</ul>
					<ul class="nav navbar-top-links navbar-right"
						style="margin-right: 0px;">
						<li class="dropdown" style=""><a
							class="dropdown-toggle count-info" id="todo_url"
							data-toggle="dropdown"
							href="http://demo2.5kcrm.net/index.php?m=product&amp;a=edit&amp;id=92#"
							title="å¾åäºé¡¹"> <img src="img/remain.png" alt="">
							<div class="label label-info" style="background-color: #FA7252;"
									id="todo_num">227</div>
						</a>
							<ul class="dropdown-menu dropdown-alerts folder-list m-b-md"
								style="width: 250px;">
								<li style="border-bottom: 1px dashed #e7eaec !important;"><a
									href="http://demo2.5kcrm.net/index.php?m=contract&amp;a=index&amp;contract_checked=1&amp;by=all"><i
										class="fa fa-list-alt"></i>&nbsp;&nbsp;å¾å®¡æ ¸çåå<span
										class="label label-info pull-right"
										style="background-color: #FA7252;"
										id="header_check_contract_num">66</span></a></li>
								<li style="border-bottom: 1px dashed #e7eaec !important;"><a
									href="http://demo2.5kcrm.net/index.php?m=finance&amp;a=index&amp;t=receivingorder&amp;status[value]=0&amp;by=all"><i
										class="fa fa-money"></i>&nbsp;&nbsp;å¾å®¡æ ¸çåæ¬¾<span
										class="label label-info pull-right"
										style="background-color: #FA7252;" id="header_receivables_num">50</span></a></li>
								<li style="border-bottom: 1px dashed #e7eaec !important;"><a
									href="http://demo2.5kcrm.net/index.php?m=examine&amp;a=index&amp;by=me_examine&amp;examining=1"><i
										class="fa fa-check-square-o"></i>&nbsp;&nbsp;å¾å¤ççå®¡æ¹æµ<span
										class="label label-info pull-right"
										style="background-color: #FA7252;" id="header_examine_num">2</span></a></li>
								<li style="border-bottom: 1px dashed #e7eaec !important;"><a
									href="http://demo2.5kcrm.net/index.php?m=contract&amp;a=index&amp;by=dqcontact"><i
										class="fa fa-user"></i>&nbsp;&nbsp;ååå°ææé<span
										class="label label-info pull-right"
										style="background-color: #FA7252;" id="header_dqcontact_num">41</span></a></li>

								<li style="border-bottom: 1px dashed #e7eaec !important;"><a
									href="http://demo2.5kcrm.net/index.php?m=finance&amp;a=index&amp;t=receivables&amp;r_status=1&amp;by=me"><i
										class="fa fa-money"></i>&nbsp;&nbsp;åºæ¶æ¬¾æé<span
										class="label label-info pull-right"
										style="background-color: #FA7252;" id="receivables_num">68</span></a></li>
								<li style="border-bottom: 1px dashed #e7eaec !important;"><a
									href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=index&amp;by=todaycontact"><i
										class="fa fa-user"></i>&nbsp;&nbsp;ä»æ¥éè·è¿å®¢æ·<span
										class="label label-info pull-right"
										style="background-color: #FA7252;"
										id="header_follow_customer_num"></span></a></li>
							</ul></li>
						<li class="dropdown" style=""><a
							class="dropdown-toggle count-info" id="event_url"
							data-toggle="dropdown"
							href="http://demo2.5kcrm.net/index.php?m=product&amp;a=edit&amp;id=92#"
							title="ä»æ¥æ¥ç¨"> <img src="img/event.png" alt=""><span
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
											<a
												href="http://demo2.5kcrm.net/index.php?m=event&amp;a=index"
												title="ç¹å»æ¥ç"
												style="padding: 5px !important; border-bottom: 1px dashed #ddd; float: left; margin-bottom: 5px; width: 100%;">
												<div style="overflow: hidden; padding: 0 10px;">
													<span class="pull-left"
														style="color: #46be8a; line-height: 26px;"><i
														class="fa fa-circle"></i>&nbsp;&nbsp;ã æé
														ãæ³¢é³787</span><br> <small class="text-muted pull-right"
														style="margin-top: 5px;">2018å¹´03æ14 15:00</small>
												</div>
											</a><a
												href="http://demo2.5kcrm.net/index.php?m=event&amp;a=index"
												title="ç¹å»æ¥ç"
												style="padding: 5px !important; border-bottom: 1px dashed #ddd; float: left; margin-bottom: 5px; width: 100%;">
												<div style="overflow: hidden; padding: 0 10px;">
													<span class="pull-left"
														style="color: #57c7d4; line-height: 26px;"><i
														class="fa fa-circle"></i>&nbsp;&nbsp;éè¯</span><br> <small
														class="text-muted pull-right" style="margin-top: 5px;">2018å¹´03æ14
														17:32 ~ 2018å¹´03æ14 23:59</small>
												</div>
											</a><a
												href="http://demo2.5kcrm.net/index.php?m=event&amp;a=index"
												title="ç¹å»æ¥ç"
												style="padding: 5px !important; border-bottom: 1px dashed #ddd; float: left; margin-bottom: 5px; width: 100%;">
												<div style="overflow: hidden; padding: 0 10px;">
													<span class="pull-left"
														style="color: #62a8ea; line-height: 26px;"><i
														class="fa fa-circle"></i>&nbsp;&nbsp;äºè§£ä¸ä¸</span><br>
													<small class="text-muted pull-right"
														style="margin-top: 5px;">2018å¹´03æ14 23:19 ~
														2018å¹´03æ14 23:59</small>
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
											<strong>æ¥çå¨é¨æ¥ç¨</strong> <i
											class="fa fa-angle-right"></i>
										</a>
									</div>
								</li>
								<li class="divider" style="height: 0px;"></li>
							</ul></li>
						<li class="dropdown"><a class="dropdown-toggle count-info"
							id="message_url" data-toggle="dropdown"
							href="http://demo2.5kcrm.net/index.php?m=product&amp;a=edit&amp;id=92#"
							title="ç«åä¿¡"> <img src="img/bell.png" alt=""><span
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
											<strong>ç«åä¿¡åè¡¨</strong> <i class="fa fa-angle-right"></i>
										</a>
									</div>
								</li>
								<li class="divider" style="height: 0px;"></li>
							</ul></li>
						<li style="padding-left: 30px;"><a
							href="http://demo2.5kcrm.net/index.php?m=product&amp;a=edit&amp;id=92#"
							class="dropdown-toggle" data-toggle="dropdown"
							style="padding: 2px;"> <img alt="å¤´å"
								style="height: 38px; width: 38px" class="img-circle"
								src="img/thumb_5aa5ec505c63c2291.png">
						</a>
							<ul class="dropdown-menu">
								<li><a
									href="http://demo2.5kcrm.net/index.php?m=user&amp;a=edit">ä¸ªäººèµæ</a></li>
								<li><a
									href="http://demo2.5kcrm.net/index.php?m=setting&amp;a=lockscreen">ä¸é®éå±</a></li>
								<li class="divider"></li>
								<li><a href="javascript:void(0);" id="authorize">çæ¬åææä¿¡æ¯</a></li>
								<li><a class="logout" href="javascript:void(0);">éåº</a></li>
							</ul></li>
					</ul>
				</nav>
			</div>

			<!-- æ¨¡ææ¡ -->



			<script type="text/javascript">
				$(document).on('click', '#authorize', function() {
					$('#Modal_anthorize').modal('show');
				});

				$('[data-toggle="tooltip"]').tooltip({
					html : true
				});
				/*æ¶é´æä»¶*/
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
					/*ç«åä¿¡*/
					message_tips();
					login_tips();
					$("#header_send_message").click(
							function() {
								$('#dialog-message-send').dialog('open');
								$('#dialog-message-send').load(
										'/index.php?m=message&a=send');
							});
					/*è®©å¤éæ¡é»è®¤åæ¶éæ©*/
					//$(':checkbox').prop('checked', false);
					/*è®°å½èåéèç¶æ*/
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

				/*éåºæç¤º*/
				$('.logout').click(function() {
					swal({
						title : "ç¡®å®éåºç»å½?",
						type : "warning",
						showCancelButton : true,
						confirmButtonColor : "#DD6B55",
						confirmButtonText : "ç¡®å®",
						cancelButtonText : "åæ¶",
						closeOnConfirm : false
					}, function(isConfirm) {
						if (isConfirm) {
							window.location = "/index.php?m=user&a=logout";
						}
					});
				});

				/*æäº¤å¤±è´¥è¿ååä¸é¡µ*/
				var href = "";
				if (href != '' && href != null) {
					swal({
						title : "æ·»å å¤±è´¥!",
						type : "error",
						confirmButtonColor : "#DD6B55",
						confirmButtonText : "è¿å",
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

				/*è½®è¯¢*/
				var mark_count = 1;//æ è®°ç¬¬ä¸æ¬¡å¼¹åº
				/*åå§é»è®¤å¼*/

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
										//å¡çæéæ¾ç¤ºä¸éè
										var message_html = '';
										var new_num = data.data['message']
												+ ','
												+ data.data['contract_count'];

										//å¾åäºé¡¹
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

										//å¯¼èªæéå®æ¶åå¥æ°å¼
										if (data.data['message'] != 0
												&& data.data['message'] != '') {
											$('#message_group').show();
											//æ¡é¢æé
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
		                        <img src="img/wukong.png" title="æç©ºå°å©æ"> æ¨æ<strong>'
														+ data.data['message_num']
														+ '</strong>æ¡æ¶æ¯å¾æ¥ç\
		                        <span class="pull-right text-muted small" style="line-height:30px;">'
														+ data.data['message_time']
														+ 'å</span>\
		                    </div>\
		                </a>';
											}

											if (data.data['message_announcement_count'] != 0
													&& data.data['message_announcement_count'] != '') {
												message_html += '<a href="/index.php?m=message&a=index&by=announcement" style="width:100%;color:#676a6c;padding:5px !important;border-bottom:1px dashed #ddd;float:left;margin-bottom:5px;">\
		                    <div style="padding:0 10px;">\
		                        <img src="img/announcement.png" title="ç³»ç»å¬å"> æ¨æ<strong>'
														+ data.data['message_announcement_count']
														+ '</strong>æ¡å¬åä¿¡æ¯å¾æ¥ç\
		                        <span class="pull-right text-muted small" style="line-height:30px;">'
														+ data.data['announcement_time']
														+ 'å</span>\
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
																			+ '" title="ç¹å»åå¤" style="width:100%;color:#676a6c;padding:5px !important;border-bottom:1px dashed #ddd;float:left;margin-bottom:5px;" >\
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
										//æ¥ç¨æé
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
																event_temp += '<a href="/index.php?m=event&a=index" title="ç¹å»æ¥ç" style="padding:5px !important;border-bottom:1px dashed #ddd;float:left;margin-bottom:5px;width:100%;">\
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

				/*head ç¹æ*/
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
						//5ç§åèªå¨å³é­ 
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
			<script type="text/javascript" src="js/PCASClass.js"></script>
			<link rel="stylesheet" href="css/jquery.fileupload.css"
				type="text/css">
			<style type="text/css">
.add_body>div>.full-height-scroll {
	border-right: 1px dotted #ccc
}

.add_body_title {
	margin: 15px auto 30px auto;
}

.add_body_form>form>.form-group {
	margin-bottom: 25px;
}

body {
	overflow-y: hidden;
}

.form-control {
	float: left;
}

#main_pic_prev {
	width: 120px;
	height: 120px;
	border: 1px dashed #d3d3d6;
}
</style>
			<script>
				$(
						function() {
							$(".add_body").height(
									window.innerHeight
											- $("#add_body").offset().top
											- $("#tfoot_div").height() - 40);
							$(window)
									.resize(
											function() {
												$(".add_body")
														.height(
																window.innerHeight
																		- $(
																				"#add_body")
																				.offset().top
																		- $(
																				"#tfoot_div")
																				.height()
																		- 40);
											})
						})
			</script>
			<div class="wrapper wrapper-content animated fadeIn col-md-6">
				<form class="form-horizontal" id="form" role="form"
					action="http://demo2.5kcrm.net/index.php?m=product&amp;a=edit&amp;id=92"
					method="post" enctype="multipart/form-data" novalidate="novalidate">
					<input type="hidden" name="product_id" value="92"> <input
						type="hidden" name="jump_url"
						value="http://demo2.5kcrm.net/index.php?m=product&amp;a=view&amp;id=92">
					<input name="a" type="hidden" value="edit"> <input
						type="hidden" name="main_images_id" value="">
					<div class="ibox-content add_body" id="add_body"
						style="height: 432px;">
						<div class="row">
							<div class="col-md-12 add_body" style="height: 395px;">
								<div class="slimScrollDiv"
									style="position: relative; overflow: hidden; width: auto; height: 100%;">
									<div class="full-height-scroll"
										style="overflow: hidden; width: auto; height: 100%;">
										<div class="row">
											<div class="col-md-12 add_body_title">
												<div class="all-inline">
													<span class="sq-tag"></span>
													<div class="text-tag">
														<span>åºç¡ä¿¡æ¯</span>
													</div>
												</div>
											</div>
											<div class="col-md-11 add_body_form"
												style="margin-left: 12px;">
												<div class="form-group">
													<label class="col-md-4 control-label">æå¡ç§ç±»ï¼</label>
													<div class="col-md-6">
														<select class="form-control required" id="standard"
															name="standard" aria-required="true"><option
																value="">--è¯·éæ©--</option>
															<option value="ç½é¶ä¼å">ç½é¶ä¼å</option>
															<option value="é»éä¼å">é»éä¼å</option>
															<option value="ééä¼å">ééä¼å</option>
															<option value="é»ç³ä¼å">é»ç³ä¼å</option></select><span
															id="standardTip"
															style="float: left; line-height: 32px; margin-left: 5%; color: red;"></span>
													</div>
													<div class="col-md-2">
														<span
															style="color: red; line-height: 32px; margin-left: 10px;">*</span>
													</div>
												</div>
												<div class="form-group">
													<label class="col-md-4 control-label">äº§åç±»å«ï¼</label>
													<div class="col-md-6">
														<select class="form-control " id="category_id"
															name="category_id"><option selected="selected"
																value="1">å¹³åªåªä½</option>
															<option value="3">--HRM</option>
															<option value="4">--OA</option>
															<option value="17">----ffdsa</option>
															<option value="5">--å¾®ä¿¡å¬ä¼å·</option>
															<option value="16">----gggg</option>
															<option value="2">é¨é</option>
															<option value="7">ä½å±±æ»æ</option>
															<option value="8">--2017</option>
															<option value="13">è½¯ä»¶äº§å</option>
															<option value="14">--æ°æ®æå</option>
															<option value="15">--æ°æ®åæ</option>
															<option value="18">--3333333333</option>
															<option value="19">å¾å¥æå¡</option>
															<option value="20">å»è¯ä¸­é´ä½</option>
															<option value="21">æ£®æ£®åªä½</option>
															<option value="22">--ç½æ£®</option>
															<option value="23">--ææ£®</option>
															<option value="24">æè£</option>
															<option value="25">--ç±è¡£æ</option></select><span
															id="category_idTip"
															style="float: left; line-height: 32px; margin-left: 5%; color: red;"></span>
													</div>
													<div class="col-md-2"></div>
												</div>
												<div class="form-group">
													<label class="col-md-4 control-label">åååç§°ï¼</label>
													<div class="col-md-6">
														<input class="form-control required" type="text" id="name"
															name="name" value="daçå°ä½" aria-required="true"><span
															id="nameTip"
															style="float: left; line-height: 32px; margin-left: 5%; color: red;"></span>
													</div>
													<div class="col-md-2">
														<span
															style="color: red; line-height: 32px; margin-left: 10px;">*</span>
													</div>
												</div>
												<div class="form-group">
													<label class="col-md-4 control-label">å»ºè®®å®ä»·ï¼</label>
													<div class="col-md-6">
														<input class="form-control number " type="text"
															id="suggested_price" name="suggested_price" value=""
															onblur="bu(this)" onkeyup="num_input(this)"><span
															id="suggested_priceTip"
															style="float: left; line-height: 32px; margin-left: 5%; color: red;"></span>
													</div>
													<div class="col-md-2"></div>
												</div>
												<div class="form-group">
													<label class="col-md-4 control-label">äº§åç¼å·ï¼</label>
													<div class="col-md-6">
														<input class="form-control " type="text" id="product_num"
															name="product_num" value=""><span
															id="product_numTip"
															style="float: left; line-height: 32px; margin-left: 5%; color: red;"></span>
													</div>
													<div class="col-md-2"></div>
												</div>
												<div class="form-group">
													<label class="col-md-4 control-label">ææ¬ä»·ï¼</label>
													<div class="col-md-6">
														<input class="form-control number " type="text"
															id="cost_price" name="cost_price" value=""
															onblur="bu(this)" onkeyup="num_input(this)"><span
															id="cost_priceTip"
															style="float: left; line-height: 32px; margin-left: 5%; color: red;"></span>
													</div>
													<div class="col-md-2"></div>
												</div>
												<div class="form-group">
													<label class="col-md-4 control-label">ååæè¿°ï¼</label>
													<div class="col-md-6">
														<input class="form-control " type="text" id="sketch"
															name="sketch" value=""><span id="sketchTip"
															style="float: left; line-height: 32px; margin-left: 5%; color: red;"></span>
													</div>
													<div class="col-md-2"></div>
												</div>
												<!-- <div class="form-group">
										<label class="col-md-4 control-label">éæ©ä»åºï¼</label>
										<div class="col-md-6">
																					</div>
										<div class="col-md-2"></div>
									</div> -->
												<div class="form-group">
													<label class="col-md-4 control-label">äº§åå¾çï¼</label>
													<div class="col-md-4">
														<img
															src="http://demo2.5kcrm.net/index.php?m=product&amp;a=edit&amp;id=92"
															alt="" style="height: 120px; width: 120px;"
															id="main_pic_prev" class="thumb80">
													</div>
													<div class="col-md-4">
														<div class="btn btn-success fileinput-button">
															<span>éæ©å¾ç</span> <input type="file"
																name="main_pic[]" id="main_pic">
														</div>
													</div>
												</div>
												<div class="form-group">
													<label class="col-md-4 control-label">å¤æ³¨ï¼</label>
													<div class="col-md-8">
														<textarea rows="5" class="form-control " id="description"
															name="description"></textarea>
														<span id="descriptionTip"
															style="float: left; line-height: 32px; margin-left: 5%; color: red;"></span>
													</div>
												</div>
											</div>
											<div class="col-md-1 pull-right">
												<!-- <div style="height: 100%; border-right: 1px dashed gray;">&nbsp;sadf</div> -->
											</div>
										</div>
									</div>
									<div class="slimScrollBar"
										style="background: rgb(153, 153, 153); width: 7px; position: absolute; top: 0px; opacity: 0.4; display: none; border-radius: 7px; z-index: 99; right: 1px; height: 236.044px;"></div>
									<div class="slimScrollRail"
										style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div>
								</div>
							</div>
						</div>
					</div>
					<div id="tfoot_div" class="clearfix">
						<div class="clearfix" id="tfoot_page">
							<div class="ibox-content" style="border-top: none;">
								<div class="col-sm-offset-2"
									style="text-align: center; margin-left: 0px;">
									<button type="submit" class="btn btn-primary">ä¿®æ¹äº§å</button>
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
		<div class="wrapper wrapper-content " style="padding-top: 12px">
			<div class="row">
				<div class="col-lg-12">
					<div class="ibox-content clearfix" style="padding-top: 0px">
						<form id="form1"
							action="http://demo2.5kcrm.net/index.php?m=product&amp;a=edit&amp;id=92"
							method="post" enctype="multipart/form-data">
							<input type="hidden" name="product_id" value="92"> <input
								type="hidden" name="jump_url"
								value="http://demo2.5kcrm.net/index.php?m=product&amp;a=view&amp;id=92">
							<input name="a" type="hidden" value="edit"> <input
								name="product_id" type="hidden" value="92">
							<table class="table" width="95%" border="0" cellspacing="1"
								cellpadding="0">
								<tfoot>
									<tr>
										<td style="text-align: center;" colspan="4"><input
											name="submit" class="btn btn-primary" type="submit"
											value="ä¿å­">&nbsp; <input class="btn  btn-primary"
											type="button" onclick="javascript:history.go(-1)"
											value="è¿å"></td>
									</tr>
								</tfoot>
								<tbody class="form-inline">
									<tr>
										<th colspan="4">åºæ¬ä¿¡æ¯</th>
									</tr>
									<tr>
										<td class="tdleft" width="15%">æå¡ç§ç±»:</td>
										<td width="35%"><select class="form-control required"
											id="standard" name="standard"><option value="">--è¯·éæ©--</option>
												<option value="ç½é¶ä¼å">ç½é¶ä¼å</option>
												<option value="é»éä¼å">é»éä¼å</option>
												<option value="ééä¼å">ééä¼å</option>
												<option value="é»ç³ä¼å">é»ç³ä¼å</option></select><span
											id="standardTip"
											style="float: left; line-height: 32px; margin-left: 5%; color: red;"></span></td>
										<td class="tdleft" width="15%">äº§åç±»å«:</td>
										<td width="35%"><select class="form-control "
											id="category_id" name="category_id"><option
													selected="selected" value="1">å¹³åªåªä½</option>
												<option value="3">--HRM</option>
												<option value="4">--OA</option>
												<option value="17">----ffdsa</option>
												<option value="5">--å¾®ä¿¡å¬ä¼å·</option>
												<option value="16">----gggg</option>
												<option value="2">é¨é</option>
												<option value="7">ä½å±±æ»æ</option>
												<option value="8">--2017</option>
												<option value="13">è½¯ä»¶äº§å</option>
												<option value="14">--æ°æ®æå</option>
												<option value="15">--æ°æ®åæ</option>
												<option value="18">--3333333333</option>
												<option value="19">å¾å¥æå¡</option>
												<option value="20">å»è¯ä¸­é´ä½</option>
												<option value="21">æ£®æ£®åªä½</option>
												<option value="22">--ç½æ£®</option>
												<option value="23">--ææ£®</option>
												<option value="24">æè£</option>
												<option value="25">--ç±è¡£æ</option></select><span
											id="category_idTip"
											style="float: left; line-height: 32px; margin-left: 5%; color: red;"></span></td>
									</tr>
									<tr>
										<td class="tdleft" width="15%">åååç§°:</td>
										<td width="35%"><input class="form-control required"
											type="text" id="name" name="name" value="daçå°ä½"><span
											id="nameTip"
											style="float: left; line-height: 32px; margin-left: 5%; color: red;"></span></td>
										<td class="tdleft" width="15%">å»ºè®®å®ä»·:</td>
										<td width="35%"><input class="form-control number "
											type="text" id="suggested_price" name="suggested_price"
											value="" onblur="bu(this)" onkeyup="num_input(this)"><span
											id="suggested_priceTip"
											style="float: left; line-height: 32px; margin-left: 5%; color: red;"></span></td>
									</tr>
									<tr>
										<td class="tdleft" width="15%">äº§åç¼å·:</td>
										<td width="35%"><input class="form-control " type="text"
											id="product_num" name="product_num" value=""><span
											id="product_numTip"
											style="float: left; line-height: 32px; margin-left: 5%; color: red;"></span></td>
										<td class="tdleft" width="15%">ææ¬ä»·:</td>
										<td width="35%"><input class="form-control number "
											type="text" id="cost_price" name="cost_price" value=""
											onblur="bu(this)" onkeyup="num_input(this)"><span
											id="cost_priceTip"
											style="float: left; line-height: 32px; margin-left: 5%; color: red;"></span></td>
									</tr>
									<tr>
										<td class="tdleft" width="15%">ååæè¿°:</td>
										<td width="35%"><input class="form-control " type="text"
											id="sketch" name="sketch" value=""><span
											id="sketchTip"
											style="float: left; line-height: 32px; margin-left: 5%; color: red;"></span></td>
										<td colspan="2">&nbsp;</td>
									</tr>
									<tr>
										<th colspan="4">äº§åå¾ç</th>
									</tr>
									<tr>
										<td class="tdleft" height="100">ä¸»å¾</td>
										<td colspan="3" height="100"><input type="hidden"
											name="main_images_id" value="">
											<table class="table table-striped">
												<tbody>
													<tr>
														<td width="20%">
															<div class="thumbnail thumb80">
																<img id="main_pic_prev" class="thumb80">
															</div>
														</td>
														<td width="35%">
															<p>
																<span id="main_pic_prev_name"> æ  </span>
															</p>
														</td>
														<td width="25%">
															<p>
																<span id="main_pic_prev_size"> 0 </span> KB
															</p>
														</td>
														<td width="30%">
															<div class="btn btn-success fileinput-button">
																<span>éæ©æä»¶</span> <input type="file"
																	name="main_pic[]" id="main_pic">
															</div>
														</td>
													</tr>
												</tbody>
											</table></td>
									</tr>
									<tr>
										<td class="tdleft" style="min-height: 50">å¯å¾</td>
										<td colspan="3" style="min-height: 50">
											<div class="div_add">
												<a class="btn btn-primary pull-right" id="btn_add_files"
													href="javascript:void(0);"> <i class="fa fa-plus"></i>&nbsp;&nbsp;æ°å¢
												</a>
											</div>
										</td>
									</tr>
									<tr>
										<th colspan="4">éå ä¿¡æ¯</th>
									</tr>
									<tr>
										<td class="tdleft" width="15%">å¤æ³¨:</td>
										<td colspan="3"><textarea rows="5" class="form-control "
												id="description" name="description"></textarea><span
											id="descriptionTip"
											style="float: left; line-height: 32px; margin-left: 5%; color: red;"></span></td>
									</tr>
								</tbody>
							</table>
							<input name="a" type="hidden" value="edit"> <input
								name="product_id" type="hidden" value="92">
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="" style="dispaly: none;" id="dialog-validate"
			title="äº§åéªéç»æ">
			éæ©å®¢æ·ææäºº
			<div id="search_content"></div>
		</div>
		<script type="text/javascript" src="js/uploadPreview.js"></script>
		<script type="text/javascript">
			//åå§åä¸ä¼ å¾ç
			$("body").on('click', 'input[type="file"]', function() {
				var selector = $(this).attr('id');
				$("#" + selector).uploadPreview({
					Img : selector + "_prev",
					Width : 120,
					Height : 120
				});
			});
			$(document).ready(function() {
				/*formè¡¨åéªè¯*/
				$("#form").validate({

				});
			});
		</script>
		<script>
			// spacer.gif

			$(document)
					.ready(
							function() {
								// åºå®æé®

								var list = '';
								var t_type = "finance";
								var t_name = '';
								if (t_type == "leads") {
									t_name = '<i>çº¿</i>';
								}
								if (t_type == "customer") {
									t_name = '<i>å®¢</i>';
								}
								if (t_type == "business") {
									t_name = '<i>å</i>';
								}
								if (t_type == "contract") {
									t_name = '<i>å</i>';
								}
								if (t_type == "examine") {
									t_name = '<i>å®¡</i>';
								}
								if (t_type == "finance") {
									t_name = '<i>è´¢</i>';
								}
								list += "<li class='($vo['type']}'>"
										+ t_name
										+ "<a href='/index.php?m=finance&a=view&id=334'>M_20180312-0334</a></li>";
								var t_type = "customer";
								var t_name = '';
								if (t_type == "leads") {
									t_name = '<i>çº¿</i>';
								}
								if (t_type == "customer") {
									t_name = '<i>å®¢</i>';
								}
								if (t_type == "business") {
									t_name = '<i>å</i>';
								}
								if (t_type == "contract") {
									t_name = '<i>å</i>';
								}
								if (t_type == "examine") {
									t_name = '<i>å®¡</i>';
								}
								if (t_type == "finance") {
									t_name = '<i>è´¢</i>';
								}
								list += "<li class='($vo['type']}'>"
										+ t_name
										+ "<a href='/index.php?m=customer&a=view&id=320'>æ­¦å¸æ¶ä»£</a></li>";
								var t_type = "customer";
								var t_name = '';
								if (t_type == "leads") {
									t_name = '<i>çº¿</i>';
								}
								if (t_type == "customer") {
									t_name = '<i>å®¢</i>';
								}
								if (t_type == "business") {
									t_name = '<i>å</i>';
								}
								if (t_type == "contract") {
									t_name = '<i>å</i>';
								}
								if (t_type == "examine") {
									t_name = '<i>å®¡</i>';
								}
								if (t_type == "finance") {
									t_name = '<i>è´¢</i>';
								}
								list += "<li class='($vo['type']}'>"
										+ t_name
										+ "<a href='/index.php?m=customer&a=view&id=309'>3123123</a></li>";
								var t_type = "business";
								var t_name = '';
								if (t_type == "leads") {
									t_name = '<i>çº¿</i>';
								}
								if (t_type == "customer") {
									t_name = '<i>å®¢</i>';
								}
								if (t_type == "business") {
									t_name = '<i>å</i>';
								}
								if (t_type == "contract") {
									t_name = '<i>å</i>';
								}
								if (t_type == "examine") {
									t_name = '<i>å®¡</i>';
								}
								if (t_type == "finance") {
									t_name = '<i>è´¢</i>';
								}
								list += "<li class='($vo['type']}'>"
										+ t_name
										+ "<a href='/index.php?m=business&a=view&id=318'>M_20171205-0318</a></li>";
								var t_type = "business";
								var t_name = '';
								if (t_type == "leads") {
									t_name = '<i>çº¿</i>';
								}
								if (t_type == "customer") {
									t_name = '<i>å®¢</i>';
								}
								if (t_type == "business") {
									t_name = '<i>å</i>';
								}
								if (t_type == "contract") {
									t_name = '<i>å</i>';
								}
								if (t_type == "examine") {
									t_name = '<i>å®¡</i>';
								}
								if (t_type == "finance") {
									t_name = '<i>è´¢</i>';
								}
								list += "<li class='($vo['type']}'>"
										+ t_name
										+ "<a href='/index.php?m=business&a=view&id=478'>æ³¢é³787</a></li>";
								var t_type = "contract";
								var t_name = '';
								if (t_type == "leads") {
									t_name = '<i>çº¿</i>';
								}
								if (t_type == "customer") {
									t_name = '<i>å®¢</i>';
								}
								if (t_type == "business") {
									t_name = '<i>å</i>';
								}
								if (t_type == "contract") {
									t_name = '<i>å</i>';
								}
								if (t_type == "examine") {
									t_name = '<i>å®¡</i>';
								}
								if (t_type == "finance") {
									t_name = '<i>è´¢</i>';
								}
								list += "<li class='($vo['type']}'>"
										+ t_name
										+ "<a href='/index.php?m=contract&a=view&id=296'>ç¦ç¹è¯é©¾ä¼</a></li>";
								var t_type = "customer";
								var t_name = '';
								if (t_type == "leads") {
									t_name = '<i>çº¿</i>';
								}
								if (t_type == "customer") {
									t_name = '<i>å®¢</i>';
								}
								if (t_type == "business") {
									t_name = '<i>å</i>';
								}
								if (t_type == "contract") {
									t_name = '<i>å</i>';
								}
								if (t_type == "examine") {
									t_name = '<i>å®¡</i>';
								}
								if (t_type == "finance") {
									t_name = '<i>è´¢</i>';
								}
								list += "<li class='($vo['type']}'>"
										+ t_name
										+ "<a href='/index.php?m=customer&a=view&id=738'>æµè¯</a></li>";
								var t_type = "customer";
								var t_name = '';
								if (t_type == "leads") {
									t_name = '<i>çº¿</i>';
								}
								if (t_type == "customer") {
									t_name = '<i>å®¢</i>';
								}
								if (t_type == "business") {
									t_name = '<i>å</i>';
								}
								if (t_type == "contract") {
									t_name = '<i>å</i>';
								}
								if (t_type == "examine") {
									t_name = '<i>å®¡</i>';
								}
								if (t_type == "finance") {
									t_name = '<i>è´¢</i>';
								}
								list += "<li class='($vo['type']}'>"
										+ t_name
										+ "<a href='/index.php?m=customer&a=view&id=307'>é¿è¨å¾·</a></li>";
								$(document.body)
										.prepend(
												"<div style='position:fixed;left:0;top:35%;z-index:1000;'><div id='recordBtn' style='display:none;position:absolute;left:0px;top:0px;width:27px; height:27px;cursor: pointer;background: url(Public/img/record.png) left top no-repeat;'></div><div class='recordBox' style='z-index: 1000;display:block; position:absolute;left:-222px;top:26px;width:220px;min-height:30px; max-height:550px; background:#fff; border:1px solid #ccc'><span class='recordClose' style='position:absolute;right:15px; top:10px; display:block;width:9px; height:9px;cursor: pointer;  background:url(Public/img/record.png) -3px -29px;z-index:998;'></span><span class='fixed'></span><div class='title'><i></i>æè¿è®¿é®</div><ul style='list-style:none'>"
														+ list
														+ "</ul></div></div>");

								// è®¾ç½®æ ·å¼

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
									'font-family' : 'å¾®è½¯éé»',
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

								//éèå±ç¤º
								$('#recordBtn').click(function(oEvent) {
									var oleft = $('.recordBox').css('left');

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

								//å³é­æé®

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
											$(this).css('background-position',
													'-3px -41px');
										});
								$('.recordClose').mouseleave(
										function() {
											$(this).css('background-position',
													'-3px -29px');
										});

								// é»æ­¢åæ³¡
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

			//åcookieså½æ°  cookieè®¾ç½®
			function SetCookie(name, value)//ä¸¤ä¸ªåæ°ï¼ä¸ä¸ªæ¯cookieçåå­ï¼ä¸ä¸ªæ¯å¼  
			{
				var Days = 30; //æ­¤ cookie å°è¢«ä¿å­ 30 å¤©  
				var exp = new Date(); //new Date("December 31, 9998");  
				exp.setTime(exp.getTime() + Days * 24 * 60 * 60 * 1000);
				document.cookie = name + "=" + escape(value) + ";expires="
						+ exp.toGMTString();
			}
			function getCookie(name)//åcookieså½æ°          
			{
				var arr = document.cookie.match(new RegExp("(^| )" + name
						+ "=([^;]*)(;|$)"));
				if (arr != null)
					return unescape(arr[2]);
				return null;

			}
			function delCookie(name)//å é¤cookie  
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
				cursorcolor : "#ccc",//#CC0071 åæ é¢è² 
				cursoropacitymax : 0.5, //æ¹åä¸éæåº¦éå¸¸åæ å¤äºæ´»å¨ç¶æï¼scrollabarâå¯è§âç¶æï¼ï¼èå´ä»1å°0 
				touchbehavior : false, //ä½¿åæ æå¨æ»å¨åå¨å°å¼çµèè§¦æ¸è®¾å¤ 
				cursorwidth : scroll_width + "px", //åç´ åæ çå®½åº¦ 
				cursorborder : "0", //     æ¸¸æ è¾¹æ¡csså®ä¹ 
				cursorborderradius : "5px",//ä»¥åç´ ä¸ºåæ è¾¹çåå¾ 
				autohidemode : false, //æ¯å¦éèæ»å¨æ¡ 
				zindex : 100,
				background : "#F3F3F5",//æ»å¨æ¡èæ¯è²
			});
		});
	</script>
	<div class="small-chat-box fadeInRight animated" id="feedback_div"
		style="z-index: 1001; width: 385px; height: 500px; background-color: #f9f9f9; border-color: #ccc;">
		<div class="heading" draggable="true"
			style="background-color: #fff; border: 1px solid #d8e3ef; color: #6A7687;">
			<small class="chat-date pull-right">
				æå¡ç­çº¿ï¼400-6968-650 </small> æç©ºå°å©æ
		</div>
		<div id="feedback_body" class="nicescroll" tabindex="0"
			style="height: 355px; overflow: hidden; outline: none;">
			<div class="feedback_content" id="list_feedback"
				style="background-color: #fff;">
				<div class="left">
					<div class="author-name">
						<img alt="å¤´å" style="height: 32px; width: 32px"
							class="img-circle" src="img/wukong.png"> <small
							class="chat-date"></small>
					</div>
					<div class="chat-message active left_chat-message">
						æ¨å¥½ï¼è¯·è¾å¥å³é®å­è·åå¸®å©ï¼å¦âå¯ç âã</div>
				</div>
				<div style="clear: both; padding-bottom: 0px;" id="clearfeedback"></div>
			</div>
		</div>
		<div class="form-chat">
			<textarea class="form-control" cols="20" rows="2"
				style="width: 100%;" onkeyup="wordFunction();" id="feedback_content"
				placeholder="è¯·è¾å¥æ¨çé®é¢"></textarea>
			<div class="input-group input-group-sm"
				style="padding-top: 5px; line-height: 25px;">
				<div class="pull-left">
					é®é¢æ²¡æè§£å³ï¼ <a href="javascript:void(0);"
						class="feed_back">ç¹å»åé¦</a>
				</div>
				<div class="pull-right" style="margin-right: 5px;">
					<a href="javascript:void(0);" id="app_download"
						style="color: #FF761B;">APPä¸è½½(Android/IOS)</a>
				</div>
				<span class="input-group-btn">
					<button class="btn btn-primary" id="feedback_submit" type="button">åé</button>
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
			class="open-small-chat" title="æç©ºå°å©æ"> <i
			class="fa fa-comments"></i>
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
							var full_name = "é¹æ»";
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
						jsonp : "callback",//æå¡ç«¯ç¨äºæ¥æ¶callbackè°ç¨çfunctionåçåæ°
						success : function(data) {
							temp = '';
							if (data.status == 1) {
								temp += '<div class="right">\
                                <div class="author-name">';
								if (img) {
									temp += '<img alt="å¤´å" style="height:38px;width:38px" class="img-circle" src="'+img+'" />';
								} else {
									temp += '<img alt="å¤´å" style="height:38px;width:38px" class="img-circle" src="img/avatar_default.png" />';
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
                                        <img alt="å¤´å" style="height:32px;width:32px" class="img-circle" src="img/wukong.png">\
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
									temp += '<img alt="å¤´å" style="height:38px;width:38px" class="img-circle" src="'+img+'" />';
								} else {
									temp += '<img alt="å¤´å" style="height:38px;width:38px" class="img-circle" src="img/avatar_default.png" />';
								}
								temp += '<small class="chat-date"></small>\
                        </div>\
                            <div class="chat-message right_chat-message">'
										+ question
										+ '</div>\
                        </div>';
								temp += '<div class="left">\
                        <div class="author-name">\
                            <img alt="å¤´å" style="height:32px;width:32px" class="img-circle" src="img/wukong.png">\
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
								temp += '<img alt="å¤´å" style="height:38px;width:38px" class="img-circle" src="'+img+'" />';
							} else {
								temp += '<img alt="å¤´å" style="height:38px;width:38px" class="img-circle" src="img/avatar_default.png" />';
							}
							temp += '<small class="chat-date"></small>\
                    </div>\
                        <div class="chat-message right_chat-message">'
									+ question
									+ '</div>\
                    </div>';
							temp += '<div class="left">\
                    <div class="author-name">\
                        <img alt="å¤´å" style="height:32px;width:32px" class="img-circle" src="img/wukong.png">\
                        <small class="chat-date"></small>\
                    </div>\
                    <div class="chat-message active left_chat-message">æ¨è¿ä¸ªé®é¢å¤ªé¾äºï¼æè¿æ²¡å­¦ä¼ï¼å¯ä»¥ç¹å»<button style="color:#1ab394;padding:5px 10px;" class="feed_back btn btn-white btn-sm">åé¦</button>æé®ï¼æäº¤è¯¦ç»æè¿°ç»å®æ¹ï¼</br><span style="color:#000;line-height:30px;"">å¸¸è§é®é¢è¯·ç¹å»é¾æ¥ï¼</span></br><a style="color:#3AA8F5;line-height:25px;" target="_blank" href="http://help.crm.cc">http://help.crm.cc</a></br><span style="color:#000;line-height:30px;"">å¸®å©ææ¡£å°åï¼</span></br><a style="color:#3AA8F5;line-height:25px;" target="_blank" href="http://cdn.crm.cc/wukong2_help.pdf">æç©ºCRM2.0å¸®å©ææ¡£</a></div>\
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
					title : "æ¸©é¦¨æç¤º",
					text : "ä¸è½åéç©ºç½æ¶æ¯ï¼",
					type : "warning"
				})
				$('#feedback_content').val('');
				return false;
			}
			feedback_ajax(feedback_content);
		});

		// å­æ°éå¶
		function wordFunction() {
			var feedbackLength = $("#feedback_content").val().length;
			if (feedbackLength >= 100) {
				alert_crm('æ¨è¾å¥çåå®¹è¿é¿ï¼');
			}
		}
	</script>
	<script src="js/index.js"></script>
	<script src="js/notification.js"></script>
	<!-- layer -->
	<script src="js/layer.js"></script>
	<script src="js/call.js"></script>
	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							/*å¤éæ¡éæ©ææ*/
							if ($('.check_all').size() > 0) {
								var icheck_num = 0;
								var all_check_num = 0;
								/*éæ©ææandåæ¶ææ*/
								$(".check_all")
										.change(
												function() {
													$(
															"input[class='check_list']")
															.prop(
																	'checked',
																	$(this)
																			.prop(
																					"checked"));//éä¸­
													// if($(".check_all").prop("checked")){
													if ($(this).is(":checked")) { //jQueryæ¹å¼å¤æ­
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
								/*è®©éèæ ç­¾æ¾ç¤º*/
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
													//å¤çåéæ¶ææçæä½
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
																								'&nbsp;åæ¶ç½®é¡¶');
																				$(
																						'#to_check')
																						.html(
																								'<input type="hidden" id="is_checked" value="2">&nbsp;æ¤é');
																				$(
																						'#user_span')
																						.html(
																								'<a id="delete" href="javascript:void(0)" onclick="del_user(2)"><i class="fa fa-check"></i>&nbsp;å¯ç¨è´¦å·</a>');
																			} else {
																				$(
																						'#to_top_span')
																						.html(
																								'&nbsp;ç½®é¡¶');
																				var rel_name = $(
																						"input.check_list:checked")
																						.attr(
																								'rel3');
																				$(
																						'#to_check')
																						.html(
																								'<input type="hidden" id="is_checked" rel="'+rel_name+'" value="1">&nbsp;å®¡æ ¸');
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
								/*ç¹æ åæ¶ææéä¸­*/
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
					<b style="font-size: 16px;">çæ¬åææä¿¡æ¯</b>
					<button type="button" class="close"
						style="font-size: 34px; font-weight: 400; color: #fff;"
						data-dismiss="modal">
						<span aria-hidden="true">Ã</span><span class="sr-only">Close</span>
					</button>
				</div>
				<div class="modal-body col-sm-12">
					<div class="form-horizontal m-t">
						<div class="form-group ">
							<label class="control-label col-sm-3" style="padding-top: 0px;">çæ¬ä¿¡æ¯</label>
							<div class="col-sm-6">CRM2.0 - beta2.3.6</div>
							<div class="col-sm-3 pull-left">
								<a target="_blank" href="http://www.crm.cc/update/">æ¥çæ´æ°æ¥å¿</a>
							</div>
						</div>
						<div class="form-group ">
							<label class="control-label col-sm-3"></label>
							<div class="col-sm-9">åå¸æ¥æï¼2018å¹´1æ27æ¥</div>
						</div>
						<div class="form-group ">
							<label class="control-label col-sm-3" style="padding-top: 0px;">ææä¿¡æ¯</label>
							<div class="col-sm-6">ææäººæ°ï¼100äºº</div>
							<div class="col-sm-3 pull-left">
								<a target="_blank"
									href="http://help.crm.cc/index.php?m=help&amp;a=view&amp;help_id=128&amp;help_menu_id=3"
									title="ç¹å»æ¥çå¦ä½å¢å ææäººæ°">å¢å ææäººæ°</a>
							</div>
						</div>
						<div class="form-group ">
							<label class="control-label col-sm-3"></label>
							<div class="col-sm-6">å°ææ¶é´ï¼2028å¹´03æ05æ¥</div>
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
						aria-hidden="true">Ã</button>
					<h4 class="modal-title" id="NoPermissionModalLabel">ç¨æ·åé¦</h4>
				</div>
				<div class="modal-body feedback_body" style="height: 440px;">
					<iframe id="NoPermissioniframe" width="100%" height="100%"
						frameborder="0" src="js/saved_resource.html"></iframe>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">å³
						é­</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>