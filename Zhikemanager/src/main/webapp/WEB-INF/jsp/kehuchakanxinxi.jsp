<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<meta charset="utf-8">
	<title>查看客户信息</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="author" content="悟空CRM">
	<!-- 360浏览器默认使用Webkit内核 -->
	<meta name="renderer" content="webkit">
	<link rel="shortcut icon" href="http://demo2.5kcrm.net/Public/ico/favicon.png">
	<script src="js/jquery-2.js"></script>
	<link type="text/css" href="css/jquery-ui-1.css" rel="stylesheet">
	<link type="text/css" href="css/bootstrap-responsive.css" rel="stylesheet">
	<link href="css/bootstrap.css" rel="stylesheet">
	<link href="css/font-awesome_002.css" rel="stylesheet">
	<link href="css/font-awesome.css" rel="stylesheet">
	<link type="text/css" href="css/hovershow.css" rel="stylesheet">
	<!-- animate -->
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="css/notification.css">
	<style type="text/css">
		a.active{
			font-weight: bold;
			color: #777;
		}
		.nobr{
			white-space:nowrap;
		}
		#header-top{
		    position: fixed;
		    /*width: 87.3%;*/
		    right:0px;
		    z-index: 102;
		}
		.sidebar-collapse{z-index:9999;}
		.tooltip{width:85px;line-height:36px;}
		.tooltip-inner{padding:3px 12px;text-align:left;}
		.table{margin-bottom:0px;}
		@media (max-width: 768px){
			.nav.left-side{
				display: none;
			}
		}
		.navbar{margin-bottom:0px;}
		.check_list{width: 20px;height: 20px;}
		.check_all{width: 20px;height: 20px;}
		.check_all{width: 20px;height: 20px;}
		input[type=checkbox], input[type=radio]{margin-top:0px;}
		.radio.radio-inline {padding-left: 0px;}
		.alert-error{margin:20px;line-height:30px;}
		.text{color:#000;}
		.notification{top:150px;z-index:9999;}

		.checkbox, .radio{margin:0 auto;}
		
		/*闪烁效果*/
		.crm_heart{
		    animation:heart 1s ease infinite;
		}

		@keyframes heart {
	        0% {color:#FF6D57;}
	        100%{color:#93A6B5;}
		}
	</style>
	<!-- Toastr style -->
	<link href="css/toastr.css" rel="stylesheet">
	<!-- Sweet Alert -->
	<link href="css/sweetalert.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet">
    <link href="css/awesome-bootstrap-checkbox.css" rel="stylesheet">
	<!-- Mainly scripts -->
	<script src="js/bootstrap.js"></script>
	<script src="js/moment.js"></script>
	<script src="js/jquery_004.js" type="text/javascript"></script>
	<!-- <script src="/Public/style/js/plugins/metisMenu/jquery.metisMenu.js"></script> -->
	<script src="js/jquery.js"></script>
	<!-- Toastr -->
	<script src="js/toastr.js"></script>
	<!-- Custom and plugin javascript -->
	<script src="js/pace.js"></script>
	<script src="js/inspinia.js"></script>
	<script src="js/5kcrm_zh-cn.js" type="text/javascript"></script>
	<script src="js/5kcrm.js" type="text/javascript"></script>
	<!-- jQuery UI -->
	<script src="js/jquery-ui-1.js" type="text/javascript"></script>
	<script src="js/WdatePicker.js" type="text/javascript"></script><link href="css/WdatePicker.css" rel="stylesheet" type="text/css">
	<!-- Sweet alert -->
	<script src="js/sweetalert.js"></script>
	<!-- Jquery Validate -->
	<script src="js/jquery_003.js"></script>
	<script src="js/messages_zh.js"></script>
	<script src="js/bootstrap-tooltip.js"></script>
	<!-- 下拉筛选 -->
	<link rel="stylesheet" href="css/bootstrap-select.css">
	<script type="text/javascript" src="js/bootstrap-select.js" charset="UTF-8"></script>
	<!-- select2 -->
	<link href="css/select2.css" rel="stylesheet">
	<script src="js/select2.js"></script>
	<link href="http://demo2.5kcrm.net/Public/css/new.css">
<script>
$(function(){
	var innerHeight = window.innerHeight;
	if(innerHeight < 768){
		innerHeight = 768;
	}
	$("#page-wrapper").css("min-height",innerHeight);
	$(window).resize(function(){
		var innerHeight = window.innerHeight;
		if(innerHeight < 768){
			innerHeight = 768;
		}
		$("#page-wrapper").css("min-height",innerHeight);
	});
	$(".select2").select2({
        placeholder: "--请选择--"
        // allowClear: true
    });
});
</script><link rel="stylesheet" href="css/layer.css" id="layuicss-layer"></head>

<!-- <body class="navbar fixed-sidebar"> -->
<body class="navbar   pace-done pace-done"><div style="position:fixed;left:0;top:35%;z-index:1000;"><div id="recordBtn" style="display:none;position:absolute;left:0px;top:0px;width:27px; height:27px;cursor: pointer;background: url(Public/img/record.png) left top no-repeat;"></div><div class="recordBox" style="z-index: 1000;display:block; position:absolute;left:-222px;top:26px;width:220px;min-height:30px; max-height:550px; background:#fff; border:1px solid #ccc"><span class="recordClose" style="position:absolute;right:15px; top:10px; display:block;width:9px; height:9px;cursor: pointer;  background:url(Public/img/record.png) -3px -29px;z-index:998;"></span><span class="fixed" style="display: block; width: 16px; height: 16px; background: rgba(0, 0, 0, 0) url(&quot;Public/img/record.png&quot;) no-repeat scroll left -50px; position: absolute; right: 8px; top: 6px; cursor: pointer; z-index: 999;"></span><div class="title" style="position: relative; font-size: 14px; font-family: 微软雅黑; height: 30px; line-height: 30px; border-bottom: 1px solid rgb(204, 204, 204); background: rgb(230, 230, 230) none repeat scroll 0% 0%; text-indent: 25px;"><i style="position: absolute; display: block; width: 15px; height: 15px; background: rgba(0, 0, 0, 0) url(&quot;Public/img/record.png&quot;) no-repeat scroll left bottom; left: 5px; top: 7px;"></i>最近访问</div><ul style="list-style: outside none none; padding: 10px;"><li class="($vo[" type']}'="" style="line-height: 18px; display: block; margin-bottom: 8px;"><i style="display: inline-block; float: left; width: 18px; height: 18px; text-align: center; border: 1px solid rgb(204, 204, 204); border-radius: 100%; font-size: 12px; font-style: normal; line-height: 18px; margin-right: 8px; color: rgb(255, 255, 255); background: rgb(0, 136, 204) none repeat scroll 0% 0%;">客</i><a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=742">流程是否合适</a></li><li class="($vo[" type']}'="" style="line-height: 18px; display: block; margin-bottom: 8px;"><i style="display: inline-block; float: left; width: 18px; height: 18px; text-align: center; border: 1px solid rgb(204, 204, 204); border-radius: 100%; font-size: 12px; font-style: normal; line-height: 18px; margin-right: 8px; color: rgb(255, 255, 255); background: rgb(0, 136, 204) none repeat scroll 0% 0%;">客</i><a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=743">11111111111111111111111111111</a></li><li class="($vo[" type']}'="" style="line-height: 18px; display: block; margin-bottom: 8px;"><i style="display: inline-block; float: left; width: 18px; height: 18px; text-align: center; border: 1px solid rgb(204, 204, 204); border-radius: 100%; font-size: 12px; font-style: normal; line-height: 18px; margin-right: 8px; color: rgb(255, 255, 255); background: rgb(0, 136, 204) none repeat scroll 0% 0%;">客</i><a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=320">武帝时代</a></li></ul></div></div><div class="pace  pace-inactive pace-inactive"><div class="pace-progress" style="transform: translate3d(100%, 0px, 0px);" data-progress-text="100%" data-progress="99">
  <div class="pace-progress-inner"></div>
</div>
<div class="pace-activity"></div></div>
	<div id="wrapper">
		<nav class="navbar-default navbar-static-side" role="navigation" style="width: 70px;">
	        <div class="sidebar-collapse">
	        		            <ul class="nav metismenu left-side" id="side-menu">
						<li class="nav-header" style="padding:6px 21px 21px;">
							<br>
							<div class="logo-element" style="margin: -17px -25px;">
								<img class="img-circle" src="img/logo2.png" style="width: 38px;height: 38px;margin-right:0px;" alt="悟空CRM"> </div>
						</li>
						<li>
							<a data-toggle="tooltip" data-placement="right" data-original-title="首页" href="#"><i class="fa fa-home"></i></a>
						</li>

						<li>
							<a data-toggle="tooltip" data-placement="right" data-original-title="客户管理" class="active" href="kehuguanli.htm"><i class="fa fa-user"></i></a>
						</li>
						<li>
							<a data-toggle="tooltip" data-placement="right" data-original-title="商机管理" href="shangjiguanli.htm"><i class="fa fa-suitcase"></i></a>
						</li>
						<li>
							<a data-toggle="tooltip" data-placement="right" data-original-title="产品管理" href="chanpinguanli.htm"><i class="fa fa-inbox"></i></a>
						</li>
						<li>
							<a data-toggle="tooltip" data-placement="right" data-original-title="合同订单" href="hetong.htm"><i class="fa fa-file-text"></i></a>
						</li>
						<!--<li>
	                	<a data-toggle="tooltip" data-placement="right" data-original-title="财务管理" href="http://demo2.5kcrm.net/index.php?m=finance&amp;a=index&amp;t=receivables"><i class="fa fa-credit-card"></i></a>
	                </li>
	                	                					<li>
	                	<a data-toggle="tooltip" data-placement="right" data-original-title="数据分析" href="http://demo2.5kcrm.net/index.php?m=leads&amp;a=analytics&amp;content_id=1"><i class="fa fa-area-chart"></i></a>
	                </li>
	                	                					<li>
	                	<a data-toggle="tooltip" data-placement="right" data-original-title="办公" href="http://demo2.5kcrm.net/index.php?m=log&amp;a=index"><i class="fa fa-desktop"></i></a>
	                </li>-->
						<li>
							<a data-toggle="tooltip" data-placement="right" data-original-title="通讯录" href="renyuanguanli.htm"><i class="fa fa-phone-square"></i></a>
						</li>
						<!--<li>
	                	<a data-toggle="tooltip" data-placement="right" data-original-title="营销" href="http://demo2.5kcrm.net/index.php?m=setting&amp;a=sendsms"><i class="fa fa-envelope"></i></a>
	                </li>
	                	                	                <li>
	                	<a data-toggle="tooltip" data-placement="right" data-original-title="系统设置" href="http://demo2.5kcrm.net/index.php?m=setting&amp;a=defaultinfo"><i class="fa fa-cog"></i></a>
	                </li>-->
					</ul>
	        </div>
	    </nav>
		<div id="page-wrapper" class="gray-bg" style="background: rgb(230, 233, 240) none repeat scroll 0% 0%; min-height: 631px;">
    		<div class="row border-bottom white-bg" style="box-shadow: 0px 4px 13px -8px #5A5A5A;z-index: 102;">
				<nav class="navbar navbar-default nav-head navbar-static-top" role="navigation" style="margin-bottom: 0">
										<ul class="nav navbar-nav navbar-left navbar-form-custom" style="min-width:60%;">
													<li><a href="http://demo2.5kcrm.net/index.php?m=leads&amp;a=index"><span class="fa fa fa-child" style="display:inline"></span>&nbsp;&nbsp;线索</a></li>
							<li><a href="http://demo2.5kcrm.net/index.php?m=leads&amp;a=index&amp;by=public"><span class="fa fa fa-child" style="display:inline"></span>&nbsp;&nbsp;线索池</a></li>
							<li class="active"><a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=index&amp;by=me"><span class="fa fa-user" style="display:inline"></span>&nbsp;&nbsp;客户</a></li>
							<li><a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=index&amp;by=me&amp;content=resource"><span class="fa fa-group" style="display:inline"></span>&nbsp;&nbsp;客户池</a></li>
							<li><a href="http://demo2.5kcrm.net/index.php?m=contacts&amp;a=index"><span class="fa fa-phone-square" style="display:inline"></span>&nbsp;&nbsp;客户联系人</a></li>
											</ul>
					<ul class="nav navbar-top-links navbar-right" style="margin-right:0px;">
												<li class="dropdown" style="">
		                    <a class="dropdown-toggle count-info" id="todo_url" data-toggle="dropdown" href="#" title="待办事项">
		                        <img src="img/remain.png" alt=""><div class="label label-info" style="background-color: #FA7252;" id="todo_num">225</div>
		                    </a>
	                   		<ul class="dropdown-menu dropdown-alerts folder-list m-b-md" style="width:250px;">
	                   				                   						            			<li style="border-bottom:1px dashed #e7eaec !important;"><a href="http://demo2.5kcrm.net/index.php?m=contract&amp;a=index&amp;contract_checked=1&amp;by=all"><i class="fa fa-list-alt"></i>&nbsp;&nbsp;待审核的合同<span class="label label-info pull-right" style="background-color: #FA7252;" id="header_check_contract_num">63</span></a></li>
			            													            			<li style="border-bottom:1px dashed #e7eaec !important;"><a href="http://demo2.5kcrm.net/index.php?m=finance&amp;a=index&amp;t=receivingorder&amp;status[value]=0&amp;by=all"><i class="fa fa-money"></i>&nbsp;&nbsp;待审核的回款<span class="label label-info pull-right" style="background-color: #FA7252;" id="header_receivables_num">48</span></a></li>
			            													            			<li style="border-bottom:1px dashed #e7eaec !important;"><a href="http://demo2.5kcrm.net/index.php?m=examine&amp;a=index&amp;by=me_examine&amp;examining=1"><i class="fa fa-check-square-o"></i>&nbsp;&nbsp;待处理的审批流<span class="label label-info pull-right" style="background-color: #FA7252;" id="header_examine_num">2</span></a></li>
																									<li style="border-bottom:1px dashed #e7eaec !important;"><a href="http://demo2.5kcrm.net/index.php?m=contract&amp;a=index&amp;by=dqcontact"><i class="fa fa-user"></i>&nbsp;&nbsp;合同到期提醒<span class="label label-info pull-right" style="background-color: #FA7252;" id="header_dqcontact_num">44</span></a></li>
											            		
											            			<li style="border-bottom:1px dashed #e7eaec !important;"><a href="http://demo2.5kcrm.net/index.php?m=finance&amp;a=index&amp;t=receivables&amp;r_status=1&amp;by=me"><i class="fa fa-money"></i>&nbsp;&nbsp;应收款提醒<span class="label label-info pull-right" style="background-color: #FA7252;" id="receivables_num">68</span></a></li>
			            					            					            			<li style="border-bottom:1px dashed #e7eaec !important;"><a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=index&amp;by=todaycontact"><i class="fa fa-user"></i>&nbsp;&nbsp;今日需跟进客户<span class="label label-info pull-right" style="background-color: #FA7252;" id="header_follow_customer_num"></span></a></li>
			            			                   		</ul>
		                </li>
		                <li class="dropdown" style="">
		                    <a class="dropdown-toggle count-info" id="event_url" data-toggle="dropdown" href="#" title="今日日程">
		                        <img src="img/event.png" alt=""><span class="label label-warning" id="event_num">6</span>
		                    </a>
	                   		<ul class="dropdown-menu dropdown-alerts">
			            		<li class="list-group" role="presentation" id="event_group" style="height: 220px;">
	                        		<div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 100%;"><div class="full-height-scroll" id="event_list" data-height="220px" data-plugin="slimScroll" style="overflow: hidden; width: auto; height: 100%;"><a href="http://demo2.5kcrm.net/index.php?m=event&amp;a=index" title="点击查看" style="padding:5px !important;border-bottom:1px dashed #ddd;float:left;margin-bottom:5px;width:100%;">	                                <div style="overflow:hidden;padding:0 10px;">	                                	<span class="pull-left" style="color:#f96868;line-height:26px;"><i class="fa fa-circle"></i>&nbsp;&nbsp;【 合同 】寺地地地</span><br>	                                    <small class="text-muted pull-right" style="margin-top: 5px;">2018年03月14 00:00</small>	                                </div>	                            </a><a href="http://demo2.5kcrm.net/index.php?m=event&amp;a=index" title="点击查看" style="padding:5px !important;border-bottom:1px dashed #ddd;float:left;margin-bottom:5px;width:100%;">	                                <div style="overflow:hidden;padding:0 10px;">	                                	<span class="pull-left" style="color:#f96868;line-height:26px;"><i class="fa fa-circle"></i>&nbsp;&nbsp;【 合同 】1111111111111111111的合同</span><br>	                                    <small class="text-muted pull-right" style="margin-top: 5px;">2018年03月14 00:00</small>	                                </div>	                            </a><a href="http://demo2.5kcrm.net/index.php?m=event&amp;a=index" title="点击查看" style="padding:5px !important;border-bottom:1px dashed #ddd;float:left;margin-bottom:5px;width:100%;">	                                <div style="overflow:hidden;padding:0 10px;">	                                	<span class="pull-left" style="color:#46be8a;line-height:26px;"><i class="fa fa-circle"></i>&nbsp;&nbsp;【 提醒 】</span><br>	                                    <small class="text-muted pull-right" style="margin-top: 5px;">2018年03月14 15:00</small>	                                </div>	                            </a><a href="http://demo2.5kcrm.net/index.php?m=event&amp;a=index" title="点击查看" style="padding:5px !important;border-bottom:1px dashed #ddd;float:left;margin-bottom:5px;width:100%;">	                                <div style="overflow:hidden;padding:0 10px;">	                                	<span class="pull-left" style="color:#46be8a;line-height:26px;"><i class="fa fa-circle"></i>&nbsp;&nbsp;【 提醒 】武帝时代</span><br>	                                    <small class="text-muted pull-right" style="margin-top: 5px;">2018年03月14 17:13</small>	                                </div>	                            </a><a href="http://demo2.5kcrm.net/index.php?m=event&amp;a=index" title="点击查看" style="padding:5px !important;border-bottom:1px dashed #ddd;float:left;margin-bottom:5px;width:100%;">	                                <div style="overflow:hidden;padding:0 10px;">	                                	<span class="pull-left" style="color:#57c7d4;line-height:26px;"><i class="fa fa-circle"></i>&nbsp;&nbsp;通话</span><br>	                                    <small class="text-muted pull-right" style="margin-top: 5px;">2018年03月14 17:32 ~ 2018年03月14 23:59</small>	                                </div>	                            </a><a href="http://demo2.5kcrm.net/index.php?m=event&amp;a=index" title="点击查看" style="padding:5px !important;border-bottom:1px dashed #ddd;float:left;margin-bottom:5px;width:100%;">	                                <div style="overflow:hidden;padding:0 10px;">	                                	<span class="pull-left" style="color:#62a8ea;line-height:26px;"><i class="fa fa-circle"></i>&nbsp;&nbsp;了解一下</span><br>	                                    <small class="text-muted pull-right" style="margin-top: 5px;">2018年03月14 23:19 ~ 2018年03月14 23:59</small>	                                </div>	                            </a></div><div class="slimScrollBar" style="background: rgb(153, 153, 153) none repeat scroll 0% 0%; width: 7px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 7px; z-index: 99; right: 1px;"></div><div class="slimScrollRail" style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51) none repeat scroll 0% 0%; opacity: 0.2; z-index: 90; right: 1px;"></div></div>
                        		</li>
                        		<li>
			                        <div class="text-center link-block">
			                            <a href="http://demo2.5kcrm.net/index.php?m=event&amp;a=index">
			                                <strong>查看全部日程</strong>
			                                <i class="fa fa-angle-right"></i>
			                            </a>
			                        </div>
			                    </li>
			            		<li class="divider" style="height:0px;"></li>
	                   		</ul>
		                </li>
		                <li class="dropdown">
		                    <a class="dropdown-toggle count-info" id="message_url" data-toggle="dropdown" href="#" title="站内信">
		                        <img src="img/bell.png" alt=""><span class="label label-primary" id="message_num">3</span>
		                    </a>
	                    	<ul class="dropdown-menu dropdown-alerts" style="width:365px;">
	                    		<li class="list-group" role="presentation" id="message_group" style="height: 220px;">
	                        		<div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 100%;"><div class="full-height-scroll" id="message_list" data-height="220px" data-plugin="slimScroll" style="overflow: hidden; width: auto; height: 100%;"><a href="http://demo2.5kcrm.net/index.php?m=message&amp;a=index" style="width:100%;color:#676a6c;padding:5px !important;border-bottom:1px dashed #ddd;float:left;margin-bottom:5px;">		                    <div style="padding:0 10px;">		                        <img src="img/wukong.png" title="悟空小助手"> 您有<strong>3</strong>条消息待查看		                        <span class="pull-right text-muted small" style="line-height:30px;">2分钟54秒前</span>		                    </div>		                </a></div><div class="slimScrollBar" style="background: rgb(153, 153, 153) none repeat scroll 0% 0%; width: 7px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 7px; z-index: 99; right: 1px;"></div><div class="slimScrollRail" style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51) none repeat scroll 0% 0%; opacity: 0.2; z-index: 90; right: 1px;"></div></div>
	                        	</li>
	                    		<li>
			                        <div class="text-center link-block">
			                            <a href="http://demo2.5kcrm.net/index.php?m=message&amp;a=index">
			                                <strong>站内信列表</strong>
			                                <i class="fa fa-angle-right"></i>
			                            </a>
			                        </div>
			                    </li>
			                    <li class="divider" style="height:0px;"></li>
	                    	</ul>
		                </li>
		                <li style="padding-left: 30px;">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" style="padding: 2px;">
																<img alt="头像" style="height:38px;width:38px" class="img-circle" src="img/thumb_5aa5ec505c63c2291.png">
															</a>
							<ul class="dropdown-menu">
								<li><a href="http://demo2.5kcrm.net/index.php?m=user&amp;a=edit">个人资料</a></li>
                                <li><a href="http://demo2.5kcrm.net/index.php?m=setting&amp;a=lockscreen">一键锁屏</a></li>
								<li class="divider"></li>
								<li><a href="javascript:void(0);" id="authorize">版本及授权信息</a></li>								<li><a class="logout" href="javascript:void(0);">退出</a></li>
							</ul>
						</li>
		            </ul>
				</nav>
    		</div>
			
			<!-- 模态框 -->
			

			
<script type="text/javascript">

$(document).on('click','#authorize',function(){
	$('#Modal_anthorize').modal('show');
});

$('[data-toggle="tooltip"]').tooltip({html:true});
/*时间插件*/
$('.date').datepicker({
  format: "yyyy-mm-dd",
  todayBtn: "linked",
  keyboardNavigation: false,
  forceParse: false,
  calendarWeeks: true,
  autoclose: true
});
$("#dialog-message-send").dialog({
    autoOpen: false,
    modal: true,
	width: 800,
	maxHeight: 600,
	position: ["center",100]
});

$(function(){
	/*站内信*/
	message_tips();
	login_tips();
	$("#header_send_message").click(function(){
		$('#dialog-message-send').dialog('open');
		$('#dialog-message-send').load('/index.php?m=message&a=send');
	});
	/*让复选框默认取消选择*/
	//$(':checkbox').prop('checked', false);

	/*记录菜单隐藏状态*/
	$(".navbar-minimalize").click(function(){
		var arr,reg = new RegExp("(^| )mini-navbar=([^;]*)(;|$)");
		arr = document.cookie.match(reg);
		if(arr){
			var nav_status = unescape(arr[2]) == 1 ? 0:1;
		}else{
			var nav_status = 1;
		}
		document.cookie = "mini-navbar="+nav_status;
	});
});

function salert(){
	var txt = "";
	if(txt != ''){
		swal(txt, "", "")
	}
}

/*退出提示*/
$('.logout').click(function () {
	swal({
		title: "确定退出登录?",
		type: "warning",
		showCancelButton: true,
		confirmButtonColor: "#DD6B55",
		confirmButtonText: "确定",
		cancelButtonText: "取消",
		closeOnConfirm: false
        },
		function (isConfirm) {
			if (isConfirm) {
				window.location="/index.php?m=user&a=logout";
			}
		}
	);
});

/*提交失败返回前一页*/
var href = "";
if(href != '' && href != null){
	swal({
		title: "添加失败!",type: "error",
		confirmButtonColor: "#DD6B55",
		confirmButtonText: "返回",
		closeOnConfirm: false 
	}, 
	function(){
		location.href = 'javascript:history.back(-1)';
	});
}
var login_show = 0;
function login_tips(){
	$.get("/index.php?m=message&a=logintips", function(data){
		var is_login = data.data['is_login'];
        if(is_login == 0 && login_show != 1){
        	 $.ajax({
		        type: "GET",
		        url: "/index.php?m=user&a=loginajax",
		        async: true,
		        success: function(data) {
		            if(data.status != 2){
		                $("#login_modal").parent().removeClass("modal-lg").addClass("modal-md");
			            $url = "/index.php?m=user&a=loginajax";
			            $('#Modal_login').modal('show');
			            login_show = 1;
			            $('#login_modal').load($url);
		            }else{
		            	 login_show = 1;
		            }
		        }  
		    });
        }
	},'json')
	setTimeout('login_tips()',20000);
}

/*轮询*/
var mark_count = 1;//标记第一次弹出
/*初始默认值*/
var msg_num = '0,0';

function message_tips(){
	$.get("/index.php?m=message&a=tips", function(data){
        var is_lock = data.data['is_lock'];
        if(is_lock == 1){
            location.href = "/index.php?m=setting&a=lockscreen";
        }
		//卡片提醒显示与隐藏
		var message_html = '';
		var new_num = data.data['message']+','+data.data['contract_count'];

		//待办事项
		$('#header_check_contract_num').html(data.data['check_contract_num']);
		$('#header_dqcontact_num').html(data.data['contract_num']);
		$('#header_examine_num').html(data.data['examine_num']);
		$('#header_receivables_num').html(data.data['receivingorder_num']);
		$('#receivables_num').html(data.data['receivables_num']);
		$('#header_follow_customer_num').html(data.data['today_customer']);
		if (data.data['todo_num']) {
			$('#todo_num').html(data.data['todo_num']);
		} else {
			$('#todo_num').html('');
		}

		//导航提醒实时写入数值
		if(data.data['message'] != 0 && data.data['message'] != ''){
			$('#message_group').show();
			//桌面提醒
			if(data.data['data_list']){
				$(data.data['data_list']).each(function(k, v){
					if (data.data['data_list_count'] < 3) {
						animateMessage(v.role_info.thumb_path, v.role_info.full_name, v.content_msubstr);
					}
				    aaa(v.role_info.thumb_path, v.role_info.full_name, v.content, v.url_link);
				});
			}
			$('#message_num').html(data.data['message']);
			$('#message_list').html('');
			if(data.data['message_num'] != 0 && data.data['message_num'] != ''){
				message_html += '<a href="/index.php?m=message&a=index" style="width:100%;color:#676a6c;padding:5px !important;border-bottom:1px dashed #ddd;float:left;margin-bottom:5px;">\
		                    <div style="padding:0 10px;">\
		                        <img src="/Public/img/wukong.png" title="悟空小助手"> 您有<strong>'+data.data['message_num']+'</strong>条消息待查看\
		                        <span class="pull-right text-muted small" style="line-height:30px;">'+data.data['message_time']+'前</span>\
		                    </div>\
		                </a>';
			}

			if(data.data['message_announcement_count'] != 0 && data.data['message_announcement_count'] != ''){
				message_html += '<a href="/index.php?m=message&a=index&by=announcement" style="width:100%;color:#676a6c;padding:5px !important;border-bottom:1px dashed #ddd;float:left;margin-bottom:5px;">\
		                    <div style="padding:0 10px;">\
		                        <img src="/Public/img/announcement.png" title="系统公告"> 您有<strong>'+data.data['message_announcement_count']+'</strong>条公告信息待查看\
		                        <span class="pull-right text-muted small" style="line-height:30px;">'+data.data['announcement_time']+'前</span>\
		                    </div>\
		                </a>';
			}
			if(data.data['role_message_list']){
				$(data.data['role_message_list']).each(function(k, v){
				    message_html += '<a href="/index.php?m=message&a=message_view&to_role_id='+v.role_id+'" title="点击回复" style="width:100%;color:#676a6c;padding:5px !important;border-bottom:1px dashed #ddd;float:left;margin-bottom:5px;" >\
	                            <div class="dropdown-messages-box" style="padding:0 10px;">\
	                                <div class="pull-left">\
	                                    <img alt="image" class="img-circle" src="'+v.thumb_path+'">&nbsp;\
	                                </div>\
	                                <div style="overflow:hidden;">\
	                                    <span>'+v.full_name+'</span><span class="label label-warning pull-right" style="margin-right: 3px;border-radius:50% !important;">'+v.unread_num+'</span><br>\
	                                    <span style="word-wrap: break-word;word-break: normal;float:left;margin-top:10px;width:100%;">'+v.content+'</span><br>\
	                                    <small class="text-muted pull-right" style="margin-top: 5px;">'+v.send_time+'</small>\
	                                </div>\
	                            </div>\
	                        </a>';
				});
			}
			$('#message_list').append(message_html);
		}else{
			$('#message_group').hide();
		}
		//日程提醒
		var event_temp = '';
		if(data.data['event_list'] != 0 && data.data['event_list'] != ''){
			$('#event_group').show();
			$('#event_list').html('');
			$('#event_num').html(data.data['event_num']);
			$.each(data.data['event_list'], function(k, v){
				event_temp += '<a href="/index.php?m=event&a=index" title="点击查看" style="padding:5px !important;border-bottom:1px dashed #ddd;float:left;margin-bottom:5px;width:100%;">\
	                                <div style="overflow:hidden;padding:0 10px;">\
	                                	<span class="pull-left" style="color:'+v.color+';line-height:26px;"><i class="fa fa-circle"></i>&nbsp;&nbsp;'+v.subject+'</span><br>\
	                                    <small class="text-muted pull-right" style="margin-top: 5px;">'+v.between_date+'</small>\
	                                </div>\
	                            </a>';
			});
			$('#event_list').append(event_temp);
		}else{
			$('#event_group').hide();
		}
	},'json')
	setTimeout('message_tips()',30000);
}

/*head 特效*/
$('.nav-head .navbar-left li').mouseover(function(){
	$(this).find('a span').css("color", '#ffb173');
});

$('.nav-head .navbar-left li').mouseout(function(){
	$(this).find('a span').css("color", '#e6e9f2');
});
</script>

<script type="text/javascript">
function aaa(icon, name, content, url_link){
    var t = new Date().toLocaleString();
    var options={
        dir: "ltr",
        lang: "utf-8",
        icon: icon,
        body: content
    };
    if(Notification && Notification.permission === "granted"){
        var n = new Notification(name + t, options);
        //5秒后自动关闭 
        n.onshow = function(){
            setTimeout(function () {
	            n.close();
	        }, 5000)
        };
        n.onclick = function() {
            // alert("You clicked me!");
            window.location = url_link;
            n.close();
        };
        n.onclose = function(){
            console.log("notification closed!");
        };        
        n.onerror = function() {
            console.log("An error accured");
        }        
    }
}
</script>
<script type="text/javascript" src="js/PCASClass.js"></script>
<style>
    .a{
        display:block;
    }
    .form-p{line-height: 25px;height: 25px;}
    .form-p-owner{line-height: 25px;height: 25px;padding-top: 5px;font-size: 14px;color: #000;}
    .product-a-line{border-left: 3px solid #19aa8d !important;}
    .product-list:hover{background-color: #f3f3f4;}
    .all_business{background-color: #fff;color: #00aaef;}
    .all_business_a{background-color: #00aaef;color: #fff !important;}
    .form-horizontal .control-label{color: #999;}
</style>
<div class="wrapper wrapper-content animated fadeIn">
    <div class="ibox-content" style="padding-top:9px;padding-bottom:4px;">
        		<input name="content" id="content" value="" type="hidden">
        <input id="bid" value="" type="hidden">
        <div class="row border-bottom">
            <div class="col-md-9">
                <div class="all-inline">
                    <span><img src="img/customer_view_icon.png" style="margin-bottom:9px;" alt=""></span>
                    <h2 class="h2-customer-name" style="font-weight:400;color: #000;">流程是否合适</h2>
                    <span style="font-size:20px">
					<a style="margin-left:10px;" href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=customerlock&amp;customer_id=742">
                        <img title="点击解锁，解锁定后超期回归客户池" src="img/locking.png">
                                                </a>                    </span>
					<a href="javascript:void(0);" id="share_list" rel="742" style="color:#ffb173"><i class="fa fa-share"></i>当前共享给<span id="share_count">0</span>名成员</a>                </div>
            </div>
            <div class="col-md-3">
                <div class="btn-group pull-right">
                    <button data-toggle="dropdown" class="btn btn-outline btn-default dropdown-toggle" aria-expanded="false">操作 <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu">
                        <li><a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=edit&amp;id=742" style="margin-right: 15px;"><i class="fa fa-pencil"></i>&nbsp;&nbsp;编辑</a></li>
						<li><a href="javascript:void(0);" id="transfer_name" rel="742" style="margin-right: 15px;"><i class="fa fa-exchange"></i>&nbsp;&nbsp;转移</a></li>                        <li>
                            <a href="javascript:void(0);" id="remind" rel="742">
                               <i class="fa fa-bell-o"></i>&nbsp;&nbsp;添加提醒 
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="pull-right" style="padding-right: 15px;">
                                    </div>
            </div>
        </div>
        <div class="row" style="padding-top: 20px;">
            <div class="col-md-9">
            <input id="contacts_id" value="0" type="hidden">
                <form role="form" class="form-horizontal view-group" method="post">
                    <div class="form-group">
                        <label class="col-lg-2 control-label">客户名称</label>
                        <div class="col-lg-4">
                            <p class="form-p color-a-edit">
                                <span style="cursor:pointer;">流程是否合适</span><a href="javascript:void(0);" class="fa fa-pencil pencil-size field-edit hide"></a>
                            </p>
                        </div>
                        <div class="col-lg-3 hide">
                            <input class="form-control" name="name" value="流程是否合适" id="customer_name" type="text">
                        </div>
                        <div class="col-lg-1 hide"></div>
                        <label class="col-lg-2 control-label">联系人姓名</label>
                        <div class="col-lg-4">
                            <p class="form-p">
                                <span style="cursor:pointer"></span><a href="javascript:void(0);" class="fa fa-pencil pencil-size field-edit hide"></a>
                            </p>
                        </div>
                        <div class="col-lg-3 hide">
                            <input class="form-control" name="contacts_name" id="" type="text">
                        </div>
                        <div class="col-lg-1 hide"></div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-2 control-label">客户编号</label>
                        <div class="col-lg-4">
                            <p class="form-p">
                                <span style="cursor:pointer"></span><a href="javascript:void(0);" class="fa fa-pencil pencil-size field-edit hide"></a>
                            </p>
                        </div>
                        <div class="col-lg-3 hide">
                            <input class="form-control" name="customer_code" id="" type="text">
                        </div>
                        <div class="col-lg-1 hide"></div>

                        <label class="col-lg-2 control-label">联系电话</label>
                        <div class="col-lg-4">
                            <p class="form-p">
                                <span style="cursor:pointer"></span><a href="javascript:void(0);" class="fa fa-pencil pencil-size field-edit hide"></a>
                            </p>
                        </div>
                        <div class="col-lg-3 hide">
                            <input class="form-control" name="contacts_phone" id="" type="text">
                        </div>
                        <div class="col-lg-1 hide"></div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-2 control-label">客户等级</label>
                        <div class="col-lg-4">
                            <p class="form-p">
                                <!-- 星星 -->
                                                                <span style="cursor:pointer;color:#D0D0D0;">
                                    <i class="fa fa-star star-orange"></i>&nbsp;<i class="fa fa-star star-orange"></i>&nbsp;<i class="fa fa-star star-orange"></i>&nbsp;<i class="fa fa-star star-orange"></i>&nbsp;<i class="fa fa-star star-orange"></i>&nbsp;                                </span>
                                <a href="javascript:void(0);" class="fa fa-pencil pencil-size field-edit hide"></a>
                            </p>
                        </div>
                        <div class="col-lg-3 hide">
							<select name="grade" class="form-control" id="edit-grade">
								<option value="1">一星</option>
								<option value="2">二星</option>
								<option value="3">三星</option>
								<option value="4">四星</option>
								<option value="5" selected="selected">五星</option>
							</select>
                        </div>
                        <div class="col-lg-1 hide"></div>
                        <label class="col-lg-2 control-label">尊称</label>
                        <div class="col-lg-4">
                            <p class="form-p">
                                <span style="cursor:pointer"></span>
                                <a href="javascript:void(0);" class="fa fa-pencil pencil-size field-edit hide"></a>
                            </p>
                        </div>
                        <div class="col-lg-3 hide">
                            <div class="radio radio-info radio-inline" style="margin-left: 20px;">
                                <input name="contacts_saltname" id="saltname" value="先生" type="radio">
                                <label for="saltname">先生</label>
                            </div> &nbsp; 
                            <div class="radio radio-info radio-inline">
                                <input name="contacts_saltname" id="saltname1" value="女士" type="radio">
                                <label for="saltname1">女士</label>
                            </div>
                        </div>
                        <div class="col-lg-1 hide"></div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-2 control-label">客户负责人</label>
                        <div class="col-lg-4">
                            <p class="form-p-owner" style="margin-bottom: 0px;">
                                <a class="role_info" rel="1" href="javascript:void(0)">邹总</a>
                            </p>
                        </div>
                        <label class="col-lg-2 control-label">创建时间</label>
                        <div class="col-lg-4">
                            <p class="form-p-owner" style="margin-bottom: 0px;">2018-03-14 18:27:39</p>
                        </div>
                    </div>
                    <div id="list-show" style="display:none;" rel="false">
                        														<div class="form-group">
								<label class="col-lg-2 control-label">下次联系时间</label>
								<div class="col-lg-4">    
									<p class="form-p">
										<span style="cursor:pointer;color:#333333">2018-03-15 18:30</span><a href="javascript:void(0);" class="fa fa-pencil pencil-size field-edit hide"></a>
									</p>
								</div>
								<div class="col-lg-3 hide">
									<input class="form-control Wdate" input_type="time" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm'})" name="nextstep_time" id="nextstep_time" value="2018-03-15 18:30" type="text"><span id="nextstep_timeTip" style="float: left;line-height: 32px;margin-left: 5%;color:red;"></span>								</div>
								<div class="col-lg-1 hide"></div>                            
																						<label class="col-lg-2 control-label">车牌号</label>
								<div class="col-lg-4">
																		<p class="form-p">
										<span style="cursor:pointer;color:#333333">ff</span><a href="javascript:void(0);" class="fa fa-pencil pencil-size field-edit hide"></a>
									</p>
																	</div>
								<div class="col-lg-3 hide">
									<input class="form-control " id="crm_gxmlcs" name="crm_gxmlcs" value="ff" type="text"><span id="crm_gxmlcsTip" style="float: left;line-height: 32px;margin-left: 5%;color:red;"></span> &nbsp; <span style="color:#999;float:left;margin-top:5px;">(注:ff)</span>								</div>
								<div class="col-lg-1 hide"></div>                            
							</div>
																					<div class="form-group">
								<label class="col-lg-2 control-label">到期时间</label>
								<div class="col-lg-4">    
									<p class="form-p">
										<span style="cursor:pointer;color:#333333"> </span><a href="javascript:void(0);" class="fa fa-pencil pencil-size field-edit hide"></a>
									</p>
								</div>
								<div class="col-lg-3 hide">
									<input class="form-control Wdate" input_type="time" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd'})" name="crm_yacitq" id="crm_yacitq" type="text"><span id="crm_yacitqTip" style="float: left;line-height: 32px;margin-left: 5%;color:red;"></span>								</div>
								<div class="col-lg-1 hide"></div>                            
																						<label class="col-lg-2 control-label">会员卡号</label>
								<div class="col-lg-4">
																		<p class="form-p">
										<span style="cursor:pointer;color:#333333">23423</span><a href="javascript:void(0);" class="fa fa-pencil pencil-size field-edit hide"></a>
									</p>
																	</div>
								<div class="col-lg-3 hide">
									<input class="form-control " id="crm_pcamcq" name="crm_pcamcq" value="23423" type="text"><span id="crm_pcamcqTip" style="float: left;line-height: 32px;margin-left: 5%;color:red;"></span>								</div>
								<div class="col-lg-1 hide"></div>                            
							</div>
																					<div class="form-group">
								<label class="col-lg-2 control-label">测试</label>
								<div class="col-lg-4">    
									<p class="form-p">
										<span style="cursor:pointer;color:#333333">1</span><a href="javascript:void(0);" class="fa fa-pencil pencil-size field-edit hide"></a>
									</p>
								</div>
								<div class="col-lg-3 hide">
									<select class="form-control " id="crm_xdhslk" name="crm_xdhslk"><option value="">--请选择--</option><option value="1" selected="selected">1</option><option value="2">2</option><option value="3">3</option></select><span id="crm_xdhslkTip" style="float: left;line-height: 32px;margin-left: 5%;color:red;"></span>								</div>
								<div class="col-lg-1 hide"></div>                            
																						<label class="col-lg-2 control-label">详细地址</label>
								<div class="col-lg-4">
																		<p class="form-p" style="word-break:break-all;height:auto;">
										<span style="cursor:pointer;color:#333333">sdasd</span><a href="javascript:void(0);" class="fa fa-pencil pencil-size field-edit hide"></a>
									</p>
																	</div>
								<div class="col-lg-3 hide">
									<textarea rows="5" class="form-control " id="crm_ogcdos" name="crm_ogcdos">sdasd</textarea><span id="crm_ogcdosTip" style="float: left;line-height: 32px;margin-left: 5%;color:red;"></span>								</div>
								<div class="col-lg-1 hide"></div>                            
							</div>
																					<div class="form-group">
								<label class="col-lg-2 control-label">客户状态</label>
								<div class="col-lg-4">    
									<p class="form-p">
										<span style="cursor:pointer;color:#333333">已成交客户</span><a href="javascript:void(0);" class="fa fa-pencil pencil-size field-edit hide"></a>
									</p>
								</div>
								<div class="col-lg-3 hide">
									<select class="form-control " id="customer_status" name="customer_status" disabled="disabled"><option value="">--请选择--</option><option value="意向客户">意向客户</option><option value="已成交客户" selected="selected">已成交客户</option><option value="失败客户">失败客户</option></select><span id="customer_statusTip" style="float: left;line-height: 32px;margin-left: 5%;color:red;"></span>								</div>
								<div class="col-lg-1 hide"></div>                            
																						<label class="col-lg-2 control-label">微信</label>
								<div class="col-lg-4">
																		<p class="form-p">
										<span style="cursor:pointer;color:#333333"></span><a href="javascript:void(0);" class="fa fa-pencil pencil-size field-edit hide"></a>
									</p>
																	</div>
								<div class="col-lg-3 hide">
									<input class="form-control " onkeyup="checkinfo(crm_ifvtcy)" id="crm_ifvtcy" name="crm_ifvtcy" type="text"><span id="crm_ifvtcyTip" style="float: left;line-height: 32px;margin-left: 5%;color:red;"></span>								</div>
								<div class="col-lg-1 hide"></div>                            
							</div>
																					<div class="form-group">
								<label class="col-lg-2 control-label">客户行业</label>
								<div class="col-lg-4">    
									<p class="form-p">
										<span style="cursor:pointer;color:#050505"></span><a href="javascript:void(0);" class="fa fa-pencil pencil-size field-edit hide"></a>
									</p>
								</div>
								<div class="col-lg-3 hide">
									<select class="form-control " id="industry" name="industry"><option value="" selected="selected">--请选择--</option><option value="还打社管会">还打社管会</option><option value="GRE国际饭店">GRE国际饭店</option><option value="刚回家复读过">刚回家复读过</option><option value="就看见姐姐">就看见姐姐</option></select><span id="industryTip" style="float: left;line-height: 32px;margin-left: 5%;color:red;"></span>								</div>
								<div class="col-lg-1 hide"></div>                            
																						<label class="col-lg-2 control-label">QQ</label>
								<div class="col-lg-4">
																		<p class="form-p">
										<span style="cursor:pointer;color:#333333"></span><a href="javascript:void(0);" class="fa fa-pencil pencil-size field-edit hide"></a>
									</p>
																	</div>
								<div class="col-lg-3 hide">
									<input class="form-control " onkeyup="checkinfo(crm_jlkgnr)" id="crm_jlkgnr" name="crm_jlkgnr" type="text"><span id="crm_jlkgnrTip" style="float: left;line-height: 32px;margin-left: 5%;color:red;"></span>								</div>
								<div class="col-lg-1 hide"></div>                            
							</div>
																					<div class="form-group">
								<label class="col-lg-2 control-label">销售渠道</label>
								<div class="col-lg-4">    
									<p class="form-p">
										<span style="cursor:pointer;color:#333333"></span><a href="javascript:void(0);" class="fa fa-pencil pencil-size field-edit hide"></a>
									</p>
								</div>
								<div class="col-lg-3 hide">
									<select class="form-control " id="origin" name="origin"><option value="" selected="selected">--请选择--</option><option value="官网">官网</option><option value="其他">其他</option></select><span id="originTip" style="float: left;line-height: 32px;margin-left: 5%;color:red;"></span>								</div>
								<div class="col-lg-1 hide"></div>                            
																						<label class="col-lg-2 control-label">地址</label>
								<div class="col-lg-4">
																		<p class="form-p">
										<span style="cursor:pointer;color:#333333"></span><a href="javascript:void(0);" class="fa fa-pencil pencil-size field-edit hide"></a>
									</p>
																	</div>
								<div class="col-lg-3 hide">
									<script type="text/javascript">
					$(function(){
						new PCAS("address['state']","address['city']","address['area']","","","");
					});
					</script><select class="form-control " input_type="address" name="address['state']" style="width:32%;float:left;"><option value="" selected="selected">--请选择省份--</option><option value="北京市">北京市</option><option value="天津市">天津市</option><option value="河北省">河北省</option><option value="山西省">山西省</option><option value="内蒙古自治区">内蒙古自治区</option><option value="辽宁省">辽宁省</option><option value="吉林省">吉林省</option><option value="黑龙江省">黑龙江省</option><option value="上海市">上海市</option><option value="江苏省">江苏省</option><option value="浙江省">浙江省</option><option value="安徽省">安徽省</option><option value="福建省">福建省</option><option value="江西省">江西省</option><option value="山东省">山东省</option><option value="河南省">河南省</option><option value="湖北省">湖北省</option><option value="湖南省">湖南省</option><option value="广东省">广东省</option><option value="广西壮族自治区">广西壮族自治区</option><option value="海南省">海南省</option><option value="重庆市">重庆市</option><option value="四川省">四川省</option><option value="贵州省">贵州省</option><option value="云南省">云南省</option><option value="西藏自治区">西藏自治区</option><option value="陕西省">陕西省</option><option value="甘肃省">甘肃省</option><option value="青海省">青海省</option><option value="宁夏回族自治区">宁夏回族自治区</option><option value="新疆维吾尔自治区">新疆维吾尔自治区</option><option value="香港特别行政区">香港特别行政区</option><option value="澳门特别行政区">澳门特别行政区</option><option value="台湾省">台湾省</option><option value="其它">其它</option></select>
						<select class="form-control " input_type="address" name="address['city']" style="width:32%;float:left;margin-left:1%;"><option value="">全部</option><option value="" selected="selected">--请选择城市--</option></select>
						<select class="form-control " input_type="address" name="address['area']" style="width:32%;float:left;margin-left:1%;"><option value="">全部</option><option value="" selected="selected">--请选择地区--</option></select>
						<input class="form-control" input_type="address" name="address['street']" placeholder="街道信息" style="float:left;margin-top:5px;" type="text">								</div>
								<div class="col-lg-1 hide"></div>                            
							</div>
																					<div class="form-group">
								<label class="col-lg-2 control-label">员工数</label>
								<div class="col-lg-4">    
									<p class="form-p">
										<span style="cursor:pointer;color:#0A0A0A"></span><a href="javascript:void(0);" class="fa fa-pencil pencil-size field-edit hide"></a>
									</p>
								</div>
								<div class="col-lg-3 hide">
									&nbsp;&nbsp;&nbsp; &nbsp; <div class="radio radio-info radio-inline"><input name="no_of_employees" id="no_of_employees" value="10人以下" type="radio"><label for="no_of_employees">10人以下</label></div> &nbsp; <div class="radio radio-info radio-inline"><input name="no_of_employees" id="no_of_employees1" value="10--20人" type="radio"><label for="no_of_employees1">10--20人</label></div> &nbsp; <div class="radio radio-info radio-inline"><input name="no_of_employees" id="no_of_employees2" value="20-50人" type="radio"><label for="no_of_employees2">20-50人</label></div> &nbsp; <div class="radio radio-info radio-inline"><input name="no_of_employees" id="no_of_employees3" value="50人以上" type="radio"><label for="no_of_employees3">50人以上</label></div><span id="no_of_employeesTip" style="float: left;line-height: 32px;margin-left: 5%;color:red;"></span>								</div>
								<div class="col-lg-1 hide"></div>                            
																						<label class="col-lg-2 control-label">备注</label>
								<div class="col-lg-4">
																		<p class="form-p" style="word-break:break-all;height:auto;">
										<span style="cursor:pointer;color:#333333">流程是否合适</span><a href="javascript:void(0);" class="fa fa-pencil pencil-size field-edit hide"></a>
									</p>
																	</div>
								<div class="col-lg-3 hide">
									<textarea rows="5" class="form-control " id="description" name="description">流程是否合适</textarea><span id="descriptionTip" style="float: left;line-height: 32px;margin-left: 5%;color:red;"></span>								</div>
								<div class="col-lg-1 hide"></div>                            
							</div>
							                    </div>
                </form>
            </div>
            <div class="col-md-3">
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 ">
                <div class="text-right">
                    <a href="javascript:void(0);" id="geng-d">更多&nbsp;<span class="fa fa-sort-amount-asc"></span></a>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="wrapper wrapper-content animated fadeIn" style="padding-top:10px;">
    <div class="row" style="margin: 0">
        <div class="pull-left" style="width:26.222%;margin-bottom: 10px;">
            <div class="ibox-title clearfix">
                <div class="detail-title clearfix">
                    <div class="pull-left all-inline">
                        <img src="img/chanpxx.png" alt="">&nbsp;
                        <div class="text-tag" style="top: 2px;color: #676A6C;">
                            <span>相关商机</span>
                        </div>
                    </div>
                    <div class="pull-left text-center" style="margin-left: 20px;">
                        <input id="maodian" type="hidden">
                        <button class="btn btn-outline btn-success all_business_a" id="customer-relation" onclick="customer_relation(this);" style="border-radius: 6px;width: 100%;line-height:30px;padding: 0px;width: 80px;" type="button">全部</button>
                    </div>
					<!-- 分享不显示 -->
						<div class="pull-right detail-right">
							<span rel="742">
								<a data-toggle="tooltip" data-placement="top" class="addproduct" rel="742" title="" data-original-title="添加商机" href="javascript:void(0);">
										<span class="plus-num">+</span>
									</a>							</span>
						</div>                </div>
            </div>
            <div class="ibox-content" style="padding: 0px 0px 20px;border-top:none;min-height:500px;">
                <div class="product-list" style="cursor: pointer; background-color: rgb(255, 255, 255);" rel="509">
                        <!--竖线 -->
                        <div class="row ping-p">
                            <div class="col-md-1">
                                <div class="pull-left color-a">
                                    <a href="javascript:void(0);" rel="509" style="font-size: 13px" class="product-a"><i class="fa fa-bookmark"></i></a>
                                </div>
                            </div>
                            <div class="col-md-10">
                                <p>2018-03-14 18:29</p>
                            </div>
    						<div class="col-md-1">
                                <div class="pull-right social-action dropdown">
                                    <span class="dropdown-toggle" data-toggle="dropdown">
                                        <i class="fa fa-angle-down" style="font-size:20px;cursor:pointer"></i>
                                    </span>
                                    <ul class="dropdown-menu m-t-xs">
                                        <li>
                                            <a href="http://demo2.5kcrm.net/index.php?m=business&amp;a=view&amp;id=509">详情</a>
                                            <a href="http://demo2.5kcrm.net/index.php?m=business&amp;a=edit&amp;id=509">编辑</a>
                                            <a href="javascript:void(0);" class="business_delete" rel="509">删除</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>                        </div>
                        <div class="row ping-p">
                            <div class="col-md-3">
                                <p>商机名称</p>
                            </div>
                            <div class="col-md-7">
                                <p class="p-333">Mccc_20180314-0509</p>
                            </div>
                            <div class="col-md-1"></div>
                        </div>
                        <div class="row ping-p edit-show">
                            <!-- <div class="col-md-1">
                                <span class="sq-tag"></span>
                            </div> -->
                            <div class="col-md-3">
                                <p>相关产品</p>
                            </div>
                            <div class="col-md-7">
                                <p class="p-333">5469、...（3）</p>
                            </div>
    						<div class="col-md-1 color-a-edit" style="font-size: 15px">
                                <a style="display:none" rel="509" class="editproduct" href="javascript:void(0);"><i class="fa fa-pencil"></i></a>
                            </div>                        </div>
                        <div class="row ping-p">
                            <!-- <div class="col-md-1"></div> -->
                            <div class="col-md-3">
                                <p>营销阶段</p>
                            </div>
                            <div class="col-md-4">
                                <div class="progress progress-mini" style="cursor:pointer;background-color: #DDD;" data-toggle="tooltip" data-placement="top" data-original-title="项目落地">
                                    <div class="progress-bar progress-bar-success" style="width: 100%;"></div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <p class="p-333">项目落地</p>
                            </div>
    						<div class="col-md-1 color-a" style="font-size: 15px">
                                                                            <a href="javascript:void(0);" data-toggle="tooltip" data-placement="right" data-original-title="推进进度" rel="509" class="advance">
                                            <i class="fa fa-forward"></i>
                                        </a>                                </div>                        </div>
                    </div>            </div>
        </div>
        <div class="pull-right" style="width:72.7%;margin-bottom: 10px;">
            <div class="tabs-container ibox-content product-content" style="min-height:608px;"><style>
	.body_border tr td{border:1px solid #e7eaec}
	thead tr td{background:#F9FaFC}
    .conent0{line-height: 30px;}
    .allmap{width:100%;height:150px;display:none;}
    .business_table tbody tr td{border:none;padding:2px;}
	/*活动*/
    .ai-yellow{
        background-color: rgba(254,215,32,.7);
    }
    .ai-blue{
        background-color: rgba(43,161,225,.7);
    }
    .ai-green{
        background-color: rgba(121,196,85,.7);
    }
    .ai-red{
        background-color:rgba(230,88,69,.7);
    }
    .ai-orange{
       background-color:rgba(244,131,61,.7); 
    }
    .ai-purple{
        background-color:rgba(166,58,150,.7);
    }
    .ai-dark-blue{
        background-color: rgba(58,153,166,.7);
    }
    #vertical-timeline::before{
        width:0px !important;
    }

    .addMember-remove{
        position: relative;
        margin-right:-10px;
        top: -13px;
        right: 13px;
        display:none;
        font-size: 10px;
        line-height: 1;
        color: #fa7a7a;
        cursor: pointer;
        background-color: #fff;
        border-radius: 50%;
    }
</style>
<ul class="nav nav-tabs" id="left_list">
    <li class="active">
        <a href="#tab1" data-toggle="tab" type="tab1">跟进记录</a>
    </li>
	<li class="">
        <a href="#tab2" data-toggle="tab" type="tab2">产品详情</a>
    </li>
    <li class="">
        <a href="#tab3" data-toggle="tab" type="tab3">联系人</a>
    </li>
    <li class="">
        <a href="#tab5" data-toggle="tab" type="tab5">销售合同</a>
    </li>
    <li class="">
        <a href="#tab6" data-toggle="tab" type="tab6">财务</a>
    </li>	<li class="">
        <a href="#tab9" data-toggle="tab" type="tab9">日程</a>
    </li>
    <li class="">
	        <a href="#tab8" data-toggle="tab" type="tab8">操作记录</a>
	    </li>    <li class="">
        <a href="#tab7" data-toggle="tab" type="tab7">附件</a>
    </li>
	
   <!--  <div class="nav pull-right">
            </div> -->
</ul>
<div class="tab-content">
    <div id="tab1" class="tab-pane fade in active">
        <div class="panel-body">
            <div id="form-div">
                    <form id="add-form" action="/index.php?m=log&amp;a=add" method="post">
    					<input name="r" value="rBusinessLog" type="hidden">
    					<input name="module" value="business" type="hidden"> 
    					<input id="business_id" name="id" value="" type="hidden"> 
    					<input name="role_id" value="1" type="hidden">
    					<textarea name="content" placeholder="添加跟进记录" id="log-text" style="resize:none;" class="form-control" cols="30" rows="2"></textarea>
                        <table class="table business_table" style="border:none;margin-top:15px;display:none;" id="business_table">
                            <tbody><tr>
                                <td class="tdleft" style="width:120px;">跟进类型：</td>
                                <td style="width:120px;">
                                    <select name="status_id" id="status_id" class="form-control" onchange="selectStatus()">
                                        <option value="" selected="selected">--请选择--</option>
                                        <option value="1">电话</option><option value="2">邮件</option><option value="3">信息</option><option value="4">面谈</option><option value="5">样品测试</option><option value="6">QQ</option><option value="7">微信</option>                                    </select>
                                </td>
                                <td>&nbsp;&nbsp;</td>
                                <td class="tdleft" style="width:120px;">快捷添加：</td>
                                <td style="width:300px;">
                                    <select id="replay_list" class="form-control select2 select2-hidden-accessible" onchange="selectReply()" style="width:80%;float:left;" tabindex="-1" aria-hidden="true">
                                        <option value="" selected="selected">--请选择--</option>
                                        <option value="通话" rel="6">通话</option><option value="日常拜访" rel="3">日常拜访</option><option value="有意购买" rel="1">有意购买</option><option value="CES" rel="5">CES</option><option value="通话" rel="1">通话</option><option value="了解一下" rel="2">了解一下</option><option value="吃饭" rel="4">吃饭</option><option value="今天 联系了一下" rel="1">今天 联系了一下</option><option value="789" rel="1">789</option><option value="无响应" rel="1">无响应</option><option value="已进行现场检查，已通过" rel="4">已进行现场检查，已通过</option><option value="无人回复" rel="7">无人回复</option><option value="稍微了解一下" rel="7">稍微了解一下</option><option value="大致了解一下" rel="7">大致了解一下</option><option value="全面了解" rel="7">全面了解</option><option value="无人接听" rel="1">无人接听</option><option value="无人回应" rel="3">无人回应</option><option value="了解一下" rel="1">了解一下</option><option value="follow2" rel="2">follow2</option><option value="挂断" rel="1">挂断</option><option value="电话无人接听" rel="1">电话无人接听</option><option value="稍微了解一下" rel="1">稍微了解一下</option><option value="follow2" rel="2">follow2</option><option value="见面拜访，大致了解" rel="4">见面拜访，大致了解</option><option value="电话无人接听" rel="1">电话无人接听</option><option value="随便了解" rel="4">随便了解</option><option value="有意向购买" rel="1">有意向购买</option><option value="了解一下" rel="1">了解一下</option><option value="44552344" rel="2">44552344</option><option value="日常拜访" rel="3">日常拜访</option><option value="有意购买" rel="1">有意购买</option><option value="665655" rel="1">665655</option><option value="想买" rel="1">想买</option><option value="通话" rel="1">通话</option><option value="有意购买" rel="1">有意购买</option><option value="了解一下" rel="2">了解一下</option><option value="吃饭" rel="4">吃饭</option><option value="日常拜访" rel="3">日常拜访</option><option value="今天 联系了一下" rel="1">今天 联系了一下</option><option value="通话" rel="1">通话</option><option value="aaaaaaaaaa" rel="4">aaaaaaaaaa</option><option value="了解一下" rel="1">了解一下</option><option value="各种类型" rel="3">各种类型</option><option value="有意购买" rel="1">有意购买</option><option value="通话" rel="1">通话</option><option value="见面拜访，大致了解" rel="4">见面拜访，大致了解</option><option value="CES" rel="5">CES</option><option value="吃饭" rel="4">吃饭</option><option value="已进行现场检查，已通过" rel="4">已进行现场检查，已通过</option><option value="吃饭" rel="4">吃饭</option><option value="已进行现场检查，

test" rel="4">已进行现场检查，

 . . .</option><option value="有意购买" rel="1">有意购买</option><option value="今天 联系了一下" rel="1">今天 联系了一下</option><option value="【拜访人】 徐主任 
【时 间】2018-03-07 
【地 点】南明区花溪大道苑林星月湾J栋604 浪擎（李海军） 思路由（许罡、范强 【目 的】红林机械厂合同条款沟通。 【内 容】
1、打合同预付款后，10个工作日发货晚，要求2个工作日内发货（纯软件，硬件备货才需要时间）。 
2、合同尾款许总坚持要产品到货并实施完成验收后一个月之内支付。 
3、再次与范总监确认了产品配置清单。不完全是Oracle数据库，有SQL数据库。
4、因此需要提前协调好项目安装实施工程师（原来谈的是孙武剑过来做该项目首次实施）。 
5、最早下周开始实施该项目，待用户付渠道首付款后，渠道才付浪擎的首付款" rel="0">【拜访人】 徐主任 
 . . .</option>                                    </select><span class="select2 select2-container select2-container--default" dir="ltr" style="width: 80%;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-autocomplete="list" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-replay_list-container"><span class="select2-selection__rendered" id="select2-replay_list-container" title="--请选择--">--请选择--</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span></span><span class="dropdown-wrapper" aria-hidden="true"></span></span>&nbsp;&nbsp;
                                    <a href="javascript:void(0)" id="setting_reply_dialog" title="管理快捷跟进模板" style="line-height: 30px;margin-left:10px;"><i class="fa fa-cog" style="color:#999;"></i></a>
                                </td>
                                <td>&nbsp;&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="tdleft" style="width:120px;">下次联系时间：</td>
                                <td style="width:120px;">
                                    <input id="nextstep_time_log" class="form-control Wdate" name="nextstep_time" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm'})" style="width: 170px;" type="text">
                                </td>
                                <td>&nbsp;&nbsp;</td>
                                <td class="tdleft" style="width:120px;">保存为跟进模板：</td>
                                <td style="width:120px;">
                                    <div class="checkbox checkbox-primary">
                                        <input name="type" value="2" type="hidden">
                                        <input name="save_reply" class="select_list" id="save_reply" value="1" type="checkbox">
                                        <label for=""></label>
                                    </div>
                                </td>
                                <td>&nbsp;&nbsp;</td>
                            </tr>
                                                            <tr>
                                    <td class="tdleft" style="width:120px;">关联商机：</td>
                                    <td colspan="5">
                                        <div class="text-left" id="product-radio" style="padding-top:8px;">
                                                                                        <div class="radio radio-info radio-inline" style="margin-left: 10px;">
                                                    <input name="id" class="business_code" id="status_1" code="20180314-0509" value="509" type="radio">
                                                    <label for="status_1">&nbsp;20180314-0509&nbsp;&nbsp;&nbsp;</label>&nbsp;&nbsp;
                                                </div>                                                                                    </div>
                                    </td>
                                </tr>
                                                    </tbody></table>
    					<div>
    						<div class="text-right" id="log-btn" style="padding-top:8px;display:none;"><button class="btn btn-primary" id="add_log" type="button">添加</button>&nbsp;</div><br>
    					</div>
                    </form>
                </div>            <div id="log-list" style="margin-top: 10px;">
                <div class="ibox-content gray-log" log-rel="933">
                        <div class="social-feed-separated clearfix">
                            <div class="social-feed-box">
        						<div class="pull-right social-action dropdown">
                                        <span data-toggle="dropdown" class="dropdown-toggle">
                                            <i style="font-size:20px;cursor:pointer" class="fa fa-angle-down"></i>
                                        </span>
                                        <ul class="dropdown-menu m-t-xs">
                                            <li><a rel="933" href="javascript:void(0);" type="rBusinessLog" onclick="del_confirm(this);">删除</a></li>
                                        </ul>
                                    </div>                                                                    <div class="social-avatar">
                                        <img alt="image" style="width:35px;height:35px;" class="img-circle" src="img/thumb_5aa5ec505c63c2291.png">
                                        <a class="role_info name-colors" rel="1" href="javascript:void(0);">邹总</a>&nbsp;&nbsp;
                                        <span class="text-muted">发布了一条快速记录</span>&nbsp;&nbsp;&nbsp;
                                        <span class="text-muted">2018-03-14 18:30&nbsp;&nbsp;<a title="沟通类型" href="javascript:void(0);">电话</a></span>
                                    </div>
                                    <div class="social-body">
                                        <span style="word-wrap:break-word;line-height: 21px;color: #000;">有意购买</span>
                                        <div class="log-relation"><i class="fa fa-bookmark"></i>&nbsp;<span>相关商机 : 20180314-0509</span></div>                                        <div class="social-avatar" style="padding-top:10px;">
                                                <span class="text-muted pull-right">下次联系时间：2018-03-15 18:30</span>
                                            </div>                                    </div>                            </div>
                        </div>
                    </div>            </div>
        </div>
    </div>
	<div id="tab9" class="tab-pane fade in">
        <div class="panel-body">
            <div class="ibox">
               						<div style="padding-bottom:20px;border-left:1px solid #ccc;margin: 5px 0 0 15px;">
								<i class="fa fa-circle pull-left" style="margin-left:-5px;color:#62a8ea;font-size:12px;"></i>
																<div class="pull-left" style="margin-left:25px;color:#999">
									<div>18:30</div>
									<div>2018/03/15</div>
								</div>
								<div class="pull-left" style="margin-left:25px;color:#999">
									<div style="margin-top:11px;">~</div>
								</div>
								<div class="pull-left" style="margin-left:25px;color:#999">
									<div>23:59</div>
									<div>2018/03/15</div>
								</div> 
								<div class="pull-left" style="margin-left:25px;"><img src="img/5aa5ec505c63c2291.png" style="width:30px;height:30px;border-radius:50px;margin-top:5px;"></div>
								<div class="pull-left" style="margin-left:10px;width:60%">
									<div>邹总 &nbsp;(Mccc_20180314-0509)</div>
									<div>有意购买</div> 
								</div>
								<div style="clear:both"></div>
							</div>            </div> 
        </div>
    </div>
    <div id="tab2" class="tab-pane fade in">
        <div class="panel-body">
            <div class="ibox">
                                <div class="pull-right" style="padding-bottom: 15px;clear: both;"> 
                         
                    </div>
                    <div class="row">
                        <table class="table select-table table-bordered">
                            <thead>
                                <tr style="background-color:#f9fafc;text-align:center;">
                                    <td style="background-color:#f9fafc;padding:14px;color:#999">产品名称</td>
                                    <td style="background-color:#f9fafc;padding:14px;color:#999">价格(元)</td>
                                    <td style="background-color:#f9fafc;padding:14px;color:#999">折扣(%)</td>
                                    <td style="background-color:#f9fafc;padding:14px;color:#999">销售单价(元)</td>
                                    <td style="background-color:#f9fafc;padding:14px;color:#999">数量</td>
                                    <td style="background-color:#f9fafc;padding:14px;color:#999">单位</td>
                                    <td style="background-color:#f9fafc;padding:14px;color:#999">小计</td>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td style="text-align:center;padding:14px;color:#666;border-right: 1px solid #e7eaec;">5469</td>
                                    <td style="text-align:center;padding:14px;color:#666;border-right: 1px solid #e7eaec;">0.00</td>
                                    <td style="text-align:center;padding:14px;color:#666;border-right: 1px solid #e7eaec;">0.00</td>
                                    <td style="text-align:center;padding:14px;color:#666;border-right: 1px solid #e7eaec;">0.00</td>
                                    <td style="text-align:center;padding:14px;color:#666;border-right: 1px solid #e7eaec;">1</td>
                                    <td style="text-align:center;padding:14px;color:#666;border-right: 1px solid #e7eaec;">白银会员</td>
                                    <td style="text-align:center;padding:14px;color:#666">0.00</td>
                                </tr><tr>
                                    <td style="text-align:center;padding:14px;color:#666;border-right: 1px solid #e7eaec;">da的地位</td>
                                    <td style="text-align:center;padding:14px;color:#666;border-right: 1px solid #e7eaec;">0.00</td>
                                    <td style="text-align:center;padding:14px;color:#666;border-right: 1px solid #e7eaec;">0.00</td>
                                    <td style="text-align:center;padding:14px;color:#666;border-right: 1px solid #e7eaec;">0.00</td>
                                    <td style="text-align:center;padding:14px;color:#666;border-right: 1px solid #e7eaec;">1</td>
                                    <td style="text-align:center;padding:14px;color:#666;border-right: 1px solid #e7eaec;">瓶</td>
                                    <td style="text-align:center;padding:14px;color:#666">0.00</td>
                                </tr><tr>
                                    <td style="text-align:center;padding:14px;color:#666;border-right: 1px solid #e7eaec;">1212</td>
                                    <td style="text-align:center;padding:14px;color:#666;border-right: 1px solid #e7eaec;">500.00</td>
                                    <td style="text-align:center;padding:14px;color:#666;border-right: 1px solid #e7eaec;">0.00</td>
                                    <td style="text-align:center;padding:14px;color:#666;border-right: 1px solid #e7eaec;">500.00</td>
                                    <td style="text-align:center;padding:14px;color:#666;border-right: 1px solid #e7eaec;">1</td>
                                    <td style="text-align:center;padding:14px;color:#666;border-right: 1px solid #e7eaec;">个</td>
                                    <td style="text-align:center;padding:14px;color:#666">500.00</td>
                                </tr>                            </tbody>
                        </table>
                        <div style="text-align:center;margin-top:15px;float:right;margin-bottom:15px;clear: both;">
                            <div class="pull-right">销售订单金额(元):<span style="color:#ffd290;">&nbsp;500.00&nbsp;</span></div>&nbsp;&nbsp;
                            <div class="pull-right">整单折扣(%):<span style="color:#999;">&nbsp;0.00&nbsp;</span></div>&nbsp;&nbsp;
                            <div class="pull-right">产品合计(元):<span style="color:#999;">&nbsp;500.00&nbsp;</span></div>&nbsp;&nbsp;
                            <div class="pull-right"><i class="fa fa-bookmark" style="color: #19aa8d;"></i>&nbsp;相关商机:<span style="color:#999;">&nbsp;20180314-0509&nbsp;</span></div>&nbsp;&nbsp;
                        </div>
                    </div>
                    <div class="row" style="height: 10px;border-top: 1px dashed #d3d3d6;margin-top: 10px;"></div>            </div> 
        </div>
    </div>
    <div id="tab3" class="tab-pane fade in">
        <div class="panel-body">
            <div class="ibox">
    			<div class="pull-right" style="padding-bottom: 15px"> 
                        <a class="btn btn-primary btn-sm" rel="742" rel1="" id="rel_contacts" style="display:none" href="javascript:void(0);">关联联系人</a>
                                                    <a class="btn btn-primary btn-sm" href="http://demo2.5kcrm.net/index.php?m=contacts&amp;a=add&amp;redirect=customer&amp;redirect_id=742">添加联系人</a>                    </div>                <div style="text-align:center;color:#E4E4E4;font-size:22px;font-weight:700;padding-top:15px;">
	<img src="img/exclamation_mark.png" style="margin-top:-3px;">&nbsp;&nbsp;暂无数据
</div>
                            </div> 
        </div>
    </div>
	<div id="tab5" class="tab-pane fade in">
        <div class="panel-body">
            <div class="ibox">
			<table class="table select-table table-bordered">
                    <thead>
                        <tr><td style="background:#F9FaFC;text-align:center;color:#999;">合同编号</td>
                        <!-- <td style="background:#F9FaFC;text-align:center;color:#999;">客户名称</td> -->
                        <td style="background:#F9FaFC;text-align:center;color:#999;">到期时间</td>
                        <td style="background:#F9FaFC;text-align:center;color:#999;">合同金额</td>
                        <td style="background:#F9FaFC;text-align:center;color:#999;">开票金额</td>
                        <td style="background:#F9FaFC;text-align:center;color:#999;">签约人</td>
                        <td style="background:#F9FaFC;text-align:center;color:#999;">状态</td>
                        <td style="background:#F9FaFC;text-align:center;color:#999;">商机编号</td>
                    </tr></thead>
                    <tbody class="body_border">
						<tr>
								<td style="text-align:center;"><a href="http://demo2.5kcrm.net/index.php?m=contract&amp;a=view&amp;id=301">aaaa20180314-0301</a></td>
								<!-- <td style="text-align:center;"></td> -->
								<td style="text-align:center;">2018-03-14</td>
                                <td style="text-align:center;">500.00元</td>
								<td style="text-align:center;">元</td>
								<td style="text-align:center;"><a class="role_info" rel="1" href="javascript:void(0)">邹总</a></td>
								<td style="text-align:center;">										<span class="fa fa-circle" style="color:#7CCA4E"></span>&nbsp;&nbsp;&nbsp;通过
									 
								</td>
								<td style="text-align:center;">20180314-0509</td> 
							</tr>                    </tbody>
                </table>
						</div>
		</div>
	</div>
	<div id="tab6" class="tab-pane fade in">
		<div class="panel-body">
			<div class="ibox">
                <div class="pull-right" style="padding-bottom: 15px">
                    <a class="btn btn-primary btn-sm" id="add_invoice" href="javascript:void(0);">添加发票</a>
                                        </div>
    			<table class="table select-table">
        					<thead>
        						<tr>
        							<td style="text-align:center;color:#999;">收款编号</td>
        							<td style="text-align:center;color:#999;">收款时间</td>
        							<td style="text-align:center;color:#999;">收款金额</td>
        							<td style="text-align:center;color:#999;">收款账户</td>
        							<td style="text-align:center;color:#999;">收款人</td>
        							<td style="text-align:center;color:#999;">状态</td>
        						</tr>                           
        					</thead>
        					<tbody class="body_border">
        						<tr>
        								<td style="text-align:center;"><a href="http://demo2.5kcrm.net/index.php?m=finance&amp;a=view&amp;t=receivingorder&amp;id=300">20180314-0300</a></td>
        								<td style="text-align:center;">2018-03-14</td>
        								<td style="text-align:center;">500.00元</td>
        								<td style="text-align:center;">1426366908@qq.com</td>
        								<td style="text-align:center;"><a class="role_info" rel="1" href="javascript:void(0)">邹总</a></td> 
        								<td style="text-align:center;">        										<span class="fa fa-circle" style="color:#F5CA00"></span>&nbsp;&nbsp;&nbsp;待审 
        								</td>
        							</tr>        					</tbody>
        				</table>
                        						</div>
		</div>
	</div>
	<div class="tab-pane fade in" id="tab7">
	    <div class="panel-body">
    		<div class="pull-right">
    				<a href="javascript:void(0);" type="button" class="add_file btn btn-primary" rel="customer"><i class="fa fa-upload"></i>&nbsp;&nbsp;上传</a>
    			</div>			<div style="clear:both;"></div>
		</div>
		<div style="text-align:center;color:#E4E4E4;font-size:22px;font-weight:700;padding-top:15px;">
	<img src="img/exclamation_mark.png" style="margin-top:-3px;">&nbsp;&nbsp;暂无数据
</div>
			</div>
	<div class="tab-pane fade in" id="tab8">
	     <div id="tab-3" class="tab-pane">
			<div id="vertical-timeline" class="vertical-container light-timeline" style="width:100%;">
							</div>
		</div>
	</div>
</div>





<div class="modal inmodal fade" id="addInvoice" aria-hidden="true" aria-labelledby="addInvoice" role="dialog" tabindex="-1" style="overflow:auto; border:1px solid #000000;">
    <div class="modal-dialog modal-md" style="width:700px;">
        <div class="modal-content" id="add_invoice_dialog">

        </div>
    </div>
</div>
<div class="modal inmodal fade" id="editInvoice" aria-hidden="true" aria-labelledby="editInvoice" role="dialog" style="overflow:auto; border:1px solid #000000;">
    <div class="modal-dialog modal-md" style="width:700px;">
        <div class="modal-content" id="edit_invoice_dialog">
            
        </div>
    </div>
</div>

<div class="modal inmodal fade" id="viewInvoice" aria-hidden="true" aria-labelledby="viewInvoice" role="dialog" tabindex="-1" style="overflow:auto; border:1px solid #000000;">
    <div class="modal-dialog modal-md" style="width:700px;">
        <div class="modal-content form-horizontal" id="view_invoice_dialog">
            
        </div>
    </div>
</div>

<script type="text/javascript" src="%E6%82%9F%E7%A9%BACRM2.0%20-%20Powered%20By%20%E6%82%9F%E7%A9%BACRM_files/api"></script>
<link href="css/litebox.css" rel="stylesheet" type="text/css">
<script src="js/litebox.js" type="text/javascript"></script>
<script src="js/images-loaded.js" type="text/javascript"></script>
<script>
    //快捷沟通
    $(".select2").select2();

    $("#dialog-setting_reply").dialog({
        autoOpen: false,
        // modal: true,
        width: 550,
        maxHeight: 450,
        position: ["center",100],
        close:function(){
            selectStatus();//更新
            $(this).html("");
        },
        buttons: {
            "确定": function () {
                $('#status_form1').submit();
                $(this).dialog("close");
            },
            "取消": function () {
                selectStatus();//更新
                $(this).dialog("close");
            }
        }
    });

    $(function(){
        $("#setting_reply_dialog").click(function(){
            $('#dialog-setting_reply').dialog('open');
            $('#dialog-setting_reply').load('/index.php?m=setting&a=replyList');
        });
    })

    function selectStatus(){
        var status_id = $("#status_id option:selected").val();
        var temp = '<option value="">--请选择--</option>';
        $.ajax({
            type:'post',
            url: "/index.php?m=setting&a=getReplyByStatus",
            data: {status_id: status_id},
            async: false,
            success: function (data) {
                $.each(data.data, function(k, v){
                    temp += '<option value="'+v.content+'">'+v.str_content+'</option>';
                });
            },
            dataType: 'json'
        });
        $('#replay_list').html(temp);
    }

    function selectReply(){
        var replay_content = $("#replay_list option:selected").val();
        var status_id = $("#replay_list option:selected").attr('rel');
        //修改跟进类型
        $("#status_id option[value="+status_id+"]").attr('selected',true);
        //判断是否替换
        var log_content = $('#log-text').val();
        if (log_content !== '') {
            swal({
                title: '',
                text: '已填写沟通日志内容，确定要替换吗？',
                type: "warning",
                showCancelButton: true,
                confirmButtonColor: "#DD6B55",
                confirmButtonText: "确认",
                cancelButtonText: "取消",
                closeOnConfirm: true,
                closeOnCancel:  true}, function(isConfirm){
                if (isConfirm) {
                    $('#log-text').val(replay_content);
                } else {
                    return false;
                } 
            });
        } else {
            $('#log-text').val(replay_content);
        }
    }

    $('#log-list').on('click','.map',function(){
        $(this).next('.allmap').slideToggle('show');
        var a =$(this).siblings('.longitude').attr('rel');
        var b =$(this).siblings('.latitude').attr('rel');
        var vals = $(this).next('.allmap').attr('rel');
        var url = "/index.php?m=index&a=gettranslocation"+"&longtitude="+a+"&latitude="+b;
        $.get(url, function(data){
            var x = data.data.x;
            var y = data.data.y;
            setTimeout("mapInit("+y+","+x+","+vals+")",1000);
        })
    });

    function mapInit(x,y,mapID){
        var map = new BMap.Map(mapID);
        var point = new BMap.Point(y, x);
        map.centerAndZoom(point, 15);
        var marker = new BMap.Marker(point);  // 创建标注
        map.addOverlay(marker);               // 将标注添加到地图中
        map.enableScrollWheelZoom(true);
    };
    /**
    * 页面加载时执行Tab start
     */
    $(function(){
        var thisId = window.location.hash;
        var atype = thisId.substr(1);
        // $('#left_list a[type="'+atype+'"]').trigger('click');
        $('#left_list a[type="'+atype+'"]').tab('show');
     });
    /**
    * 页面加载时执行Tab end
     */
    $('#left_list a').click(function (e) {
        // $(this).tab('show');
        var maodian = '#'+$(this).attr('type');
        url_jump(maodian);
		var bid = $('#bid').val();
		if(bid == ''){
			$('#customer-relation').removeClass('all_business');
			$('#customer-relation').addClass('all_business_a');
		}
    });

    function url_jump(maodian){
        $('#maodian').val(maodian);
        var customer_id = "742";
        var module_business_id = $('#module_business_id').val();
        var bid = $('#bid').val();
        if(module_business_id){
            var url = "/index.php?m=business&a=view&id="+module_business_id+maodian;
        }else{
            if(bid){
                var url = "/index.php?m=customer&a=view&id="+customer_id+'&bid='+bid+maodian;
            }else{
                var url = "/index.php?m=customer&a=view&id="+customer_id+maodian;
            }
        }
       
        // $("body").scrollTop(0);
        // window.location.href = 'http://'+window.location.host+url;
        window.history.replaceState({},0,'http://'+window.location.host+url);
    }
    var business_id = "";

    /**
     * 附件 如果是图片时 双击可查看大图
     */
    $('.litebox_file').liteBox({
      revealSpeed: 400,
      background: 'rgba(0,0,0,.8)',
      overlayClose: true,
      escKey: true,
      navKey: true,
      errorMessage: '图片加载失败.'
    });
	$("#dialog-file").dialog({
		autoOpen: false,
		modal: true,
		width: 800,
		maxHeight: 400,
		position: ["center",100],
		buttons: {
			"确定": function () {
				location.reload();
			},
			"取消": function () {
                $(this).html('');//清空缓存
				$(this).dialog("close");
			}
		}
	});
	$(".add_file").click(function(){
        var module = $(this).attr('rel');
        if(module == 'customer'){
            $('#dialog-file').dialog('open');
            $('#dialog-file').load('/index.php?m=file&a=add&r=RCustomerFile&module=customer&id=742');
        }else if(module == 'business'){
            $('#dialog-file').dialog('open');
            $('#dialog-file').load('/index.php?m=file&a=add&r=RBusinessFile&module=business&id=');
        }
	});

    $(".role_info").click(function(){
        $role_id = $(this).attr('rel');
        $('#dialog-role-info').dialog('open');
        $('#dialog-role-info').load('/index.php?m=user&a=dialoginfo&id='+$role_id);
    });
    
    $("#dialog-role-info").dialog({
        autoOpen: false,
        modal: true,
        width: 600,
        maxHeight: 550,
        position: ["center",100]
    });

	$('.business_code').on('click',function(){
		var is_checked = $(this).attr('rel');
		if(is_checked == 1){
			$(this).attr('rel','');
			$(this).prop('checked', false);
		}else{
			$('.business_code').attr('rel','');
			$(this).attr('rel',1);
		}
	});
    /*单选框取消选择*/
    $('#product-radio ins').on('click',function(){
        var checked = $(this).parent().hasClass('hahha');

        if(!checked){
            $(this).parent().addClass('checked');
            $(this).parent().addClass('hahha');
            $(this).prev().prop('checked',true);
        }else{
            $(this).parent().removeClass('checked');
            $(this).parent().removeClass('hahha');
            $(this).prev().prop('checked',false);
        }
    });
    /*关联联系人*/
    $("#dialog-contacts").dialog({
        autoOpen: false,
        modal: true,
        minWidth: 850,
        maxHeight: 600,
        position: ["center",100],
        buttons: {
            "确定": function () {
                var _this = this;
                var contacts_ids = new Array();
                $('.contacts_ch:checked').each(function(k,v){ 
                    contacts_ids.push($(v).val());
                }).val();
                if(contacts_ids.length == 0){
                    alert_crm('请至少选择一个联系人！');
                }else{
                    $.get("/index.php?m=contacts&a=relToBusiness&act_n=1&contacts_id="+contacts_ids+"&business_id="+business_id, {},function(ret){
                        if (ret[0] == 'success') {
                            var temp_business_id = business_id;
                            $('.product-content').html(detail_html);
                            product_detail($('.product-list[rel='+temp_business_id+']').find('.product-a'),"a[href='#tab-3']");
                            $(_this).dialog("close");
                        } else {
                            alert_crm(ret[1]);
                        }
                    })
                    
                }
            },
            "取消": function () {
                $(this).html('');
                $(this).dialog("close");
            }
        },
        close: function() {
        $(this).empty();
        }
    });

    $("#rel_contacts").click(function(){
        $('#dialog-contacts').html('');
        // var customer_id = $(this).attr('rel');
        // var business_id = $(this).attr('rel1');
        $('#dialog-contacts').load('/index.php?m=contacts&a=checklistdialog&id=742'); 
        $('#dialog-contacts').dialog('open');
    });
    //解绑联系人
    $(".not_rel_contacts").click(function(){
        var _this = this;
        swal({
            title: '确定要解除绑定吗？',
            type: "warning",
            showCancelButton: true,
            confirmButtonColor: "#DD6B55",
            confirmButtonText: "确认",
            cancelButtonText: "取消",
            closeOnConfirm: true,
            closeOnCancel:  true}, function(isConfirm){
            if (isConfirm) {
                $.get($(_this).attr('rel'),{},function(ret){
                    if (ret[0] == 'success') {
                        var temp_business_id = business_id;
                        $('.product-content').html(detail_html);
                        product_detail($('.product-list[rel='+temp_business_id+']').find('.product-a'),"a[href='#tab-3']");
                    } else {
                        alert_crm(ret[1]);
                    }
                })
            } else {
                return false;
            } 
        });
    })
    /*跟进记录*/
    function btnHide(){
        $('#log-text').attr('rows',1);
        $('#log-btn').hide();
        $('#business_table').hide();
        $('#log-text').val('');
    }
    $('#log-text').focus(function(){
        $(this).attr('rows',4);
        $('#log-btn').show();
        $('#business_table').show();
        $('#add_log').prop('disabled',false);
    });
    $('#log-text').focusout(function(){
        var code_id = $("input[name='id']:checked").val();
        if($(this).val() == '' && code_id == ''){
            btnHide();
        }
    });
    $('#quxiao').click(function(){
        btnHide();
        return false;
    });
    /*ajax 提交记录*/
    
    $('#add_log').click(function(){
        var log_content = $.trim($('#log-text').val());
        if(log_content == ''){
            alert_crm('沟通日志内容不能为空！');
            return false;
        }
        //跟进类型
        // var status_id = $('#status_id option:selected').val();
        // if (status_id == '') {
        //     alert_crm('跟进类型不能为空！');
        //     $('#add_log').prop('disabled',false);
        // }

        var radio_id = $('#product-radio input:radio:checked').val();
        var code = $('#product-radio input:radio:checked').attr('code');
        var html_code = "<div class='log-relation'><i class='fa fa-bookmark'></i>&nbsp;<span>相关商机:"+code+"</span></div>";
        //console.log(radio_id);
        var log_type = 'rBusinessLog';
        
        var status_name = '';
        if ($('#status_id option:selected').text() !== '--请选择--') {
            status_name = $('#status_id option:selected').text();
        }
        var nextstep_time_log = '';
        if ($('#nextstep_time_log').val() !== '') {
            nextstep_time_log = $('#nextstep_time_log').val();
        }
        
        if(radio_id == null || radio_id == 0){
            var html_code = '';
            $("#business_id").val(business_id);

            if(business_id == null || business_id == 0){
                $("[name='r']").val('RCustomerLog');
                $("[name='module']").val('customer');
                $("#business_id").val("742");
                log_type = 'rCustomerLog';
            }
        }

        $(this).prop('disabled',true);
        $.post("/index.php?m=log&a=add", $("#add-form").serialize(), function(data){
            if(data.status == 1){
                var content = $('#log-text').val().replace('&nbsp','&NBSP');
                var log_html = "<div class='ibox-content gray-bg' log-rel='"+data.data.log_id+"' style='margin-bottom: 18px'><div class='social-feed-separated clearfix'><div class='social-feed-box'><div class='pull-right social-action dropdown'><span data-toggle='dropdown' class='dropdown-toggle'><i style='font-size:20px;cursor:pointer' class='fa fa-angle-down'></i></span><ul class='dropdown-menu m-t-xs' ><li><a  rel='"+data.data.log_id+"' href='javascript:void(0);' type='"+log_type+"' onclick='del_confirm(this);'>删除</a></li></ul></div><div class='social-avatar'><img alt='image' style='width:35px;height:35px;' class='img-circle' src='"+data.data.owner.thumb_path+"'><a class='role_info name-colors'  rel='"+data.data.owner.role_id+"' href='javascript:void(0)'>"+data.data.owner.full_name+"</a>&nbsp;&nbsp;<span class='text-muted'>添加了一条快速记录</span>&nbsp;&nbsp;<span class='text-muted' >"+data.data.date+"&nbsp;&nbsp;<a title='沟通类型' href='javascript:void(0);'>"+status_name+"</a></span></div><div class='social-body'><span style='word-wrap:break-word;line-height: 21px;color: #000;'>"+content+"</span>"+html_code+"</div>";
                if (nextstep_time_log !== '1970-01-01 08:00') {
                    log_html += "<div class='social-avatar' style='padding-top:10px;''><span class='text-muted pull-right'>下次联系时间："+nextstep_time_log+"</span></div>";
                }
                log_html += "</div></div></div>";

                $('#log-list').prepend(log_html);
                btnHide();
            }else{
                alert_crm('添加失败, 请重试');
            }
            $("[name='r']").val('rBusinessLog');
            $("[name='module']").val('business');
            $("#business_id").val(business_id);
        });
    });
    /*删除日志*/
    function del_confirm(e){
        swal({
            title: "确定要删除沟通日志吗？",
            text: "删除后将无法恢复，请谨慎操作！",
            type: "warning",   
            showCancelButton: true,   
            confirmButtonColor: "#DD6B55",   
            confirmButtonText: "是的，我要删除！",
            cancelButtonText:'让我再考虑一下…',
            closeOnConfirm:false,
            closeOnCancel:false
        },
        function(isConfirm){
            if (isConfirm) {
                var log_id = $(e).attr('rel');
                var type = $(e).attr('type');
                $.get("/index.php?m=log&a=delete", {r:type, id:log_id}, function(data){
                    if(data != 0){
                        swal({
                            title: "删除成功！",
                            text: "",
                            type: "success"
                        });
                        $("[log-rel='"+log_id+"']").remove();
                    }else{
                        swal({
                            title: "操作失败！",
                            text:data.info,
                            type: "error"
                        })
                        return false;
                    }
                });
            } else {
                swal("已取消","您取消了删除操作！","error");
            }
        });
    };
    //删除联系人
    $('.del_contacts').click(function(){
        var contacts_id = $(this).attr('rel');
        var type = $(this).attr('rel1');
        var customer_id = $(this).attr('rel2');
        swal({
            title: "您确定要删除联系人吗？",
            text: "删除后将无法恢复，请谨慎操作！",
            type: "warning",   
            showCancelButton: true,   
            confirmButtonColor: "#DD6B55",   
            confirmButtonText: "是的，我要删除！",
            cancelButtonText:'让我再考虑一下…',
            closeOnConfirm:false,
            closeOnCancel:false
        },
        function(isConfirm){
            if (isConfirm) {
                if(type == 'mdelete'){
                    //删除首要联系人
                    $.ajax({
                        type:'get',
                        url: "/index.php?m=contacts&a=mdelete&r=rContactsCustomer&module_id="+customer_id+'&id='+contacts_id,
                        async: false,
                        success: function (data) {
                            if (data.status == 1) {
                                swal("删除成功！", "您已经永久删除了信息！", "success");
                                location.reload();
                            }else{
                                swal({
                                    title: "操作失败！",
                                    text:data.info,
                                    type: "error"
                                })
                                return false;
                            }
                        },
                        dataType: 'json'
                    });
                }else{
                    $.ajax({
                        type:'get',
                        url: "/index.php?m=contacts&a=delete&id="+contacts_id,
                        async: false,
                        success: function (data) {
                            if (data.status == 1) {
                                swal("删除成功！", "您已经永久删除了信息！", "success");
                                location.reload();
                            }else{
                                swal({
                                    title: "操作失败！",
                                    text:data.info,
                                    type: "error"
                                })
                                return false;
                            }
                        },
                        dataType: 'json'
                    });
                }
            } else {
                swal("已取消","您取消了删除操作！","error");
            }
        });
    });
    //删除附件
    $('.file_delete').click(function(){
        var file_id = $(this).attr('rel');
        swal({
            title: "您确定要删除附件信息吗？",
            text: "删除后将无法恢复，请谨慎操作！",
            type: "warning",   
            showCancelButton: true,   
            confirmButtonColor: "#DD6B55",   
            confirmButtonText: "是的，我要删除！",
            cancelButtonText:'让我再考虑一下…',
            closeOnConfirm:false,
            closeOnCancel:false
        },
        function(isConfirm){
            if (isConfirm) {
                $.ajax({
                    type:'get',
                    url: "/index.php?m=file&a=delete&r=RCustomerFile&id="+file_id,
                    async: false,
                    success: function (data) {
                        if (data.status == 1) {
                            swal("删除成功！", "您已经永久删除了信息！", "success");
                            location.reload();
                        }else{
                            swal({
                                title: "操作失败！",
                                text:data.info,
                                type: "error"
                            })
                            return false;
                        }
                    },
                    dataType: 'json'
                });
            } else {
                swal("已取消","您取消了删除操作！","error");
            }
        });
    });

    $(".editproduct_view").click(function(){
    	var business_id = $(this).attr('rel');
    	var customer_id = "";
    	$('#dialog-editproduct').dialog('open');
    	$('#dialog-editproduct').load('/index.php?m=product&a=mutildialog_product&business_id='+business_id);
    });

    //发票
    $('#add_invoice').click(function(){
        var customer_id = "742";
        $('#addInvoice').modal('show');
        var url = "/index.php?m=invoice&a=addData&customer_id="+customer_id;
        $('#add_invoice_dialog').load(url);
    });
    $('#view_invoice').click(function(){
        var invoice_id = $(this).attr('rel');
        $('#viewInvoice').modal('show');
        var url = "/index.php?m=invoice&a=viewData&invoice_id="+invoice_id;
        $('#view_invoice_dialog').load(url);
    });
    
</script></div>
        </div>
    </div>
</div>
<input id="share_num" value="" type="hidden">


<link href="css/litebox.css" rel="stylesheet" type="text/css">
<script src="js/litebox.js" type="text/javascript"></script>
<script src="js/images-loaded.js" type="text/javascript"></script>





<script type="text/javascript" language="javascript"> 
//客户转移
$("#transfer_name").click(function(){
	var id_array = new Array();
	id_array.push($(this).attr('rel'));
	if(id_array.length == 0){
		alert("您没有选中任何客户!");
	}else{
		var customer_ids = id_array.join(",");
		$('#dialog-transform').dialog('open');
		$('#dialog-transform').load("/index.php?m=customer&a=transfer_edit","customer_id="+customer_ids);
	}
});
$("#dialog-transform").dialog({
    autoOpen: false,
	width: 530,
	maxHeight: 600,
	position: ["center",100],
	buttons: {
		"确认转移": function () {
			$('#form_transfer').submit();
			$(this).dialog("close");
		},
		"取消": function () {
			$(this).dialog("close");
		}
	}
});
//共享列表
$("#share_list").click(function(){
    var customer_id = $(this).attr('rel');
    $('#dialog-share-list').load('/index.php?m=customer&a=share_list&customer_id='+customer_id); 
    $('#dialog-share-list').dialog('open');
});
$("#dialog-share-list").dialog({
    autoOpen: false,
    modal: true,
    minWidth: 700,
    maxHeight: 500,
    position: ["center",100],
	buttons: {
        "关闭": function () {
            $(this).dialog("close");
        }
    }
});

var customer_status = $('#customer_status').val();
if(customer_status == '已成交客户'){
	$('#customer_status').attr('disabled',true);
}
/**
 * 如果是图片时 双击可查看大图
 */
$('.litebox_file').liteBox({
    revealSpeed: 400,
    background: 'rgba(0,0,0,.8)',
    overlayClose: true,
    escKey: true,
    navKey: true,
    errorMessage: '图片加载失败.'
});
$(document).ready(function(){
    /*默认的 星星下拉框*/
    $('#edit-grade').val("5");

    /* 非ajax 提交后跳转 到指定的产品 */
    var business_id ="";
    business_id = Number(business_id);
    if(business_id >= 1){
        $(".product-list[rel="+business_id+"]").trigger('click'); 
    }else{
        $('#customer-relation').trigger('click');
    }

});
/*添加商机*/
$("#dialog-addbusiness").dialog({
    autoOpen: false,
    modal: true,
    minWidth: 850,
    maxHeight: 500,
    position: ["center",100],
    buttons: {
        "确定": function () {
            if(typeof($('.bus_product').val()) == 'undefined' ||  $('.bus_product').val() == '0'){
                alert_crm('请至少选择一个产品！');    
            }else{
                $('#addbusiness_form').submit();
                $(this).dialog("close");
            }
        },
        "取消": function () {
            $(this).dialog("close");
        }
    },
    close: function() {
        $(this).empty();
    }
});
/*选择产品*/
$("#dialog-addproduct").dialog({
    autoOpen: false,
    modal: true,
    minWidth: 850,
    maxHeight: 500,
    position: ["center",100],
    buttons: {
        "确定": function () {
            var is_product = $('.cproduct_id').val();
            if(is_product == 'undefined' || is_product == '0'){
                alert_crm('请至少选择一个产品！');
            }else{
                $('#addbusiness_form').submit();
                $(this).dialog("close");
            }
        },
        "取消": function () {
            $(this).html('');
            $(this).dialog("close");
        }
    },
    close: function() {
    $(this).empty();
    }
});
$(".addproduct").click(function(){
    var customer_id = $(this).attr('rel');
    $('#dialog-addproduct').load('/index.php?m=product&a=mutildialog_product&customer_id='+customer_id); 
    $('#dialog-addproduct').dialog('open');
});

$(".editproduct").click(function(){
    var business_id = $(this).attr('rel');
    $('#dialog-editproduct').dialog('open');
    $('#dialog-editproduct').load('/index.php?m=product&a=mutildialog_product&business_id='+business_id);
});
/*编辑商机*/
$("#dialog-editproduct").dialog({
    autoOpen: false,
    modal: true,
    minWidth: 850,
    maxHeight: 400,
    position: ["center",100],
    buttons: {
        "确定": function () {
            var is_product = $('.cproduct_id').val();
            if(is_product == 'undefined' || is_product == '0'){
                alert_crm('请至少选择一个产品！');
            }else{
                $('#addbusiness_form').submit();
                $(this).dialog("close");
            }
        },
        "取消": function () {
            $(this).html('');
            $(this).dialog("close");
        }
    },
    close: function() {
        /*关闭清空数据*/
        $(this).empty();
    }
});

/*修改商机的 鼠标放上 效果*/
$('.edit-show').mouseover(function(){
	$(this).find('a').show();
});

$('.edit-show').mouseout(function(){
    $(this).find('a').hide();
});

/*营销阶段*/
$("#dialog-advance").dialog({
    autoOpen: false,
    modal: true,
    minWidth: 320,
    maxHeight: 800,
    position: ["center",100]
});
$(".advance").click(function(){
    var business_id = $(this).attr('rel');
    $('#dialog-advance').dialog('open');
    $('#dialog-advance').load('/index.php?m=business&a=advance&id='+business_id);
});

/* "更多" 的收起 展开*/
$('#geng-d').click(function(){
    var rel = $('#list-show').attr('rel');
    var html = '';
    if(rel == 'false'){
        $('#list-show').attr('rel', 'true');
        $('#list-show').slideToggle("3000");
        html = '收起&nbsp;<span class="fa fa-sort-amount-desc"></span>';
        $(this).html(html);
    }else{
        $('#list-show').attr('rel', 'false');
		$('#list-show').slideToggle("3000");
        html = '展开&nbsp;<span class="fa fa-sort-amount-asc"></span>';
        $(this).html(html);
        
    }
});

/*添加商机的 提示框*/
$('[data-toggle="tooltip"]').tooltip({html:true});


/*客户修改 鼠标放上显示编辑*/
$('.form-p').mouseover(function(){
	var content = $('#content').val();
	if(content != 'resource'){
		$(this).find('a').removeClass('hide');
	}
});

$('.form-p').mouseout(function(){
    $(this).find('a').addClass('hide');
});
/*product list 点击效果*/
$('.product-list').click(function(){
    // var rel = $(this).find('.product-a');
    var rel = $(this);
    var business_id = rel.attr('rel');
    $('#bid').val(business_id);
    var customer_id = "742";
    var tab = window.location.hash;
    product_detail(rel);

    //url追加business_id
    var title = '';
    var url = './index.php?m=customer&a=view&id='+customer_id+'&bid='+business_id+tab;
    var state = {
        title: title,
        url: url
    };
    history.pushState(state, '', './index.php?m=customer&a=view&id='+customer_id+'&bid='+business_id+tab);
});

// 商机删除
$('.business_delete').click(function(){
    var business_id = $(this).attr('rel');
    swal({
        title: "您确定要删除这条商机吗？",
        text: "删除后将无法恢复，请谨慎操作！",
        type: "warning",   
        showCancelButton: true,   
        confirmButtonColor: "#DD6B55",   
        confirmButtonText: "是的，我要删除！",
        cancelButtonText:'让我再考虑一下…',
        closeOnConfirm:false,
        closeOnCancel:false
    },
    function(isConfirm){
        if (isConfirm) {
            $.ajax({
                type:'get',
                url: "/index.php?m=business&a=delete&id="+business_id,
                async: false,
                success: function (data) {
                    if (data.status == 1) {
                        swal("删除成功！", "您已经永久删除了信息！", "success");
                        location.reload();
                    }else{
                        swal({
                            title: "操作失败！",
                            text:data.info,
                            type: "error"
                        })
                        return false;
                    }
                },
                dataType: 'json'
            });
        } else {
            swal("已取消","您取消了删除操作！","error");
        }
    });
});

/*客户修改的逻辑
* 分为 多个下拉框 时间 单选框 复选框, 
* 需要优化的是:
* 多个下拉框 单选框 复选框 的提交是根据"form-group 捕捉的, 体验不好
* ajax提交可以封装成一个函数 
* 
*/
$('.form-p').click(function(){
    var ori_name = null;
    var ori_val = null;
    var name = null;
    var val = null;
    var cus_id = "742";
    var con_id = $('#contacts_id').val();
    var col_4 = $(this).parent();
    var input_div = col_4.next();
    var input = col_4.next().children();
    var sel = input_div.find("[input_type='address']");
    var chec = input_div.find("input[type='checkbox']");
    var radio = input_div.find("input[type='radio']");
    var time = input_div.find("input[input_type='time']");
    var no_click = null
    if(sel.length>2 || chec.length || radio.length || time.length){
        col_4.hide();
        input_div.removeClass('hide');
        input_div.next().removeClass('hide');
        /*复选框*/
        if(chec.length){
            no_click = chec.parent().parent().parent().attr('no_click','1');
            $('.form-group').bind('click', function(){
                var ret = $(this).attr('no_click');
                if(ret){

                }else{
                    var check_val = '';
                    input_div.find("input[type='checkbox']:checked").each(function(){
                        check_val += $(this).val()+',';
                    });
                    ori_name = chec.attr('name');
                    ori_val = col_4.find('span').text();
                    $.post("/index.php?m=customer&a=edit_ajax", { field: ori_name, val: check_val, customer_id: cus_id, contacts_id: con_id }, function(data){
                        if(data.status == 1){
                            col_4.find('span').text(check_val);
                            col_4.show();
                            input_div.addClass('hide');
                            input_div.next().addClass('hide');
                        }else{
                            input.val(ori_val);
                            col_4.show();
                            input_div.addClass('hide');
                            input_div.next().addClass('hide');
                            alert_crm(data.data);
                        }
                        if(data.data != '' && con_id == ''){
                            $('#contacts_id').val(data.data);
                        }
                        $('.form-group').unbind();
                        chec.parent().parent().parent().removeAttr('no_click');
                    } );
                }
            });
        } else if(radio.length){
            /*单选框*/
            no_click = radio.parent().parent().parent().attr('no_click','1');
            ori_name = radio.attr('name');
            ori_val = radio.filter(':checked').val();
            $('.form-group').bind('click', function(){
                var ret = $(this).attr('no_click');
                if(!ret){
                    val = radio.filter(':checked').val();
                    if(ori_val != val){
                        $.post("/index.php?m=customer&a=edit_ajax", { field: ori_name, val: val, customer_id: cus_id, contacts_id: con_id }, function(data){
                            if(data.status == 1){
                                col_4.find('span').text(val);
                                col_4.show();
                                input_div.addClass('hide');
                                input_div.next().addClass('hide');
                            }else{
                                input.val(ori_val);
                                col_4.show();
                                input_div.addClass('hide');
                                input_div.next().addClass('hide');
                                alert_crm(data.data);
                            }
                            if(data.data != '' && con_id == ''){
                                $('#contacts_id').val(data.data);
                            }
                            $('.form-group').unbind();
                            radio.parent().parent().parent().removeAttr('no_click');
                        } );
                    }else{
                        col_4.show();
                        input_div.addClass('hide');
                        input_div.next().addClass('hide');
                    }
                }
            });
        } else if(time.length){
            /*时间*/
            no_click = time.parent().parent().attr('no_click','1');
            ori_name = time.attr('name');
            ori_val = time.val();
            $('.form-group').bind('click', function(){
                var ret = $(this).attr('no_click');
                if(!ret){
                    val = time.val();
                    if(ori_val != val){
                        var new_val = Date.parse(new Date(val));
                        new_val = new_val / 1000;
                        $.post("/index.php?m=customer&a=edit_ajax", { field: ori_name, val: new_val, customer_id: cus_id, contacts_id: con_id }, function(data){
                            if(data.status == 1){
                                col_4.find('span').text(val);
                                col_4.show();
                                input_div.addClass('hide');
                                input_div.next().addClass('hide');
                            }else{
                                input.val(ori_val);
                                col_4.show();
                                input_div.addClass('hide');
                                input_div.next().addClass('hide');
                                alert_crm($data.data);
                            }
                            $('.form-group').unbind();
                            $('.form-group').removeAttr('no_click');
                        } );
                    }else{
                        col_4.show();
                        input_div.addClass('hide');
                        input_div.next().addClass('hide');
                    }
                }
            });
        } else if(sel.length>2){
            /*多个单选框*/
            no_click = sel.parent().parent().attr('no_click','1');
            ori_name = sel.attr('name');
            ori_val = col_4.find('span').text();
            $('.form-group').bind('click', function(){
                var ret = $(this).attr('no_click');
                if(ret){

                }else{
                    var sel_val = '';
                    sel.each(function(){
                        sel_val += $(this).val()+',';
                    });
                    $.post("/index.php?m=customer&a=edit_ajax", { field: ori_name, val: sel_val, customer_id: cus_id, contacts_id: con_id }, function(data){
                        if(data.status == 1){
                            col_4.find('span').text(sel_val);
                            col_4.show();
                            input_div.addClass('hide');
                            input_div.next().addClass('hide');
                        }else{
                            input.val(ori_val);
                            col_4.show();
                            input_div.addClass('hide');
                            input_div.next().addClass('hide');
                            alert_crm(data.data);
                        }
                        if(data.data != '' && con_id == ''){
                            $('#contacts_id').val(data.data);
                        }
                        $('.form-group').unbind();
                        sel.parent().parent().removeAttr('no_click');
                    } );
                }
            });
        }
        return false;
    }
    ori_val = input.val();
    ori_name = input.attr('name');
    col_4.hide();
    input_div.removeClass('hide');
    input_div.next().removeClass('hide');
    input.focus();
    $(input).focusout(function(){
        /* input框 */
        val = input.val().trim();
        if(ori_val != val){
            $.post("/index.php?m=customer&a=edit_ajax", { field: ori_name, val: val, customer_id: cus_id, contacts_id: con_id }, function(data){
                if(data.status == 1){
                    if(ori_name == 'grade'){
                        /*星星*/
                        var star_html = '';
                        for (var i=0;i<val;i++){
                            star_html += '<i class="fa fa-star star-orange"></i>&nbsp;';
                        }
                        for (var i=0;i<5-val;i++){
                            star_html += '<i class="fa fa-star"></i>&nbsp;';
                        }
                        col_4.find('span').html(star_html);
                    }else{
                        input.val(val);
                        col_4.find('span').text(val);
                    }
                    if(ori_name == 'name'){
                        $('.h2-customer-name').text(val);
                    }
                    col_4.show();
                    input_div.addClass('hide');
                    input_div.next().addClass('hide');
                }else{
                    input.val(ori_val);
                    col_4.show();
                    input_div.addClass('hide');
                    input_div.next().addClass('hide');
                    alert_crm(data.data);
                }
                if(data.data != '' && (con_id == '' || con_id == 0)){
                    $('#contacts_id').val(data.data);
                }
                $(input).unbind();
            });
        }else{
            col_4.show();
            input_div.addClass('hide');
            input_div.next().addClass('hide');
        }
    });
});

/*商机详情 加载的圈圈效果*/
var detail_html = '<div class="spiner-example">\
						<div class="sk-spinner sk-spinner-fading-circle">\
							<div class="sk-circle1 sk-circle"></div>\
							<div class="sk-circle2 sk-circle"></div>\
							<div class="sk-circle3 sk-circle"></div>\
							<div class="sk-circle4 sk-circle"></div>\
							<div class="sk-circle5 sk-circle"></div>\
							<div class="sk-circle6 sk-circle"></div>\
							<div class="sk-circle7 sk-circle"></div>\
							<div class="sk-circle8 sk-circle"></div>\
							<div class="sk-circle9 sk-circle"></div>\
							<div class="sk-circle10 sk-circle"></div>\
							<div class="sk-circle11 sk-circle"></div>\
							<div class="sk-circle12 sk-circle"></div>\
						</div>\
					</div>';
/*单个商机*///obj为要打开的标签页
var content_id = 0;
function product_detail(e,obj){
    var business_id = $(e).attr('rel');
	var content = $('#content').val();
	var share_num = $('#share_num').val();
    if (content_id == business_id) {
        return false;
    }
    content_id = business_id;
    $('.product-list').removeClass('product-a-line');
    $('#customer-relation').removeClass('all_business_a');
    $('#customer-relation').addClass('all_business');
    $(e).addClass('product-a-line');
    $('.product-list').css('background-color','#fff');
    $(e).css('background-color','#f3f3f4');
    $('.product-content').html(detail_html);
    $('.product-content').load("/index.php?m=business&a=view_ajax", {id: business_id,type:1,content:content,share_num:share_num}, function(){
        $(obj).trigger('click');
    });
}
/*所有商机*///obj为要打开的标签页
function customer_relation(e,obj){
    var maodian = $('#maodian').val();
	var share_num = $('#share_num').val();
    customer_url_jump(maodian);
    $('.product-a').removeClass('product-a-color');
    $('.product-list').removeClass('product-a-line');
    $('.product-list').css('background-color','#fff');
    var customer_id = "742";
	var content = $('#content').val();
    content_id = 0;
    $('.product-content').html(detail_html);
    $('.product-content').load("/index.php?m=business&a=view_ajax", {customer_id: customer_id,content:content,share_num:share_num}, function(){
        $(obj).trigger('click');
    });
}
function customer_url_jump(maodian){
    var content = "";
    var customer_id = "742";
    var url = "/index.php?m=customer&a=view&id="+customer_id+maodian+'&content='+content;
    $('#bid').val('');
    window.history.replaceState({},0,'http://'+window.location.host+url);
}

$("#remind").click(function(){
    var customer_id = "742";
    $('#dialog-remind').dialog('open');
    $('#dialog-remind').load("/index.php?m=remind&a=add&module=customer&module_id="+customer_id);
});

$("#remind_view").click(function(){
    var customer_id = "742";
    $('#dialog-remind_view').dialog('open');
    $('#dialog-remind_view').load("/index.php?m=remind&a=view&module=customer&module_id="+customer_id);
});
$("#dialog-remind").dialog({
    autoOpen: false,
    modal: true,
    width: 600,
    maxHeight: 400,
    position: ["center",100],
    buttons: {
        "确定": function () {
            if($('#dialog_content').val() == ''){
                alert_crm("请填写提醒内容！")
                $("#dialog_content").focus(); 
            }else{
                $('#remind_form').submit();
                $(this).dialog("close");
            }
        },
        "取消": function () {
            $(this).dialog("close");
        }
    }
});
$("#dialog-remind_view").dialog({
    autoOpen: false,
    modal: true,
    width: 500,
    maxHeight: 400,
    position: ["center",100],
    buttons: {
        "删除": function () {
            swal({
                title: "您确认删除吗？" ,
                type: "warning",   
                showCancelButton: true,   
                confirmButtonColor: "#DD6B55",   
                confirmButtonText: "确定",   
                closeOnConfirm: false 
            }, 
            function(){
                var dislog_module_id = $('#dislog_module_id').val();
                var dislog_module = $('#dislog_module').val();
                $.ajax({
                    type:'post',
                    url: "/index.php?m=remind&a=delete",
                    data: {module_id: dislog_module_id,module: dislog_module},
                    async: false,
                    success: function (data) {
                        if (data.status == 1) {
                            swal("操作成功！", "提醒删除成功！", "success");
                            $("#dialog-remind_view").dialog("close");
                        } else {
                            swal({
                                title: "操作失败！",
                                text:data.info,
                                type: "error"
                            })
                            return false;
                        }
                    },
                    dataType: 'json'
                });
            });
        },
        "取消": function () {
            $(this).dialog("close");
        }
    }
});
</script>
<script>
// spacer.gif

 $(document).ready(function(){
// 固定按钮

		var list = '';
		var t_type = "customer";
			var t_name = '';
			if(t_type == "leads"){
				t_name = '<i>线</i>';
			}
			if(t_type == "customer"){
				t_name = '<i>客</i>';
			}
			if(t_type == "business"){
				t_name = '<i>商</i>';
			}
			if(t_type == "contract"){
				t_name = '<i>合</i>';
			}
			if(t_type == "examine"){
				t_name = '<i>审</i>';
			}
			if(t_type == "finance"){
				t_name = '<i>财</i>';
			}
			list += "<li class='($vo['type']}'>"+t_name+"<a href='/index.php?m=customer&a=view&id=742'>流程是否合适</a></li>";var t_type = "customer";
			var t_name = '';
			if(t_type == "leads"){
				t_name = '<i>线</i>';
			}
			if(t_type == "customer"){
				t_name = '<i>客</i>';
			}
			if(t_type == "business"){
				t_name = '<i>商</i>';
			}
			if(t_type == "contract"){
				t_name = '<i>合</i>';
			}
			if(t_type == "examine"){
				t_name = '<i>审</i>';
			}
			if(t_type == "finance"){
				t_name = '<i>财</i>';
			}
			list += "<li class='($vo['type']}'>"+t_name+"<a href='/index.php?m=customer&a=view&id=743'>11111111111111111111111111111</a></li>";var t_type = "customer";
			var t_name = '';
			if(t_type == "leads"){
				t_name = '<i>线</i>';
			}
			if(t_type == "customer"){
				t_name = '<i>客</i>';
			}
			if(t_type == "business"){
				t_name = '<i>商</i>';
			}
			if(t_type == "contract"){
				t_name = '<i>合</i>';
			}
			if(t_type == "examine"){
				t_name = '<i>审</i>';
			}
			if(t_type == "finance"){
				t_name = '<i>财</i>';
			}
			list += "<li class='($vo['type']}'>"+t_name+"<a href='/index.php?m=customer&a=view&id=320'>武帝时代</a></li>"; 	      $(document.body).prepend("<div style='position:fixed;left:0;top:35%;z-index:1000;'><div id='recordBtn' style='display:none;position:absolute;left:0px;top:0px;width:27px; height:27px;cursor: pointer;background: url(Public/img/record.png) left top no-repeat;'></div><div class='recordBox' style='z-index: 1000;display:block; position:absolute;left:-222px;top:26px;width:220px;min-height:30px; max-height:550px; background:#fff; border:1px solid #ccc'><span class='recordClose' style='position:absolute;right:15px; top:10px; display:block;width:9px; height:9px;cursor: pointer;  background:url(Public/img/record.png) -3px -29px;z-index:998;'></span><span class='fixed'></span><div class='title'><i></i>最近访问</div><ul style='list-style:none'>"+list+"</ul></div></div>");
 
     
// 设置样式

       $('.recordBox ul').css({'padding':'10px 10px'});
       $('.recordBox ul li').css({'line-height':'18px','display':'block','margin-bottom':'8px'});
       $('.recordBox ul li i').css({'display':'inline-block','float':'left','width':'18px','height':'18px','text-align':'center','border':'1px solid #ccc','border-radius':'100%','-webkit-border-radius':'100%','-moz-border-radius':'100%','-ms-border-radius':'100%','font-size':'12px','font-style':'normal','line-height':'18px','margin-right':'8px','color':'#585858','background':'#0088cc','color':'#ffffff'});
       $('.title').css({'position':'relative','font-size':'14px','font-family':'微软雅黑','height':'30px','line-height':'30px','border-bottom':'1px solid #ccc','background':'#e6e6e6','text-indent':'25px'});
       $('.title i').css({'position':'absolute','display':'block','width':'15px','height':'15px','background':'url(Public/img/record.png) left bottom no-repeat','left':'5px','top':'7px'});
       $('.fixed').css({'display':'block','width':'16px','height':'16px','background':'url(Public/img/record.png) left -50px no-repeat','position':'absolute','right':'8px','top':'6px','cursor':'pointer','z-index':'999'});


//隐藏展示
  $('#recordBtn').click(function(oEvent){
            var oleft = $('.recordBox').css('left');
            
            if(oleft == '-222px'){
            $('.recordBox').animate({left:'0px'},300);
            }else{
            $('.recordBox').animate({left:'-222px'},300);
             delCookie("yes");
             $('.fixed').show();
            }
            e = window.event || oEvent;
           if (e.stopPropagation)
           {
               e.stopPropagation();
           }else{
               e.cancelBubble = true;
           }
});

                                               //关闭按钮

                                              $('.recordClose').click(function(oEvent){
                                                                   delCookie("yes");
                                              	                   $('.recordBox').animate({left:'-222px'},300);
                                                                   $('.fixed').show();
                                                                   e = window.event || oEvent;
                                                                   if (e.stopPropagation)
                                                                   {
                                                                       e.stopPropagation();
                                                                   }else{
                                                                       e.cancelBubble = true;
                                                                   }
                                              });
                                              $('.recordClose').mouseenter(function(){
                                              	$(this).css('background-position','-3px -41px');
                                              });
                                              $('.recordClose').mouseleave(function(){
                                              	$(this).css('background-position','-3px -29px');
                                              });

          // 阻止冒泡
          $('.recordBox').click(function(oEvent){

                               $('.recordBox').animate({left:'0px'},300);
                               e = window.event || oEvent;
                               if (e.stopPropagation)
                               {
                                   e.stopPropagation();
                               }else{
                                   e.cancelBubble = true;
                               }
          });

         $(document).click(function () {   



                      var ofixed = getCookie('yes');
                      if (ofixed == '1') {
                          $('.recordBox').animate({left:'0px'},300); 
                        
                      } else{
                          $('.recordBox').animate({left:'-222px'},300);
                          $('.fixed').show();
                      }                  
                                                                                 
          });
               



$('.fixed').click(function(){

   SetCookie ("yes", "1") ; 
   
   $(this).hide();
});
var ofixed = getCookie('yes');
if (ofixed == '1') {
  $('.recordBox').animate({left:'0px'},10);
  $('.fixed').hide();
}

                     
});



//写cookies函数  cookie设置
function SetCookie(name,value)//两个参数，一个是cookie的名子，一个是值  
{  
    var Days = 30; //此 cookie 将被保存 30 天  
    var exp  = new Date();    //new Date("December 31, 9998");  
    exp.setTime(exp.getTime() + Days*24*60*60*1000);  
    document.cookie = name + "="+ escape (value) + ";expires=" + exp.toGMTString();  
}  
function getCookie(name)//取cookies函数          
{  
    var arr = document.cookie.match(new RegExp("(^| )"+name+"=([^;]*)(;|$)"));  
     if(arr != null) return unescape(arr[2]); return null;  
  
}  
function delCookie(name)//删除cookie  
{  
    var exp = new Date();  
    exp.setTime(exp.getTime() - 1);  
    var cval=getCookie(name);  
    if(cval!=null) document.cookie= name + "="+cval+";expires="+exp.toGMTString();  
} 
</script>	</div>
</div><div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-front ui-dialog-buttons ui-draggable ui-resizable" style="display: none; position: fixed;" tabindex="-1" role="dialog" aria-describedby="dialog-transform" aria-labelledby="ui-id-1"><div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"><span id="ui-id-1" class="ui-dialog-title">客户转移</span><button class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only ui-dialog-titlebar-close" role="button" aria-disabled="false" title="关闭"><span class="ui-button-icon-primary ui-icon ui-icon-closethick"></span><span class="ui-button-text">关闭</span></button></div><div style="" id="dialog-transform" class="ui-dialog-content ui-widget-content">
	<div class="spiner-example">
		<div class="sk-spinner sk-spinner-three-bounce">
			<div class="sk-bounce1"></div>
			<div class="sk-bounce2"></div>
			<div class="sk-bounce3"></div>
		</div>
	</div>
</div><div class="ui-dialog-buttonpane ui-widget-content ui-helper-clearfix"><div class="ui-dialog-buttonset"><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">确认转移</span></button><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">取消</span></button></div></div><div class="ui-resizable-handle ui-resizable-n" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-e" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-s" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-w" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-sw" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-ne" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-nw" style="z-index: 90;"></div></div><div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-front ui-dialog-buttons ui-draggable ui-resizable" style="display: none; position: fixed;" tabindex="-1" role="dialog" aria-describedby="dialog-share-list" aria-labelledby="ui-id-2"><div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"><span id="ui-id-2" class="ui-dialog-title">客户共享成员列表</span><button class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only ui-dialog-titlebar-close" role="button" aria-disabled="false" title="关闭"><span class="ui-button-icon-primary ui-icon ui-icon-closethick"></span><span class="ui-button-text">关闭</span></button></div><div id="dialog-share-list" class="ui-dialog-content ui-widget-content">
    <div class="spiner-example">
        <div class="sk-spinner sk-spinner-three-bounce">
            <div class="sk-bounce1"></div>
            <div class="sk-bounce2"></div>
            <div class="sk-bounce3"></div>
        </div>
    </div>
</div><div class="ui-dialog-buttonpane ui-widget-content ui-helper-clearfix"><div class="ui-dialog-buttonset"><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">关闭</span></button></div></div><div class="ui-resizable-handle ui-resizable-n" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-e" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-s" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-w" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-sw" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-ne" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-nw" style="z-index: 90;"></div></div><div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-front ui-dialog-buttons ui-draggable ui-resizable" style="display: none; position: fixed;" tabindex="-1" role="dialog" aria-describedby="dialog-addproduct" aria-labelledby="ui-id-3"><div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"><span id="ui-id-3" class="ui-dialog-title">添加商机</span><button class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only ui-dialog-titlebar-close" role="button" aria-disabled="false" title="关闭"><span class="ui-button-icon-primary ui-icon ui-icon-closethick"></span><span class="ui-button-text">关闭</span></button></div><div id="dialog-addproduct" class="ui-dialog-content ui-widget-content">
    <div class="spiner-example">
        <div class="sk-spinner sk-spinner-three-bounce">
            <div class="sk-bounce1"></div>
            <div class="sk-bounce2"></div>
            <div class="sk-bounce3"></div>
        </div>
    </div>
</div><div class="ui-dialog-buttonpane ui-widget-content ui-helper-clearfix"><div class="ui-dialog-buttonset"><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">确定</span></button><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">取消</span></button></div></div><div class="ui-resizable-handle ui-resizable-n" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-e" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-s" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-w" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-sw" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-ne" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-nw" style="z-index: 90;"></div></div><div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-front ui-dialog-buttons ui-draggable ui-resizable" style="display: none; position: fixed;" tabindex="-1" role="dialog" aria-describedby="dialog-editproduct" aria-labelledby="ui-id-4"><div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"><span id="ui-id-4" class="ui-dialog-title">编辑产品</span><button class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only ui-dialog-titlebar-close" role="button" aria-disabled="false" title="关闭"><span class="ui-button-icon-primary ui-icon ui-icon-closethick"></span><span class="ui-button-text">关闭</span></button></div><div style="" id="dialog-editproduct" class="ui-dialog-content ui-widget-content">
    <div class="spiner-example">
        <div class="sk-spinner sk-spinner-three-bounce">
            <div class="sk-bounce1"></div>
            <div class="sk-bounce2"></div>
            <div class="sk-bounce3"></div>
        </div>
    </div>
</div><div class="ui-dialog-buttonpane ui-widget-content ui-helper-clearfix"><div class="ui-dialog-buttonset"><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">确定</span></button><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">取消</span></button></div></div><div class="ui-resizable-handle ui-resizable-n" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-e" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-s" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-w" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-sw" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-ne" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-nw" style="z-index: 90;"></div></div><div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-front ui-draggable ui-resizable" style="display: none; position: fixed;" tabindex="-1" role="dialog" aria-describedby="dialog-advance" aria-labelledby="ui-id-5"><div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"><span id="ui-id-5" class="ui-dialog-title">阶段变更</span><button class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only ui-dialog-titlebar-close" role="button" aria-disabled="false" title="关闭"><span class="ui-button-icon-primary ui-icon ui-icon-closethick"></span><span class="ui-button-text">关闭</span></button></div><div style="" id="dialog-advance" class="ui-dialog-content ui-widget-content">
    <div class="spiner-example">
        <div class="sk-spinner sk-spinner-three-bounce">
            <div class="sk-bounce1"></div>
            <div class="sk-bounce2"></div>
            <div class="sk-bounce3"></div>
        </div>
    </div>
</div><div class="ui-resizable-handle ui-resizable-n" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-e" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-s" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-w" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-sw" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-ne" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-nw" style="z-index: 90;"></div></div><div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-front ui-dialog-buttons ui-draggable ui-resizable" style="display: none; position: fixed;" tabindex="-1" role="dialog" aria-describedby="dialog-remind" aria-labelledby="ui-id-6"><div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"><span id="ui-id-6" class="ui-dialog-title">提醒</span><button class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only ui-dialog-titlebar-close" role="button" aria-disabled="false" title="关闭"><span class="ui-button-icon-primary ui-icon ui-icon-closethick"></span><span class="ui-button-text">关闭</span></button></div><div style="" id="dialog-remind" class="ui-dialog-content ui-widget-content">
    <div class="spiner-example">
        <div class="sk-spinner sk-spinner-three-bounce">
            <div class="sk-bounce1"></div>
            <div class="sk-bounce2"></div>
            <div class="sk-bounce3"></div>
        </div>
    </div>
</div><div class="ui-dialog-buttonpane ui-widget-content ui-helper-clearfix"><div class="ui-dialog-buttonset"><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">确定</span></button><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">取消</span></button></div></div><div class="ui-resizable-handle ui-resizable-n" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-e" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-s" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-w" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-sw" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-ne" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-nw" style="z-index: 90;"></div></div><div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-front ui-dialog-buttons ui-draggable ui-resizable" style="display: none; position: fixed;" tabindex="-1" role="dialog" aria-describedby="dialog-remind_view" aria-labelledby="ui-id-7"><div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"><span id="ui-id-7" class="ui-dialog-title">提醒内容</span><button class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only ui-dialog-titlebar-close" role="button" aria-disabled="false" title="关闭"><span class="ui-button-icon-primary ui-icon ui-icon-closethick"></span><span class="ui-button-text">关闭</span></button></div><div style="" id="dialog-remind_view" class="ui-dialog-content ui-widget-content">
    <div class="spiner-example">
        <div class="sk-spinner sk-spinner-three-bounce">
            <div class="sk-bounce1"></div>
            <div class="sk-bounce2"></div>
            <div class="sk-bounce3"></div>
        </div>
    </div>
</div><div class="ui-dialog-buttonpane ui-widget-content ui-helper-clearfix"><div class="ui-dialog-buttonset"><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">删除</span></button><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">取消</span></button></div></div><div class="ui-resizable-handle ui-resizable-n" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-e" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-s" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-w" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-sw" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-ne" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-nw" style="z-index: 90;"></div></div>
<!-- nice-scroll -->
<script src="js/jquery_002.js" type="text/javascript"></script>
<style>
    .left_chat-message{
        float:left;
        max-width: 90%;
        background: #EFF1F3 !important;
        color:#000 !important;
        margin-left: 34px;
        margin-top: -22px;
        border:1px solid #CECECE;
        border-radius: 3px;
    }
    .right_chat-message{
        float:right;
        max-width: 90%;
        background: #EFF1F3 !important;
        color:#000 !important;
        margin-right: 50px;
        margin-top: -22px;
        border:1px solid #CECECE;
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
    .feedback_content > div {
        padding-bottom: 20px;
    }
    .feedback_body{
        padding:1px !important;
    }
</style>
<script>
    $(function(){
        var scroll_width = 5;
        $(".nicescroll").niceScroll({
            cursorcolor: "#ccc",//#CC0071 光标颜色 
            cursoropacitymax: 0.5, //改变不透明度非常光标处于活动状态（scrollabar“可见”状态），范围从1到0 
            touchbehavior: false, //使光标拖动滚动像在台式电脑触摸设备 
            cursorwidth: scroll_width+"px", //像素光标的宽度 
            cursorborder: "0", //     游标边框css定义 
            cursorborderradius: "5px",//以像素为光标边界半径 
            autohidemode: false, //是否隐藏滚动条 
            zindex:100,
            background:"#F3F3F5",//滚动条背景色
        }); 
    }); 
</script>
<div class="small-chat-box fadeInRight animated" id="feedback_div" style="z-index:1001;width:385px;height:500px;background-color: #f9f9f9;border-color:#ccc;">
    <div class="heading" draggable="true" style="background-color: #fff;border:1px solid #d8e3ef;color:#6A7687;">
        <small class="chat-date pull-right">
            服务热线：400-6968-650
        </small>
        悟空小助手
    </div>
    <div id="feedback_body" class="nicescroll" tabindex="0" style="height: 355px; overflow: hidden; outline: none;">
        <div class="feedback_content" id="list_feedback" style="background-color: #fff;">
            <div class="left">
                <div class="author-name">
                    <img alt="头像" style="height:32px;width:32px" class="img-circle" src="img/wukong.png">
                    <small class="chat-date"></small>
                </div>
                <div class="chat-message active left_chat-message">
                    您好，请输入关键字获取帮助，如“密码”。
                </div>
            </div>
            <div style="clear: both;padding-bottom: 0px;" id="clearfeedback"></div>
        </div>
    </div>
    <div class="form-chat">
        <textarea class="form-control" cols="20" rows="2" style="width:100%;" onkeyup="wordFunction();" id="feedback_content" placeholder="请输入您的问题"></textarea>
        <div class="input-group input-group-sm" style="padding-top:5px;line-height:25px;">
            <div class="pull-left">
                问题没有解决？
                <a href="javascript:void(0);" class="feed_back">点击反馈</a>
            </div>
            <div class="pull-right" style="margin-right:5px;">
                <a href="javascript:void(0);" id="app_download" style="color: #FF761B;">APP下载(Android/IOS)</a>
            </div>
            <span class="input-group-btn">
                <button class="btn btn-primary" id="feedback_submit" type="button">发送</button>
            </span>
        </div>
    </div>
<div id="ascrail2000" class="nicescroll-rails nicescroll-rails-vr" style="width: 5px; z-index: 100; background: rgb(243, 243, 245) none repeat scroll 0% 0%; cursor: default; position: absolute; top: 0px; left: -5px; height: 355px; opacity: 0.5; display: none;"><div style="position: relative; top: 0px; float: right; width: 5px; height: 0px; background-color: rgb(204, 204, 204); border: 0px none; background-clip: padding-box; border-radius: 5px;" class="nicescroll-cursors"></div></div><div id="ascrail2000-hr" class="nicescroll-rails nicescroll-rails-hr" style="height: 5px; z-index: 100; background: rgb(243, 243, 245) none repeat scroll 0% 0%; top: 350px; left: 0px; position: absolute; opacity: 0.5; cursor: default; display: none;"><div style="position: absolute; top: 0px; height: 5px; width: 0px; background-color: rgb(204, 204, 204); border: 0px none; background-clip: padding-box; border-radius: 5px;" class="nicescroll-cursors"></div></div></div>
<div id="down_url" style="display:none;width:120px;height:120px;background-color: #000;z-index: 1009;position: fixed;bottom:65px;right:160px;text-align: center;">
	<img src="img/download.jfif" style="width:120px;height:120px;">
</div>
<div id="small-chat" style="z-index:1001;">
    <span class="badge badge-warning pull-right"></span>
    <a class="open-small-chat" title="悟空小助手">
        <i class="fa fa-comments"></i>
    </a>
</div>

<script>
    $("#app_download").hover(function() {
        $('#down_url').animate({opacity: "show"}, "slow");
    }, function() {
        $('#down_url').animate({opacity: "hide"}, "fast");
    });
    $('#feedback_div').on('click','.feed_back',function(){
        var version = "2.3.6";
        var full_name = "邹总";
        var telephone = "";
        var server_name = "demo2.5kcrm.net:80/";
        var frameSrc = "http://help.crm.cc/index.php?m=feedBack&a=add"+'&version='+version+'&full_name='+full_name+'&telephone='+telephone+'&server_name='+server_name;  
        $("#NoPermissioniframe").attr("src", frameSrc);  
        $('#NoPermissionModal').modal({ show: true, backdrop: 'static' });  
    });

    $('#feedback_div').keydown(function(event){
        if(event.keyCode == "13"){
            $('#feedback_submit').click();
        }
    });

    function feedback_ajax(question){
        var url = "http://help.crm.cc/index.php?m=feedBack&a=ajaxdata&question="+question;
        var img = "./Uploads/head/thumb_5aa5ec505c63c2291.png";
        $.ajax({
            type:'get',
            url: url,
            async: true,
            dataType: 'jsonp',
            jsonp: "callback",//服务端用于接收callback调用的function名的参数
            success: function (data) {
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
                            <div class="chat-message right_chat-message">'+question+'</div>\
                        </div>';
                    $.each(data.data, function(k, v){
                        temp += '<div class="left">\
                                    <div class="author-name">\
                                        <img alt="头像" style="height:32px;width:32px" class="img-circle" src="/Public/img/wukong.png">\
                                        <small class="chat-date"></small>\
                                    </div>\
                                    <div class="chat-message active left_chat-message"><a style="color:#fff;" target="_blank" href="http://help.crm.cc/index.php?m=help&a=view&help_id='+v['help_id']+'&help_menu_id='+v['help_menu_id']+'">'+v['name']+'</a></div>\
                                </div>';
                    });
                    $('#feedback_content').val('');
                    $('#clearfeedback').before(temp);
                    var html_h =  parseInt($('#list_feedback').height()+200);
                    $("#feedback_body").animate({"scrollTop": html_h}, 1000);
                }else{
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
                            <div class="chat-message right_chat-message">'+question+'</div>\
                        </div>';
                    temp += '<div class="left">\
                        <div class="author-name">\
                            <img alt="头像" style="height:32px;width:32px" class="img-circle" src="/Public/img/wukong.png">\
                            <small class="chat-date"></small>\
                        </div>\
                        <div class="chat-message active left_chat-message">'+data['data'][0]['name']+'</div>\
                    </div>';
                    $('#feedback_content').val('');
                    $('#clearfeedback').before(temp);
                    var html_h =  parseInt($('#list_feedback').height()+180);
                    $("#feedback_body").animate({"scrollTop": html_h}, 1000);
                }      
            },
            error:function(){
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
                        <div class="chat-message right_chat-message">'+question+'</div>\
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
                var html_h =  parseInt($('#list_feedback').height()+180);
                $("#feedback_body").animate({"scrollTop": html_h}, 1000);
            }
        });
    }

    $('#feedback_submit').click(function(){
        var feedback_content = $.trim($('#feedback_content').val());
        if(!feedback_content){
            swal({
                title: "温馨提示",
                text: "不能发送空白消息！",
                type: "warning"
            })
            $('#feedback_content').val('');
            return false;
        }
        feedback_ajax(feedback_content);
    });

    // 字数限制
    function wordFunction(){
        var feedbackLength = $("#feedback_content").val().length;
        if(feedbackLength >= 100){
            alert_crm('您输入的内容过长！');
        }
    }
</script>
<script src="js/index.js"></script>
<script src="js/notification.js"></script>
<!-- layer -->
<script src="js/layer.js"></script>
<script src="js/call.js"></script>
<script type="text/javascript">

$(document).ready(function(){
    /*复选框选择效果*/
    if($('.check_all').size() > 0){
        var icheck_num = 0;
        var all_check_num = 0;
        /*选择所有and取消所有*/
        $(".check_all").change(function(){
            $("input[class='check_list']").prop('checked', $(this).prop("checked"));//选中
            // if($(".check_all").prop("checked")){
            if($(this).is(":checked")){ //jQuery方式判断
                $(".single_btn").hide().children().each(function(){
                    $(this).attr('rel','');
                })
                $('#title-hide').show();
                $('#title-show').hide();
                all_check_num = $("input[class='check_list']:checked").length;
            }else{
                $('#title-hide').hide();
                $('#title-show').show();
                all_check_num = 0;
            }

            if(document.getElementById("oDivL_tab_Test3")){
                if ($(".check_all:checked").size()>0 && icheck_num % 2 == 0) {
                    icheck_num = all_check_num/2;
                    $("#icheck_num").text(all_check_num/2);
                } else {
                    icheck_num = all_check_num;
                    $("#icheck_num").text(all_check_num);
                }
            } else {
                icheck_num = all_check_num;
                // all_check_num = $("input[class='check_list']:checked").length;
                // icheck_num = all_check_num;
                $("#icheck_num").text(icheck_num);
            }
        });
        /*让隐藏标签显示*/
        $('.check_list').click(function(){
            if($(this).prop("checked")){
                icheck_num++;
            }else{
                icheck_num--;
            }
            $("#icheck_num").text(icheck_num);
            //处理单选时才有的操作
            if (icheck_num == 1) {
                $(".single_btn").show().children().each(function(){
                    $(this).attr('rel',$("input.check_list:checked").val());
                    $('#log_customer').attr('rel1',$("input.check_list:checked").attr('rel'));

					$('#log_business').attr('rel',$("input.check_list:checked").attr('rel'));
                    $('.business_btn').children().attr('rel1',$("input.check_list:checked").attr('rel'));

                    $('#examine_type').val($("input.check_list:checked").attr('rel'));
                    if($("input.check_list:checked").attr('rel1') == 1){
                        $('#to_top_span').html('&nbsp;取消置顶');
                        $('#to_check').html('<input type="hidden" id="is_checked" value="2">&nbsp;撤销');
                        $('#user_span').html('<a id="delete" href="javascript:void(0)" onclick="del_user(2)"><i class="fa fa-check"></i>&nbsp;启用账号</a>');
                    }else{
                        $('#to_top_span').html('&nbsp;置顶');
                        var rel_name = $("input.check_list:checked").attr('rel3');
                        $('#to_check').html('<input type="hidden" id="is_checked" rel="'+rel_name+'" value="1">&nbsp;审核');
                    }
                })
            } else {
                $(".single_btn").hide().children().each(function(){
                    $(this).attr('rel','');
                })
            }
            if(icheck_num <= 0){
                $('#title-hide').hide();
                $('#title-show').show();
            }else{
                $('#title-hide').show();
                $('#title-show').hide();
            }
        });
        /*点插 取消所有选中*/
        $('#back-show').click(function(){
            icheck_num = 0;
            $("#icheck_num").text(icheck_num);
            $('#title-hide').hide();
            $('#title-show').show();
            $(".check_list,.check_all").attr("checked",false);
        });
    }
});
</script>

<div class="modal inmodal" id="Profile" tabindex="-1" role="dialog" aria-hidden="true">
				<div class="modal-dialog modal-lg">
					<div class="modal-content animated bounceInRight">

					</div>
				</div>
			</div><div class="modal inmodal fade" id="Modal_login" tabindex="-1" style=" overflow:auto; border:1px solid #000000;" role="dialog">
			    <div class="modal-dialog modal-md" style="width:700px;">
			        <div class="modal-content" id="login_modal">

			        </div>
			    </div>
			</div><div class="modal inmodal fade" id="Modal_anthorize" aria-hidden="true" role="dialog" tabindex="-1">
			    <div class="modal-dialog" style="width:500px;">
		        	
		        	<div class="modal-content">
			        	<div class="modal-header" style="border:none;">
						    <b style="font-size:16px;">版本及授权信息</b>
						    <button type="button" class="close" style="font-size:34px;font-weight:400;color:#fff;" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
						</div>
					    <div class="modal-body col-sm-12">
						    <div class="form-horizontal m-t">
								<div class="form-group ">
									<label class="control-label col-sm-3" style="padding-top:0px;">版本信息</label>
									<div class="col-sm-6">CRM2.0 - beta2.3.6</div>
									<div class="col-sm-3 pull-left"><a target="_blank" href="http://www.crm.cc/update/">查看更新日志</a></div>
								</div>
								<div class="form-group ">
									<label class="control-label col-sm-3"></label>
									<div class="col-sm-9">发布日期：2018年1月27日</div>
								</div>
								<div class="form-group ">
									<label class="control-label col-sm-3" style="padding-top:0px;">授权信息</label>
									<div class="col-sm-6">授权人数：100人</div>
									<div class="col-sm-3 pull-left">
										<a target="_blank" href="http://help.crm.cc/index.php?m=help&amp;a=view&amp;help_id=128&amp;help_menu_id=3" title="点击查看如何增加授权人数">增加授权人数</a>
									</div>
								</div>
								<div class="form-group ">
									<label class="control-label col-sm-3"></label>
									<div class="col-sm-6">到期时间：2028年03月05日</div>
									<div class="col-sm-3 pull-left">
																			</div>
								</div>
						    </div>
						</div>
					</div>
			    </div>
			</div><div class="modal fade" id="NoPermissionModal">  
    <div class="modal-dialog" style="width:800px;height:545px;">  
        <div class="modal-content" style="height: 100%;">  
            <div class="modal-header">  
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="NoPermissionModalLabel">用户反馈</h4>  
            </div>  
            <div class="modal-body feedback_body" style="height:440px;">  
                <iframe id="NoPermissioniframe" width="100%" height="100%" frameborder="0"></iframe>  
            </div>  
            <div class="modal-footer">  
                <button type="button" class="btn btn-default" data-dismiss="modal">关  闭</button> 
            </div>  
        </div>
    </div>
</div><div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-front ui-dialog-buttons ui-draggable ui-resizable" style="display: none; position: fixed;" tabindex="-1" role="dialog" aria-describedby="dialog-setting_reply" aria-labelledby="ui-id-8"><div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"><span id="ui-id-8" class="ui-dialog-title">管理快捷沟通</span><button class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only ui-dialog-titlebar-close" role="button" aria-disabled="false" title="关闭"><span class="ui-button-icon-primary ui-icon ui-icon-closethick"></span><span class="ui-button-text">关闭</span></button></div><div style="" id="dialog-setting_reply" class="ui-dialog-content ui-widget-content">
    <div class="spiner-example">
        <div class="sk-spinner sk-spinner-three-bounce">
            <div class="sk-bounce1"></div>
            <div class="sk-bounce2"></div>
            <div class="sk-bounce3"></div>
        </div>
    </div>
</div><div class="ui-dialog-buttonpane ui-widget-content ui-helper-clearfix"><div class="ui-dialog-buttonset"><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">确定</span></button><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">取消</span></button></div></div><div class="ui-resizable-handle ui-resizable-n" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-e" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-s" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-w" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-sw" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-ne" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-nw" style="z-index: 90;"></div></div><div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-front ui-dialog-buttons ui-draggable ui-resizable" style="display: none; position: fixed;" tabindex="-1" role="dialog" aria-describedby="dialog-file" aria-labelledby="ui-id-9"><div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"><span id="ui-id-9" class="ui-dialog-title">添加附件</span><button class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only ui-dialog-titlebar-close" role="button" aria-disabled="false" title="关闭"><span class="ui-button-icon-primary ui-icon ui-icon-closethick"></span><span class="ui-button-text">关闭</span></button></div><div class="ui-dialog-content ui-widget-content" style="" id="dialog-file">
    <div class="spiner-example">
        <div class="sk-spinner sk-spinner-three-bounce">
            <div class="sk-bounce1"></div>
            <div class="sk-bounce2"></div>
            <div class="sk-bounce3"></div>
        </div>
    </div>
</div><div class="ui-dialog-buttonpane ui-widget-content ui-helper-clearfix"><div class="ui-dialog-buttonset"><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">确定</span></button><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">取消</span></button></div></div><div class="ui-resizable-handle ui-resizable-n" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-e" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-s" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-w" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-sw" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-ne" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-nw" style="z-index: 90;"></div></div><div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-front ui-draggable ui-resizable" style="display: none; position: fixed;" tabindex="-1" role="dialog" aria-describedby="dialog-role-info" aria-labelledby="ui-id-10"><div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"><span id="ui-id-10" class="ui-dialog-title">员工信息</span><button class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only ui-dialog-titlebar-close" role="button" aria-disabled="false" title="关闭"><span class="ui-button-icon-primary ui-icon ui-icon-closethick"></span><span class="ui-button-text">关闭</span></button></div><div style="" id="dialog-role-info" class="ui-dialog-content ui-widget-content">
    <div class="spiner-example">
        <div class="sk-spinner sk-spinner-three-bounce">
            <div class="sk-bounce1"></div>
            <div class="sk-bounce2"></div>
            <div class="sk-bounce3"></div>
        </div>
    </div>
</div><div class="ui-resizable-handle ui-resizable-n" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-e" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-s" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-w" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-sw" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-ne" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-nw" style="z-index: 90;"></div></div><div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-front ui-dialog-buttons ui-draggable ui-resizable" style="display: none; position: fixed;" tabindex="-1" role="dialog" aria-describedby="dialog-contacts" aria-labelledby="ui-id-11"><div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"><span id="ui-id-11" class="ui-dialog-title">关联联系人</span><button class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only ui-dialog-titlebar-close" role="button" aria-disabled="false" title="关闭"><span class="ui-button-icon-primary ui-icon ui-icon-closethick"></span><span class="ui-button-text">关闭</span></button></div><div style="" id="dialog-contacts" class="ui-dialog-content ui-widget-content">
    <div class="spiner-example">
        <div class="sk-spinner sk-spinner-three-bounce">
            <div class="sk-bounce1"></div>
            <div class="sk-bounce2"></div>
            <div class="sk-bounce3"></div>
        </div>
    </div>
</div><div class="ui-dialog-buttonpane ui-widget-content ui-helper-clearfix"><div class="ui-dialog-buttonset"><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">确定</span></button><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">取消</span></button></div></div><div class="ui-resizable-handle ui-resizable-n" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-e" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-s" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-w" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-sw" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-ne" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-nw" style="z-index: 90;"></div></div></body></html>