<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<meta charset="utf-8">
	<title>致客科技_商机</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="author" content="悟空CRM">
	<!-- 360浏览器默认使用Webkit内核 -->
	<meta name="renderer" content="webkit">
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
	<script src="js/jquery_003.js" type="text/javascript"></script>
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
	<script src="js/jquery_002.js"></script>
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
<body class="navbar  pace-done"><div style="position:fixed;left:0;top:35%;z-index:1000;"><div id="recordBtn" style="display:none;position:absolute;left:0px;top:0px;width:27px; height:27px;cursor: pointer;background: url(Public/img/record.png) left top no-repeat;"></div><div class="recordBox" style="z-index: 1000;display:block; position:absolute;left:-222px;top:26px;width:220px;min-height:30px; max-height:550px; background:#fff; border:1px solid #ccc"><span class="recordClose" style="position:absolute;right:15px; top:10px; display:block;width:9px; height:9px;cursor: pointer;  background:url(Public/img/record.png) -3px -29px;z-index:998;"></span><span class="fixed" style="display: block; width: 16px; height: 16px; background: rgba(0, 0, 0, 0) url(&quot;Public/img/record.png&quot;) no-repeat scroll left -50px; position: absolute; right: 8px; top: 6px; cursor: pointer; z-index: 999;"></span><div class="title" style="position: relative; font-size: 14px; font-family: 微软雅黑; height: 30px; line-height: 30px; border-bottom: 1px solid rgb(204, 204, 204); background: rgb(230, 230, 230) none repeat scroll 0% 0%; text-indent: 25px;"><i style="position: absolute; display: block; width: 15px; height: 15px; background: rgba(0, 0, 0, 0) url(&quot;Public/img/record.png&quot;) no-repeat scroll left bottom; left: 5px; top: 7px;"></i>最近访问</div><ul style="list-style: outside none none; padding: 10px;"><li class="($vo[" type']}'="" style="line-height: 18px; display: block; margin-bottom: 8px;"><i style="display: inline-block; float: left; width: 18px; height: 18px; text-align: center; border: 1px solid rgb(204, 204, 204); border-radius: 100%; font-size: 12px; font-style: normal; line-height: 18px; margin-right: 8px; color: rgb(255, 255, 255); background: rgb(0, 136, 204) none repeat scroll 0% 0%;">合</i><a href="http://demo2.5kcrm.net/index.php?m=contract&amp;a=view&amp;id=298">点点滴滴</a></li><li class="($vo[" type']}'="" style="line-height: 18px; display: block; margin-bottom: 8px;"><i style="display: inline-block; float: left; width: 18px; height: 18px; text-align: center; border: 1px solid rgb(204, 204, 204); border-radius: 100%; font-size: 12px; font-style: normal; line-height: 18px; margin-right: 8px; color: rgb(255, 255, 255); background: rgb(0, 136, 204) none repeat scroll 0% 0%;">商</i><a href="http://demo2.5kcrm.net/index.php?m=business&amp;a=view&amp;id=408">M_20180124-0408</a></li><li class="($vo[" type']}'="" style="line-height: 18px; display: block; margin-bottom: 8px;"><i style="display: inline-block; float: left; width: 18px; height: 18px; text-align: center; border: 1px solid rgb(204, 204, 204); border-radius: 100%; font-size: 12px; font-style: normal; line-height: 18px; margin-right: 8px; color: rgb(255, 255, 255); background: rgb(0, 136, 204) none repeat scroll 0% 0%;">客</i><a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=738">测试</a></li><li class="($vo[" type']}'="" style="line-height: 18px; display: block; margin-bottom: 8px;"><i style="display: inline-block; float: left; width: 18px; height: 18px; text-align: center; border: 1px solid rgb(204, 204, 204); border-radius: 100%; font-size: 12px; font-style: normal; line-height: 18px; margin-right: 8px; color: rgb(255, 255, 255); background: rgb(0, 136, 204) none repeat scroll 0% 0%;">客</i><a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=320">武帝时代</a></li><li class="($vo[" type']}'="" style="line-height: 18px; display: block; margin-bottom: 8px;"><i style="display: inline-block; float: left; width: 18px; height: 18px; text-align: center; border: 1px solid rgb(204, 204, 204); border-radius: 100%; font-size: 12px; font-style: normal; line-height: 18px; margin-right: 8px; color: rgb(255, 255, 255); background: rgb(0, 136, 204) none repeat scroll 0% 0%;">商</i><a href="shangjixinxi.htm">M_20171205-0318</a></li><li class="($vo[" type']}'="" style="line-height: 18px; display: block; margin-bottom: 8px;"><i style="display: inline-block; float: left; width: 18px; height: 18px; text-align: center; border: 1px solid rgb(204, 204, 204); border-radius: 100%; font-size: 12px; font-style: normal; line-height: 18px; margin-right: 8px; color: rgb(255, 255, 255); background: rgb(0, 136, 204) none repeat scroll 0% 0%;">客</i><a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=739">美的集团股份有限公司</a></li><li class="($vo[" type']}'="" style="line-height: 18px; display: block; margin-bottom: 8px;"><i style="display: inline-block; float: left; width: 18px; height: 18px; text-align: center; border: 1px solid rgb(204, 204, 204); border-radius: 100%; font-size: 12px; font-style: normal; line-height: 18px; margin-right: 8px; color: rgb(255, 255, 255); background: rgb(0, 136, 204) none repeat scroll 0% 0%;">客</i><a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=470">郑州职业技术学院</a></li></ul></div></div><div class="pace  pace-inactive"><div class="pace-progress" style="transform: translate3d(100%, 0px, 0px);" data-progress-text="100%" data-progress="99">
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
	                    		                    		<img class="img-circle" src="img/logo2.png" style="width: 38px;height: 38px;margin-right:0px;" alt="悟空CRM">	                    </div>
	                </li>
	                <li>
	                	<a data-toggle="tooltip" data-placement="right" data-original-title="首页" href="#"><i class="fa fa-home"></i></a>
	                </li>

	                	                <li>
	                	<a data-toggle="tooltip" data-placement="right" data-original-title="客户管理" href="kehuguanli.htm"><i class="fa fa-user"></i></a>
	                </li>
	                	                	                <li>
	                	<a data-toggle="tooltip" data-placement="right" data-original-title="商机管理" class="active" href="shangjiguanli.htm"><i class="fa fa-suitcase"></i></a>
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
		<div id="page-wrapper" class="gray-bg" style="background: rgb(230, 233, 240) none repeat scroll 0% 0%; min-height: 634px;">
    		<div class="row border-bottom white-bg" style="box-shadow: 0px 4px 13px -8px #5A5A5A;z-index: 102;">
				<nav class="navbar navbar-default nav-head navbar-static-top" role="navigation" style="margin-bottom: 0">
										<ul class="nav navbar-nav navbar-left navbar-form-custom" style="min-width:60%;">
													<li class="active"><a href="http://demo2.5kcrm.net/index.php?m=business&amp;a=index"><span class="fa fa-suitcase" style="display:inline"></span>&nbsp;&nbsp;商机</a></li>
											</ul>
					<ul class="nav navbar-top-links navbar-right" style="margin-right:0px;">
												<li class="dropdown" style="">
		                    <a class="dropdown-toggle count-info" id="todo_url" data-toggle="dropdown" href="#" title="待办事项">
		                        <img src="img/remain.png" alt=""><div class="label label-info" style="background-color: #FA7252;" id="todo_num">225</div>
		                    </a>
	                   		<ul class="dropdown-menu dropdown-alerts folder-list m-b-md" style="width:250px;">
	                   				                   						            			<li style="border-bottom:1px dashed #e7eaec !important;"><a href="http://demo2.5kcrm.net/index.php?m=contract&amp;a=index&amp;contract_checked=1&amp;by=all"><i class="fa fa-list-alt"></i>&nbsp;&nbsp;待审核的合同<span class="label label-info pull-right" style="background-color: #FA7252;" id="header_check_contract_num">64</span></a></li>
			            													            			<li style="border-bottom:1px dashed #e7eaec !important;"><a href="http://demo2.5kcrm.net/index.php?m=finance&amp;a=index&amp;t=receivingorder&amp;status[value]=0&amp;by=all"><i class="fa fa-money"></i>&nbsp;&nbsp;待审核的回款<span class="label label-info pull-right" style="background-color: #FA7252;" id="header_receivables_num">50</span></a></li>
			            													            			<li style="border-bottom:1px dashed #e7eaec !important;"><a href="http://demo2.5kcrm.net/index.php?m=examine&amp;a=index&amp;by=me_examine&amp;examining=1"><i class="fa fa-check-square-o"></i>&nbsp;&nbsp;待处理的审批流<span class="label label-info pull-right" style="background-color: #FA7252;" id="header_examine_num">2</span></a></li>
																									<li style="border-bottom:1px dashed #e7eaec !important;"><a href="http://demo2.5kcrm.net/index.php?m=contract&amp;a=index&amp;by=dqcontact"><i class="fa fa-user"></i>&nbsp;&nbsp;合同到期提醒<span class="label label-info pull-right" style="background-color: #FA7252;" id="header_dqcontact_num">41</span></a></li>
											            		
											            			<li style="border-bottom:1px dashed #e7eaec !important;"><a href="http://demo2.5kcrm.net/index.php?m=finance&amp;a=index&amp;t=receivables&amp;r_status=1&amp;by=me"><i class="fa fa-money"></i>&nbsp;&nbsp;应收款提醒<span class="label label-info pull-right" style="background-color: #FA7252;" id="receivables_num">68</span></a></li>
			            					            					            			<li style="border-bottom:1px dashed #e7eaec !important;"><a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=index&amp;by=todaycontact"><i class="fa fa-user"></i>&nbsp;&nbsp;今日需跟进客户<span class="label label-info pull-right" style="background-color: #FA7252;" id="header_follow_customer_num"></span></a></li>
			            			                   		</ul>
		                </li>
		                <li class="dropdown" style="">
		                    <a class="dropdown-toggle count-info" id="event_url" data-toggle="dropdown" href="#" title="今日日程">
		                        <img src="img/event.png" alt=""><span class="label label-warning" id="event_num">4</span>
		                    </a>
	                   		<ul class="dropdown-menu dropdown-alerts">
			            		<li class="list-group" role="presentation" id="event_group" style="height: 220px;">
	                        		<div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 100%;"><div class="full-height-scroll" id="event_list" data-height="220px" data-plugin="slimScroll" style="overflow: hidden; width: auto; height: 100%;"><a href="http://demo2.5kcrm.net/index.php?m=event&amp;a=index" title="点击查看" style="padding:5px !important;border-bottom:1px dashed #ddd;float:left;margin-bottom:5px;width:100%;">	                                <div style="overflow:hidden;padding:0 10px;">	                                	<span class="pull-left" style="color:#46be8a;line-height:26px;"><i class="fa fa-circle"></i>&nbsp;&nbsp;【 提醒 】波音787</span><br>	                                    <small class="text-muted pull-right" style="margin-top: 5px;">2018年03月14 15:00</small>	                                </div>	                            </a><a href="http://demo2.5kcrm.net/index.php?m=event&amp;a=index" title="点击查看" style="padding:5px !important;border-bottom:1px dashed #ddd;float:left;margin-bottom:5px;width:100%;">	                                <div style="overflow:hidden;padding:0 10px;">	                                	<span class="pull-left" style="color:#46be8a;line-height:26px;"><i class="fa fa-circle"></i>&nbsp;&nbsp;【 提醒 】武帝时代</span><br>	                                    <small class="text-muted pull-right" style="margin-top: 5px;">2018年03月14 17:13</small>	                                </div>	                            </a><a href="http://demo2.5kcrm.net/index.php?m=event&amp;a=index" title="点击查看" style="padding:5px !important;border-bottom:1px dashed #ddd;float:left;margin-bottom:5px;width:100%;">	                                <div style="overflow:hidden;padding:0 10px;">	                                	<span class="pull-left" style="color:#57c7d4;line-height:26px;"><i class="fa fa-circle"></i>&nbsp;&nbsp;通话</span><br>	                                    <small class="text-muted pull-right" style="margin-top: 5px;">2018年03月14 17:32 ~ 2018年03月14 23:59</small>	                                </div>	                            </a><a href="http://demo2.5kcrm.net/index.php?m=event&amp;a=index" title="点击查看" style="padding:5px !important;border-bottom:1px dashed #ddd;float:left;margin-bottom:5px;width:100%;">	                                <div style="overflow:hidden;padding:0 10px;">	                                	<span class="pull-left" style="color:#62a8ea;line-height:26px;"><i class="fa fa-circle"></i>&nbsp;&nbsp;了解一下</span><br>	                                    <small class="text-muted pull-right" style="margin-top: 5px;">2018年03月14 23:19 ~ 2018年03月14 23:59</small>	                                </div>	                            </a></div><div class="slimScrollBar" style="background: rgb(153, 153, 153) none repeat scroll 0% 0%; width: 7px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 7px; z-index: 99; right: 1px;"></div><div class="slimScrollRail" style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51) none repeat scroll 0% 0%; opacity: 0.2; z-index: 90; right: 1px;"></div></div>
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
		                        <img src="img/bell.png" alt=""><span class="label label-primary" id="message_num"></span>
		                    </a>
	                    	<ul class="dropdown-menu dropdown-alerts" style="width:365px;">
	                    		<li class="list-group" role="presentation" id="message_group" style="height:220px;display:none;">
	                        		<div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 100%;"><div class="full-height-scroll" id="message_list" data-height="220px" data-plugin="slimScroll" style="overflow: hidden; width: auto; height: 100%;">
	                        		</div><div class="slimScrollBar" style="background: rgb(153, 153, 153) none repeat scroll 0% 0%; width: 7px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 7px; z-index: 99; right: 1px;"></div><div class="slimScrollRail" style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51) none repeat scroll 0% 0%; opacity: 0.2; z-index: 90; right: 1px;"></div></div>
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
<link href="css/litebox.css" rel="stylesheet" type="text/css">
<script src="js/PCASClass.js" type="text/javascript"></script>
<!-- nice-scroll -->
<script src="js/jquery_004.js" type="text/javascript"></script>
<script type="text/javascript" src="js/TableFreeze.js"></script>
<script src="js/5kcrm_more.js" type="text/javascript"></script>
<style>
body{
	overflow-y: hidden;
}
.option{padding-left:-30px;}
#oDivL_tab_Test3{background-color: #fff;}
.table{max-width: none;}
</style>
<script>
$(function(){
	var scroll_width = 7;
	// var oTableLH_tab_Test3 = 38;
	$("#table_div").height(window.innerHeight-$("#table_div").offset().top-$("#tfoot_div").height()-parseInt($("#table_container").css("padding-bottom").replace("px",""))-10);
	$(window).resize(function(){
		$("#table_div").height(window.innerHeight-$("#table_div").offset().top-$("#tfoot_div").height()-parseInt($("#table_container").css("padding-bottom").replace("px",""))-10);
		$("#oDivL_tab_Test3").height($("#table_div").height()-scroll_width-1).width($("#oTableLH_tab_Test3").width());
		$("#oDivH_tab_Test3").height($("#oTableLH_tab_Test3").height()).width($("#table_div").width()-scroll_width);
	})
	$(".nicescroll").niceScroll({
		cursorcolor: "#999",//#CC0071 光标颜色 
	    cursoropacitymax: 0.4, //改变不透明度非常光标处于活动状态（scrollabar“可见”状态），范围从1到0 
	    touchbehavior: false, //使光标拖动滚动像在台式电脑触摸设备 
	    cursorwidth: scroll_width+"px", //像素光标的宽度 
	    cursorborder: "0", //     游标边框css定义 
	    cursorborderradius: "3px",//以像素为光标边界半径 
	    autohidemode: false, //是否隐藏滚动条 
	    zindex:100,
	    background:"#F3F3F5",//滚动条背景色
	});
	if ("") {
		$("#filter_ul").prev().html($("#filter_ul>li>a.active").text()+'<span class="fa fa-angle-down small_fa"></span>');
	}
	$("#tab_Test3").FrozenTable(1,0,3);
	$("#oDivL_tab_Test3").height($("#table_div").height()-scroll_width-1).width($("#oTableLH_tab_Test3").width()).css({'zIndex':9});
	$("#oDivL_tab_Test3").css({"background-color":"#fff","border-right":"1px solid #e7eaec"});
	$("#oTableLH_tab_Test3").css({"border-right":"1px solid #e7eaec"});
	$("#oDivH_tab_Test3").height($("#oTableLH_tab_Test3").height()).width($("#table_div").width()-scroll_width).css({'zIndex':9});
})
</script>
<div class="wrapper wrapper-content">
	    <div class="row">
        <div class="col-md-12">
            <div class="ibox float-e-margins">
            	<div class="title-bar" style="position: relative;z-index: 99;">
					<div class="row clearfix" id="title-hide" style="display: none;">
						<ul class="breadcrum pull-left">
							<li>已选中&nbsp;<span id="icheck_num">0</span>&nbsp;项</li>
							<li class="single_btn" style="display: none;"><a href="javascript:void(0)" id="log_business" rel=""><i class="fa fa-file-text"></i>&nbsp;添加沟通日志</a></li>
							<li class="single_btn business_btn" style="display: none;"><a href="javascript:void(0)" id="remind" rel=""><i class="fa fa-bell-o"></i>&nbsp;提醒</a></li>
							<li class="single_btn" style="display: none;"><a href="javascript:void(0)" id="edit_business" rel=""><i class="fa fa-pencil"></i>&nbsp;编辑</a></li>
							<li class="single_btn business_btn" style="display: none;"><a href="javascript:void(0)" id="to_top" rel=""><i class="fa fa-arrow-up"></i><span id="to_top_span">&nbsp;置顶</span></a></li>
							<li><a id="delete" href="javascript:void(0)"><i class="fa fa-times"></i>&nbsp;删除</a></li>							<li class="last_li"><big><a class="fa fa-times pull-right" id="back-show"></a></big></li>
						</ul>
					</div>
					<div class="row " id="title-show" style="display: block;">
						<ul class="nav pull-left" style="margin:2px 0 0 15px;">
							<a href="shangjibianji.htm" class="btn btn-primary btn-sm pull-left" style="margin-right:8px"><i class="fa fa-plus-circle"></i>&nbsp; 新建商机</a>
						</ul>
						<form class="form-inline" id="business_search" action="" method="get">
							<ul class="breadcrum pull-right" style="margin-bottom: 0px">
								<li>
									<div class="input-group" style="margin-right: 10px;margin-bottom: 5px;">
										<select class="form-control" onchange="window.open(this.options[this.selectedIndex].value,target='_self')">
											<option value="/index.php?m=business&amp;a=index&amp;by=me&amp;listrows=15" selected="selected">我的商机</option>
											<option value="/index.php?m=business&amp;a=index&amp;by=sub&amp;listrows=15">下属商机</option>
											<option value="/index.php?m=business&amp;a=index&amp;by=all&amp;listrows=15">全部商机</option>
										</select>
									</div>
								</li>
								<li>
									搜索：
									<div class="input-group">
										<input name="m" value="business" type="hidden">
										<input name="a" value="index" type="hidden">
										<input name="field" value="name" type="hidden">
										<input name="condition" value="contains" type="hidden">
										<input name="by" value="" type="hidden">
										<input id="short_search" style="width:200px;" placeholder="商机名/客户名/联系人/电话" onkeydown='if(event.keyCode==13) {$("#short_search_btn").trigger("click");return false;}' class="form-control input-sm" name="search" type="text">
										<span class="input-group-btn">
											<button class="btn btn-default btn-search" id="short_search_btn" type="submit"><i class="fa fa-search"></i></button>
										</span>
										<select class="form-control" name="status_type_id" id="status_type_id" style="margin:0px 10px;width:150px;">
											<option value="1" selected="selected">默认分组</option><option value="2">商机类型2</option><option value="3">商机类型1</option><option value="4">新客户商机</option><option value="5">老客户订货</option><option value="6">项目1</option><option value="7">商机状态</option><option value="8">订单流程</option>										</select>
										<select class="form-control" name="status_id" id="status_id" style="margin:0px 10px;width:150px;">
											<option value="" selected="selected">--请选择--</option>
											<option value="2">发盘</option><option value="3">合同</option><option value="103">联系客户</option><option value="106">khas</option><option value="1">询盘</option><option value="98">中标收款</option><option value="104">样品</option><option value="99">项目失败</option><option value="100">项目落地</option>										</select>
									</div>
									<!-- &nbsp;&nbsp;&nbsp;&nbsp;<a title="高级搜索" href="javascript:void(0)" id="search_type" class="btn btn-white btn-bitbucket"><i class="fa fa-filter" style="color: #D8E3EF;"></i></a> -->
								</li>
							</ul>
						</form>
					</div>
				</div>
				<div class="ibox-content clearfix" id="table_container">
					<form id="form1" method="post" style="position:relative;">
						<div id="table_div" class="nicescroll" style="height: 443.283px; overflow: hidden;" tabindex="0">
							<table class="table table-hover table-striped table_thead_fixed" id="tab_Test3">
									
									<tbody><tr id="childNodes_num" class="tabTh">
										<td style="width:30px;padding-left: 20px" nowrap="nowrap">
											<div class="checkbox checkbox-primary">
												<input class="check_all" type="checkbox">
												<label for=""></label>
											</div>
										</td>
										<td style="width: 6px;" nowrap="nowrap">&nbsp;</td>
										<td nowrap="nowrap">商机名称</td>
																						<td nowrap="nowrap">商机金额</td>	
												<td colspan="3" nowrap="nowrap">商机进度</td>
											<td nowrap="nowrap">联系人</td>
												<td nowrap="nowrap">联系电话</td>
																							<td nowrap="nowrap">客户</td>												<td nowrap="nowrap">下次联系时间</td>												<td nowrap="nowrap">备注</td>												<td nowrap="nowrap">成交几率</td>										<td nowrap="nowrap">收款进度</td>
										<td nowrap="nowrap">商机负责人</td>
										<td nowrap="nowrap">
																							<a href="http://demo2.5kcrm.net/index.php?m=business&amp;a=index&amp;asc_order=create_time&amp;listrows=15" title="点击按时间正序排列">创建时间&nbsp;<span class="fa fa-caret-down"></span></a>										</td>
									</tr>
									<tr class="controls_tr">
											<td style="width: 30px;padding-left: 20px" nowrap="nowrap">
												<div class="checkbox checkbox-primary">
													<input name="business_id[]" class="check_list" value="318" rel="318" rel1="1" rel2="" type="checkbox">
													<label for=""></label>
												</div>
											</td>
											<td nowrap="nowrap">
												<a href="javascript:void(0);" class="remind_view" rel="318">
													<span class="fa fa-bell-o hide" id="remind_view_318" style="font-size:16px;color:orange"></span>
												</a>
											</td>
											<td nowrap="nowrap">
												<a style="border-left: 5px solid #ffb07b;padding-left: 5px;" href="shangjixinxi.htm">M_20171205-0318</a>
																							</td>
																								<td nowrap="nowrap">
														<span style="color:#333333">
																																													</span>
													</td>													<td class="detail-right " style="max-width: 20px;" nowrap="nowrap">
														<a href="javascript:void(0);" data-toggle="tooltip" data-placement="bottom" data-original-title="3-溴-5-胺基苯甲酸、..." rel="318" rel1="320" rel2="20171205-0318" class="product_view tooltip-show"><i class="fa fa-circle fa-1x"></i></a>
													</td>
													<td style="width: 100px;" nowrap="nowrap">
														<div class="progress progress-mini m-b-sm" style="cursor:pointer;background-color: #DDD;" data-toggle="tooltip" data-placement="top" data-original-title="khas">
															<div class="progress-bar progress-bar-warning" style="width: 44%;"></div>
														</div>
													</td>
													<td class="detail-right" style="min-width: 30px;" nowrap="nowrap">
																													<a href="javascript:void(0);" data-toggle="tooltip" data-placement="right" data-original-title="推进进度" rel="318" rel1="320" rel2="20171205-0318" class="advance">
																<i class="fa fa-forward"></i>
															</a>													</td>
																									<td nowrap="nowrap">
														<a href="http://demo2.5kcrm.net/index.php?m=contacts&amp;a=view&amp;id=405">dsfs</a>													</td>
													<td nowrap="nowrap">15910531119</td>
												<td nowrap="nowrap">
														<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=320">武帝时代</a>
													</td>
																									<td nowrap="nowrap">
														<span style="color:#">
																																												</span>
													</td>													<td nowrap="nowrap">
														<span style="color:#">
																																													</span>
													</td>													<td nowrap="nowrap">
														<span style="color:#">
																															10%														</span>
													</td>											<td class="project-completion" nowrap="nowrap">
	                                            <small>当前进度：100%</small>
	                                            <div class="progress progress-mini">
	                                                <div style="width: 100%;" class="progress-bar"></div>
	                                            </div>
	                                        </td>
											<td nowrap="nowrap">
												<a class="role_info" rel="1" href="javascript:void(0)">邹总</a>											</td>
											<td nowrap="nowrap">2017-12-05 18:41:22</td>
										</tr><tr class="controls_tr">
											<td style="width: 30px;padding-left: 20px" nowrap="nowrap">
												<div class="checkbox checkbox-primary">
													<input name="business_id[]" class="check_list" value="401" rel="401" rel1="1" rel2="" type="checkbox">
													<label for=""></label>
												</div>
											</td>
											<td nowrap="nowrap">
												<a href="javascript:void(0);" class="remind_view" rel="401">
													<span class="fa fa-bell-o hide" id="remind_view_401" style="font-size:16px;color:orange"></span>
												</a>
											</td>
											<td nowrap="nowrap">
												<a style="border-left: 5px solid #ffb07b;padding-left: 5px;" href="http://demo2.5kcrm.net/index.php?m=business&amp;a=view&amp;id=401">M_20180123-0401</a>
																							</td>
																								<td nowrap="nowrap">
														<span style="color:#333333">
																																													</span>
													</td>													<td class="detail-right " style="max-width: 20px;" nowrap="nowrap">
														<a href="javascript:void(0);" data-toggle="tooltip" data-placement="bottom" data-original-title="驱蚊器、..." rel="401" rel1="427" rel2="20180123-0401" class="product_view tooltip-show"><i class="fa fa-circle fa-1x"></i></a>
													</td>
													<td style="width: 100px;" nowrap="nowrap">
														<div class="progress progress-mini m-b-sm" style="cursor:pointer;background-color: #DDD;" data-toggle="tooltip" data-placement="top" data-original-title="项目落地">
															<div class="progress-bar progress-bar-success" style="width: 100%;"></div>
														</div>
													</td>
													<td class="detail-right" style="min-width: 30px;" nowrap="nowrap">
																													<a href="javascript:void(0);" data-toggle="tooltip" data-placement="right" data-original-title="推进进度" rel="401" rel1="427" rel2="20180123-0401" class="advance">
																<i class="fa fa-forward"></i>
															</a>													</td>
																									<td nowrap="nowrap">
														<a href="http://demo2.5kcrm.net/index.php?m=contacts&amp;a=view&amp;id=342">李</a>													</td>
													<td nowrap="nowrap"></td>
												<td nowrap="nowrap">
														<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=427">回家</a>
													</td>
																									<td nowrap="nowrap">
														<span style="color:#">
																																												</span>
													</td>													<td nowrap="nowrap">
														<span style="color:#">
																																													</span>
													</td>													<td nowrap="nowrap">
														<span style="color:#">
																															10%														</span>
													</td>											<td class="project-completion" nowrap="nowrap">
	                                            <small>当前进度：0%</small>
	                                            <div class="progress progress-mini">
	                                                <div style="width: 0%;" class="progress-bar"></div>
	                                            </div>
	                                        </td>
											<td nowrap="nowrap">
												<a class="role_info" rel="1" href="javascript:void(0)">邹总</a>											</td>
											<td nowrap="nowrap">2018-01-23 09:57:16</td>
										</tr><tr class="controls_tr">
											<td style="width: 30px;padding-left: 20px" nowrap="nowrap">
												<div class="checkbox checkbox-primary">
													<input name="business_id[]" class="check_list" value="478" rel="478" rel1="1" rel2="1521613560" type="checkbox">
													<label for=""></label>
												</div>
											</td>
											<td nowrap="nowrap">
												<a href="javascript:void(0);" class="remind_view" rel="478">
													<span class="fa fa-bell-o " id="remind_view_478" style="font-size:16px;color:orange"></span>
												</a>
											</td>
											<td nowrap="nowrap">
												<a style="border-left: 5px solid #ffb07b;padding-left: 5px;" href="http://demo2.5kcrm.net/index.php?m=business&amp;a=view&amp;id=478">波音787</a>
																							</td>
																								<td nowrap="nowrap">
														<span style="color:#333333">
																																													</span>
													</td>													<td class="detail-right " style="max-width: 20px;" nowrap="nowrap">
														<a href="javascript:void(0);" data-toggle="tooltip" data-placement="bottom" data-original-title="小小森林" rel="478" rel1="739" rel2="20180305-0478" class="product_view tooltip-show"><i class="fa fa-circle fa-1x"></i></a>
													</td>
													<td style="width: 100px;" nowrap="nowrap">
														<div class="progress progress-mini m-b-sm" style="cursor:pointer;background-color: #DDD;" data-toggle="tooltip" data-placement="top" data-original-title="项目落地">
															<div class="progress-bar progress-bar-success" style="width: 100%;"></div>
														</div>
													</td>
													<td class="detail-right" style="min-width: 30px;" nowrap="nowrap">
																													<a href="javascript:void(0);" data-toggle="tooltip" data-placement="right" data-original-title="推进进度" rel="478" rel1="739" rel2="20180305-0478" class="advance">
																<i class="fa fa-forward"></i>
															</a>													</td>
																									<td nowrap="nowrap">
														<a href="http://demo2.5kcrm.net/index.php?m=contacts&amp;a=view&amp;id=416">刘大元</a>													</td>
													<td nowrap="nowrap">18520945687</td>
												<td nowrap="nowrap">
														<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=739">美的集团股份有限公司</a>
													</td>
																									<td nowrap="nowrap">
														<span style="color:#">
																																												</span>
													</td>													<td nowrap="nowrap">
														<span style="color:#">
																																													</span>
													</td>													<td nowrap="nowrap">
														<span style="color:#">
																															10%														</span>
													</td>											<td class="project-completion" nowrap="nowrap">
	                                            <small>当前进度：500%</small>
	                                            <div class="progress progress-mini">
	                                                <div style="width: 500%;" class="progress-bar"></div>
	                                            </div>
	                                        </td>
											<td nowrap="nowrap">
												<a class="role_info" rel="1" href="javascript:void(0)">邹总</a>											</td>
											<td nowrap="nowrap">2018-03-05 11:20:22</td>
										</tr><tr class="controls_tr">
											<td style="width: 30px;padding-left: 20px" nowrap="nowrap">
												<div class="checkbox checkbox-primary">
													<input name="business_id[]" class="check_list" value="507" rel="507" rel1="" rel2="" type="checkbox">
													<label for=""></label>
												</div>
											</td>
											<td nowrap="nowrap">
												<a href="javascript:void(0);" class="remind_view" rel="507">
													<span class="fa fa-bell-o hide" id="remind_view_507" style="font-size:16px;color:orange"></span>
												</a>
											</td>
											<td nowrap="nowrap">
																									<a style="padding-left: 5px;" href="http://demo2.5kcrm.net/index.php?m=business&amp;a=view&amp;id=507">Mccc_20180314-0507</a>											</td>
																								<td nowrap="nowrap">
														<span style="color:#333333">
																																													</span>
													</td>													<td class="detail-right " style="max-width: 20px;" nowrap="nowrap">
														<a href="javascript:void(0);" data-toggle="tooltip" data-placement="bottom" data-original-title="" rel="507" rel1="628" rel2="20180314-0507" class="product_view tooltip-show"><i class="fa fa-circle fa-1x"></i></a>
													</td>
													<td style="width: 100px;" nowrap="nowrap">
														<div class="progress progress-mini m-b-sm" style="cursor:pointer;background-color: #DDD;" data-toggle="tooltip" data-placement="top" data-original-title="项目落地">
															<div class="progress-bar progress-bar-success" style="width: 100%;"></div>
														</div>
													</td>
													<td class="detail-right" style="min-width: 30px;" nowrap="nowrap">
																													<a href="javascript:void(0);" data-toggle="tooltip" data-placement="right" data-original-title="推进进度" rel="507" rel1="628" rel2="20180314-0507" class="advance">
																<i class="fa fa-forward"></i>
															</a>													</td>
																									<td nowrap="nowrap">
																											</td>
													<td nowrap="nowrap"></td>
												<td nowrap="nowrap">
														<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=628">武帝时代</a>
													</td>
																									<td nowrap="nowrap">
														<span style="color:#">
																																												</span>
													</td>													<td nowrap="nowrap">
														<span style="color:#">
																																													</span>
													</td>													<td nowrap="nowrap">
														<span style="color:#">
																															10%														</span>
													</td>											<td class="project-completion" nowrap="nowrap">
	                                            <small>当前进度：0%</small>
	                                            <div class="progress progress-mini">
	                                                <div style="width: 0%;" class="progress-bar"></div>
	                                            </div>
	                                        </td>
											<td nowrap="nowrap">
												<a class="role_info" rel="1" href="javascript:void(0)">邹总</a>											</td>
											<td nowrap="nowrap">2018-03-14 16:19:36</td>
										</tr><tr class="controls_tr">
											<td style="width: 30px;padding-left: 20px" nowrap="nowrap">
												<div class="checkbox checkbox-primary">
													<input name="business_id[]" class="check_list" value="506" rel="506" rel1="" rel2="" type="checkbox">
													<label for=""></label>
												</div>
											</td>
											<td nowrap="nowrap">
												<a href="javascript:void(0);" class="remind_view" rel="506">
													<span class="fa fa-bell-o hide" id="remind_view_506" style="font-size:16px;color:orange"></span>
												</a>
											</td>
											<td nowrap="nowrap">
																									<a style="padding-left: 5px;" href="http://demo2.5kcrm.net/index.php?m=business&amp;a=view&amp;id=506">Mccc_20180314-0506</a>											</td>
																								<td nowrap="nowrap">
														<span style="color:#333333">
																																													</span>
													</td>													<td class="detail-right " style="max-width: 20px;" nowrap="nowrap">
														<a href="javascript:void(0);" data-toggle="tooltip" data-placement="bottom" data-original-title="" rel="506" rel1="628" rel2="20180314-0506" class="product_view tooltip-show"><i class="fa fa-circle fa-1x"></i></a>
													</td>
													<td style="width: 100px;" nowrap="nowrap">
														<div class="progress progress-mini m-b-sm" style="cursor:pointer;background-color: #DDD;" data-toggle="tooltip" data-placement="top" data-original-title="项目失败">
															<div class="progress-bar progress-bar-danger" style="width: 100%;"></div>
														</div>
													</td>
													<td class="detail-right" style="min-width: 30px;" nowrap="nowrap">
														<i class="fa fa-times-circle" style="color: #ED5565;"></i>
																											</td>
																									<td nowrap="nowrap">
																											</td>
													<td nowrap="nowrap"></td>
												<td nowrap="nowrap">
														<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=628">武帝时代</a>
													</td>
																									<td nowrap="nowrap">
														<span style="color:#">
																																												</span>
													</td>													<td nowrap="nowrap">
														<span style="color:#">
																																													</span>
													</td>													<td nowrap="nowrap">
														<span style="color:#">
																															10%														</span>
													</td>											<td class="project-completion" nowrap="nowrap">
	                                            <small>当前进度：0%</small>
	                                            <div class="progress progress-mini">
	                                                <div style="width: 0%;" class="progress-bar"></div>
	                                            </div>
	                                        </td>
											<td nowrap="nowrap">
												<a class="role_info" rel="1" href="javascript:void(0)">邹总</a>											</td>
											<td nowrap="nowrap">2018-03-14 16:15:45</td>
										</tr><tr class="controls_tr">
											<td style="width: 30px;padding-left: 20px" nowrap="nowrap">
												<div class="checkbox checkbox-primary">
													<input name="business_id[]" class="check_list" value="505" rel="505" rel1="" rel2="" type="checkbox">
													<label for=""></label>
												</div>
											</td>
											<td nowrap="nowrap">
												<a href="javascript:void(0);" class="remind_view" rel="505">
													<span class="fa fa-bell-o hide" id="remind_view_505" style="font-size:16px;color:orange"></span>
												</a>
											</td>
											<td nowrap="nowrap">
																									<a style="padding-left: 5px;" href="http://demo2.5kcrm.net/index.php?m=business&amp;a=view&amp;id=505">Mccc_20180314-0505</a>											</td>
																								<td nowrap="nowrap">
														<span style="color:#333333">
																															1000														</span>
													</td>													<td class="detail-right " style="max-width: 20px;" nowrap="nowrap">
														<a href="javascript:void(0);" data-toggle="tooltip" data-placement="bottom" data-original-title="" rel="505" rel1="739" rel2="20180314-0505" class="product_view tooltip-show"><i class="fa fa-circle fa-1x"></i></a>
													</td>
													<td style="width: 100px;" nowrap="nowrap">
														<div class="progress progress-mini m-b-sm" style="cursor:pointer;background-color: #DDD;" data-toggle="tooltip" data-placement="top" data-original-title="中标收款">
															<div class="progress-bar " style="width: 66%;"></div>
														</div>
													</td>
													<td class="detail-right" style="min-width: 30px;" nowrap="nowrap">
																													<a href="javascript:void(0);" data-toggle="tooltip" data-placement="right" data-original-title="推进进度" rel="505" rel1="739" rel2="20180314-0505" class="advance">
																<i class="fa fa-forward"></i>
															</a>													</td>
																									<td nowrap="nowrap">
														<a href="http://demo2.5kcrm.net/index.php?m=contacts&amp;a=view&amp;id=416">刘大元</a>													</td>
													<td nowrap="nowrap">18520945687</td>
												<td nowrap="nowrap">
														<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=739">美的集团股份有限公司</a>
													</td>
																									<td nowrap="nowrap">
														<span style="color:#">
																																												</span>
													</td>													<td nowrap="nowrap">
														<span style="color:#">
																																													</span>
													</td>													<td nowrap="nowrap">
														<span style="color:#">
																															90%														</span>
													</td>											<td class="project-completion" nowrap="nowrap">
	                                            <small>当前进度：0%</small>
	                                            <div class="progress progress-mini">
	                                                <div style="width: 0%;" class="progress-bar"></div>
	                                            </div>
	                                        </td>
											<td nowrap="nowrap">
												<a class="role_info" rel="1" href="javascript:void(0)">邹总</a>											</td>
											<td nowrap="nowrap">2018-03-14 11:46:58</td>
										</tr><tr class="controls_tr">
											<td style="width: 30px;padding-left: 20px" nowrap="nowrap">
												<div class="checkbox checkbox-primary">
													<input name="business_id[]" class="check_list" value="504" rel="504" rel1="" rel2="" type="checkbox">
													<label for=""></label>
												</div>
											</td>
											<td nowrap="nowrap">
												<a href="javascript:void(0);" class="remind_view" rel="504">
													<span class="fa fa-bell-o hide" id="remind_view_504" style="font-size:16px;color:orange"></span>
												</a>
											</td>
											<td nowrap="nowrap">
																									<a style="padding-left: 5px;" href="http://demo2.5kcrm.net/index.php?m=business&amp;a=view&amp;id=504">Mccc_20180314-0504</a>											</td>
																								<td nowrap="nowrap">
														<span style="color:#333333">
																																													</span>
													</td>													<td class="detail-right " style="max-width: 20px;" nowrap="nowrap">
														<a href="javascript:void(0);" data-toggle="tooltip" data-placement="bottom" data-original-title="1212" rel="504" rel1="320" rel2="20180314-0504" class="product_view tooltip-show"><i class="fa fa-circle fa-1x"></i></a>
													</td>
													<td style="width: 100px;" nowrap="nowrap">
														<div class="progress progress-mini m-b-sm" style="cursor:pointer;background-color: #DDD;" data-toggle="tooltip" data-placement="top" data-original-title="发盘">
															<div class="progress-bar progress-bar-danger" style="width: 11%;"></div>
														</div>
													</td>
													<td class="detail-right" style="min-width: 30px;" nowrap="nowrap">
																													<a href="javascript:void(0);" data-toggle="tooltip" data-placement="right" data-original-title="推进进度" rel="504" rel1="320" rel2="20180314-0504" class="advance">
																<i class="fa fa-forward"></i>
															</a>													</td>
																									<td nowrap="nowrap">
														<a href="http://demo2.5kcrm.net/index.php?m=contacts&amp;a=view&amp;id=405">dsfs</a>													</td>
													<td nowrap="nowrap">15910531119</td>
												<td nowrap="nowrap">
														<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=320">武帝时代</a>
													</td>
																									<td nowrap="nowrap">
														<span style="color:#">
																																												</span>
													</td>													<td nowrap="nowrap">
														<span style="color:#">
																																													</span>
													</td>													<td nowrap="nowrap">
														<span style="color:#">
																															10%														</span>
													</td>											<td class="project-completion" nowrap="nowrap">
	                                            <small>当前进度：0%</small>
	                                            <div class="progress progress-mini">
	                                                <div style="width: 0%;" class="progress-bar"></div>
	                                            </div>
	                                        </td>
											<td nowrap="nowrap">
												<a class="role_info" rel="1" href="javascript:void(0)">邹总</a>											</td>
											<td nowrap="nowrap">2018-03-14 11:45:35</td>
										</tr><tr class="controls_tr">
											<td style="width: 30px;padding-left: 20px" nowrap="nowrap">
												<div class="checkbox checkbox-primary">
													<input name="business_id[]" class="check_list" value="503" rel="503" rel1="" rel2="" type="checkbox">
													<label for=""></label>
												</div>
											</td>
											<td nowrap="nowrap">
												<a href="javascript:void(0);" class="remind_view" rel="503">
													<span class="fa fa-bell-o hide" id="remind_view_503" style="font-size:16px;color:orange"></span>
												</a>
											</td>
											<td nowrap="nowrap">
																									<a style="padding-left: 5px;" href="http://demo2.5kcrm.net/index.php?m=business&amp;a=view&amp;id=503">Mccc_20180314-0503</a>											</td>
																								<td nowrap="nowrap">
														<span style="color:#333333">
																																													</span>
													</td>													<td class="detail-right " style="max-width: 20px;" nowrap="nowrap">
														<a href="javascript:void(0);" data-toggle="tooltip" data-placement="bottom" data-original-title="白" rel="503" rel1="734" rel2="20180314-0503" class="product_view tooltip-show"><i class="fa fa-circle fa-1x"></i></a>
													</td>
													<td style="width: 100px;" nowrap="nowrap">
														<div class="progress progress-mini m-b-sm" style="cursor:pointer;background-color: #DDD;" data-toggle="tooltip" data-placement="top" data-original-title="项目落地">
															<div class="progress-bar progress-bar-success" style="width: 100%;"></div>
														</div>
													</td>
													<td class="detail-right" style="min-width: 30px;" nowrap="nowrap">
																													<a href="javascript:void(0);" data-toggle="tooltip" data-placement="right" data-original-title="推进进度" rel="503" rel1="734" rel2="20180314-0503" class="advance">
																<i class="fa fa-forward"></i>
															</a>													</td>
																									<td nowrap="nowrap">
														<a href="http://demo2.5kcrm.net/index.php?m=contacts&amp;a=view&amp;id=409">张三</a>													</td>
													<td nowrap="nowrap">17700000000</td>
												<td nowrap="nowrap">
														<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=734">张三公司</a>
													</td>
																									<td nowrap="nowrap">
														<span style="color:#">
																																												</span>
													</td>													<td nowrap="nowrap">
														<span style="color:#">
																																													</span>
													</td>													<td nowrap="nowrap">
														<span style="color:#">
																															30%														</span>
													</td>											<td class="project-completion" nowrap="nowrap">
	                                            <small>当前进度：0%</small>
	                                            <div class="progress progress-mini">
	                                                <div style="width: 0%;" class="progress-bar"></div>
	                                            </div>
	                                        </td>
											<td nowrap="nowrap">
												<a class="role_info" rel="1" href="javascript:void(0)">邹总</a>											</td>
											<td nowrap="nowrap">2018-03-14 11:37:34</td>
										</tr><tr class="controls_tr">
											<td style="width: 30px;padding-left: 20px" nowrap="nowrap">
												<div class="checkbox checkbox-primary">
													<input name="business_id[]" class="check_list" value="502" rel="502" rel1="" rel2="" type="checkbox">
													<label for=""></label>
												</div>
											</td>
											<td nowrap="nowrap">
												<a href="javascript:void(0);" class="remind_view" rel="502">
													<span class="fa fa-bell-o hide" id="remind_view_502" style="font-size:16px;color:orange"></span>
												</a>
											</td>
											<td nowrap="nowrap">
																									<a style="padding-left: 5px;" href="http://demo2.5kcrm.net/index.php?m=business&amp;a=view&amp;id=502">Mccc_20180314-0502</a>											</td>
																								<td nowrap="nowrap">
														<span style="color:#333333">
																																													</span>
													</td>													<td class="detail-right " style="max-width: 20px;" nowrap="nowrap">
														<a href="javascript:void(0);" data-toggle="tooltip" data-placement="bottom" data-original-title="士大夫撒个" rel="502" rel1="734" rel2="20180314-0502" class="product_view tooltip-show"><i class="fa fa-circle fa-1x"></i></a>
													</td>
													<td style="width: 100px;" nowrap="nowrap">
														<div class="progress progress-mini m-b-sm" style="cursor:pointer;background-color: #DDD;" data-toggle="tooltip" data-placement="top" data-original-title="合同">
															<div class="progress-bar progress-bar-danger" style="width: 22%;"></div>
														</div>
													</td>
													<td class="detail-right" style="min-width: 30px;" nowrap="nowrap">
																													<a href="javascript:void(0);" data-toggle="tooltip" data-placement="right" data-original-title="推进进度" rel="502" rel1="734" rel2="20180314-0502" class="advance">
																<i class="fa fa-forward"></i>
															</a>													</td>
																									<td nowrap="nowrap">
														<a href="http://demo2.5kcrm.net/index.php?m=contacts&amp;a=view&amp;id=409">张三</a>													</td>
													<td nowrap="nowrap">17700000000</td>
												<td nowrap="nowrap">
														<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=734">张三公司</a>
													</td>
																									<td nowrap="nowrap">
														<span style="color:#">
																																												</span>
													</td>													<td nowrap="nowrap">
														<span style="color:#">
																																													</span>
													</td>													<td nowrap="nowrap">
														<span style="color:#">
																															10%														</span>
													</td>											<td class="project-completion" nowrap="nowrap">
	                                            <small>当前进度：0%</small>
	                                            <div class="progress progress-mini">
	                                                <div style="width: 0%;" class="progress-bar"></div>
	                                            </div>
	                                        </td>
											<td nowrap="nowrap">
												<a class="role_info" rel="1" href="javascript:void(0)">邹总</a>											</td>
											<td nowrap="nowrap">2018-03-14 11:18:57</td>
										</tr><tr class="controls_tr">
											<td style="width: 30px;padding-left: 20px" nowrap="nowrap">
												<div class="checkbox checkbox-primary">
													<input name="business_id[]" class="check_list" value="501" rel="501" rel1="" rel2="" type="checkbox">
													<label for=""></label>
												</div>
											</td>
											<td nowrap="nowrap">
												<a href="javascript:void(0);" class="remind_view" rel="501">
													<span class="fa fa-bell-o hide" id="remind_view_501" style="font-size:16px;color:orange"></span>
												</a>
											</td>
											<td nowrap="nowrap">
																									<a style="padding-left: 5px;" href="http://demo2.5kcrm.net/index.php?m=business&amp;a=view&amp;id=501">Mccc_20180313-0501</a>											</td>
																								<td nowrap="nowrap">
														<span style="color:#333333">
																																													</span>
													</td>													<td class="detail-right " style="max-width: 20px;" nowrap="nowrap">
														<a href="javascript:void(0);" data-toggle="tooltip" data-placement="bottom" data-original-title="白" rel="501" rel1="518" rel2="20180313-0501" class="product_view tooltip-show"><i class="fa fa-circle fa-1x"></i></a>
													</td>
													<td style="width: 100px;" nowrap="nowrap">
														<div class="progress progress-mini m-b-sm" style="cursor:pointer;background-color: #DDD;" data-toggle="tooltip" data-placement="top" data-original-title="发盘">
															<div class="progress-bar progress-bar-danger" style="width: 11%;"></div>
														</div>
													</td>
													<td class="detail-right" style="min-width: 30px;" nowrap="nowrap">
																													<a href="javascript:void(0);" data-toggle="tooltip" data-placement="right" data-original-title="推进进度" rel="501" rel1="518" rel2="20180313-0501" class="advance">
																<i class="fa fa-forward"></i>
															</a>													</td>
																									<td nowrap="nowrap">
														<a href="http://demo2.5kcrm.net/index.php?m=contacts&amp;a=view&amp;id=395">花花</a>													</td>
													<td nowrap="nowrap"></td>
												<td nowrap="nowrap">
														<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=518"></a>
													</td>
																									<td nowrap="nowrap">
														<span style="color:#">
																																												</span>
													</td>													<td nowrap="nowrap">
														<span style="color:#">
																																													</span>
													</td>													<td nowrap="nowrap">
														<span style="color:#">
																															100%														</span>
													</td>											<td class="project-completion" nowrap="nowrap">
	                                            <small>当前进度：0%</small>
	                                            <div class="progress progress-mini">
	                                                <div style="width: 0%;" class="progress-bar"></div>
	                                            </div>
	                                        </td>
											<td nowrap="nowrap">
												<a class="role_info" rel="1" href="javascript:void(0)">邹总</a>											</td>
											<td nowrap="nowrap">2018-03-13 15:29:45</td>
										</tr><tr class="controls_tr">
											<td style="width: 30px;padding-left: 20px" nowrap="nowrap">
												<div class="checkbox checkbox-primary">
													<input name="business_id[]" class="check_list" value="500" rel="500" rel1="" rel2="" type="checkbox">
													<label for=""></label>
												</div>
											</td>
											<td nowrap="nowrap">
												<a href="javascript:void(0);" class="remind_view" rel="500">
													<span class="fa fa-bell-o hide" id="remind_view_500" style="font-size:16px;color:orange"></span>
												</a>
											</td>
											<td nowrap="nowrap">
																									<a style="padding-left: 5px;" href="http://demo2.5kcrm.net/index.php?m=business&amp;a=view&amp;id=500">Mccc_20180312-0500</a>											</td>
																								<td nowrap="nowrap">
														<span style="color:#333333">
																																													</span>
													</td>													<td class="detail-right " style="max-width: 20px;" nowrap="nowrap">
														<a href="javascript:void(0);" data-toggle="tooltip" data-placement="bottom" data-original-title="" rel="500" rel1="739" rel2="20180312-0500" class="product_view tooltip-show"><i class="fa fa-circle fa-1x"></i></a>
													</td>
													<td style="width: 100px;" nowrap="nowrap">
														<div class="progress progress-mini m-b-sm" style="cursor:pointer;background-color: #DDD;" data-toggle="tooltip" data-placement="top" data-original-title="发盘">
															<div class="progress-bar progress-bar-danger" style="width: 11%;"></div>
														</div>
													</td>
													<td class="detail-right" style="min-width: 30px;" nowrap="nowrap">
																													<a href="javascript:void(0);" data-toggle="tooltip" data-placement="right" data-original-title="推进进度" rel="500" rel1="739" rel2="20180312-0500" class="advance">
																<i class="fa fa-forward"></i>
															</a>													</td>
																									<td nowrap="nowrap">
														<a href="http://demo2.5kcrm.net/index.php?m=contacts&amp;a=view&amp;id=416">刘大元</a>													</td>
													<td nowrap="nowrap">18520945687</td>
												<td nowrap="nowrap">
														<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=739">美的集团股份有限公司</a>
													</td>
																									<td nowrap="nowrap">
														<span style="color:#">
															2018-03-13 17:43																													</span>
													</td>													<td nowrap="nowrap">
														<span style="color:#">
																																													</span>
													</td>													<td nowrap="nowrap">
														<span style="color:#">
																															10%														</span>
													</td>											<td class="project-completion" nowrap="nowrap">
	                                            <small>当前进度：0%</small>
	                                            <div class="progress progress-mini">
	                                                <div style="width: 0%;" class="progress-bar"></div>
	                                            </div>
	                                        </td>
											<td nowrap="nowrap">
												<a class="role_info" rel="1" href="javascript:void(0)">邹总</a>											</td>
											<td nowrap="nowrap">2018-03-12 17:43:06</td>
										</tr><tr class="controls_tr">
											<td style="width: 30px;padding-left: 20px" nowrap="nowrap">
												<div class="checkbox checkbox-primary">
													<input name="business_id[]" class="check_list" value="499" rel="499" rel1="" rel2="" type="checkbox">
													<label for=""></label>
												</div>
											</td>
											<td nowrap="nowrap">
												<a href="javascript:void(0);" class="remind_view" rel="499">
													<span class="fa fa-bell-o hide" id="remind_view_499" style="font-size:16px;color:orange"></span>
												</a>
											</td>
											<td nowrap="nowrap">
																									<a style="padding-left: 5px;" href="http://demo2.5kcrm.net/index.php?m=business&amp;a=view&amp;id=499">研发项目管理系统</a>											</td>
																								<td nowrap="nowrap">
														<span style="color:#333333">
																																													</span>
													</td>													<td class="detail-right " style="max-width: 20px;" nowrap="nowrap">
														<a href="javascript:void(0);" data-toggle="tooltip" data-placement="bottom" data-original-title="" rel="499" rel1="739" rel2="20180312-0499" class="product_view tooltip-show"><i class="fa fa-circle fa-1x"></i></a>
													</td>
													<td style="width: 100px;" nowrap="nowrap">
														<div class="progress progress-mini m-b-sm" style="cursor:pointer;background-color: #DDD;" data-toggle="tooltip" data-placement="top" data-original-title="项目落地">
															<div class="progress-bar progress-bar-success" style="width: 100%;"></div>
														</div>
													</td>
													<td class="detail-right" style="min-width: 30px;" nowrap="nowrap">
																													<a href="javascript:void(0);" data-toggle="tooltip" data-placement="right" data-original-title="推进进度" rel="499" rel1="739" rel2="20180312-0499" class="advance">
																<i class="fa fa-forward"></i>
															</a>													</td>
																									<td nowrap="nowrap">
														<a href="http://demo2.5kcrm.net/index.php?m=contacts&amp;a=view&amp;id=416">刘大元</a>													</td>
													<td nowrap="nowrap">18520945687</td>
												<td nowrap="nowrap">
														<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=739">美的集团股份有限公司</a>
													</td>
																									<td nowrap="nowrap">
														<span style="color:#">
																																												</span>
													</td>													<td nowrap="nowrap">
														<span style="color:#">
																																													</span>
													</td>													<td nowrap="nowrap">
														<span style="color:#">
																															80%														</span>
													</td>											<td class="project-completion" nowrap="nowrap">
	                                            <small>当前进度：0%</small>
	                                            <div class="progress progress-mini">
	                                                <div style="width: 0%;" class="progress-bar"></div>
	                                            </div>
	                                        </td>
											<td nowrap="nowrap">
												<a class="role_info" rel="1" href="javascript:void(0)">邹总</a>											</td>
											<td nowrap="nowrap">2018-03-12 17:39:32</td>
										</tr><tr class="controls_tr">
											<td style="width: 30px;padding-left: 20px" nowrap="nowrap">
												<div class="checkbox checkbox-primary">
													<input name="business_id[]" class="check_list" value="498" rel="498" rel1="" rel2="" type="checkbox">
													<label for=""></label>
												</div>
											</td>
											<td nowrap="nowrap">
												<a href="javascript:void(0);" class="remind_view" rel="498">
													<span class="fa fa-bell-o hide" id="remind_view_498" style="font-size:16px;color:orange"></span>
												</a>
											</td>
											<td nowrap="nowrap">
																									<a style="padding-left: 5px;" href="http://demo2.5kcrm.net/index.php?m=business&amp;a=view&amp;id=498">美的试验室排班管理系统</a>											</td>
																								<td nowrap="nowrap">
														<span style="color:#333333">
																																													</span>
													</td>													<td class="detail-right " style="max-width: 20px;" nowrap="nowrap">
														<a href="javascript:void(0);" data-toggle="tooltip" data-placement="bottom" data-original-title="" rel="498" rel1="739" rel2="20180312-0498" class="product_view tooltip-show"><i class="fa fa-circle fa-1x"></i></a>
													</td>
													<td style="width: 100px;" nowrap="nowrap">
														<div class="progress progress-mini m-b-sm" style="cursor:pointer;background-color: #DDD;" data-toggle="tooltip" data-placement="top" data-original-title="询价报价">
															<div class="progress-bar progress-bar-danger" style="width: 12%;"></div>
														</div>
													</td>
													<td class="detail-right" style="min-width: 30px;" nowrap="nowrap">
																													<a href="javascript:void(0);" data-toggle="tooltip" data-placement="right" data-original-title="推进进度" rel="498" rel1="739" rel2="20180312-0498" class="advance">
																<i class="fa fa-forward"></i>
															</a>													</td>
																									<td nowrap="nowrap">
														<a href="http://demo2.5kcrm.net/index.php?m=contacts&amp;a=view&amp;id=416">刘大元</a>													</td>
													<td nowrap="nowrap">18520945687</td>
												<td nowrap="nowrap">
														<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=739">美的集团股份有限公司</a>
													</td>
																									<td nowrap="nowrap">
														<span style="color:#">
																																												</span>
													</td>													<td nowrap="nowrap">
														<span style="color:#">
																																													</span>
													</td>													<td nowrap="nowrap">
														<span style="color:#">
																															90%														</span>
													</td>											<td class="project-completion" nowrap="nowrap">
	                                            <small>当前进度：0%</small>
	                                            <div class="progress progress-mini">
	                                                <div style="width: 0%;" class="progress-bar"></div>
	                                            </div>
	                                        </td>
											<td nowrap="nowrap">
												<a class="role_info" rel="1" href="javascript:void(0)">邹总</a>											</td>
											<td nowrap="nowrap">2018-03-12 17:39:05</td>
										</tr><tr class="controls_tr">
											<td style="width: 30px;padding-left: 20px" nowrap="nowrap">
												<div class="checkbox checkbox-primary">
													<input name="business_id[]" class="check_list" value="497" rel="497" rel1="" rel2="" type="checkbox">
													<label for=""></label>
												</div>
											</td>
											<td nowrap="nowrap">
												<a href="javascript:void(0);" class="remind_view" rel="497">
													<span class="fa fa-bell-o hide" id="remind_view_497" style="font-size:16px;color:orange"></span>
												</a>
											</td>
											<td nowrap="nowrap">
																									<a style="padding-left: 5px;" href="http://demo2.5kcrm.net/index.php?m=business&amp;a=view&amp;id=497">Mccc_20180312-0497</a>											</td>
																								<td nowrap="nowrap">
														<span style="color:#333333">
																																													</span>
													</td>													<td class="detail-right " style="max-width: 20px;" nowrap="nowrap">
														<a href="javascript:void(0);" data-toggle="tooltip" data-placement="bottom" data-original-title="crm、..." rel="497" rel1="734" rel2="20180312-0497" class="product_view tooltip-show"><i class="fa fa-circle fa-1x"></i></a>
													</td>
													<td style="width: 100px;" nowrap="nowrap">
														<div class="progress progress-mini m-b-sm" style="cursor:pointer;background-color: #DDD;" data-toggle="tooltip" data-placement="top" data-original-title="询价报价">
															<div class="progress-bar progress-bar-danger" style="width: 12%;"></div>
														</div>
													</td>
													<td class="detail-right" style="min-width: 30px;" nowrap="nowrap">
																													<a href="javascript:void(0);" data-toggle="tooltip" data-placement="right" data-original-title="推进进度" rel="497" rel1="734" rel2="20180312-0497" class="advance">
																<i class="fa fa-forward"></i>
															</a>													</td>
																									<td nowrap="nowrap">
														<a href="http://demo2.5kcrm.net/index.php?m=contacts&amp;a=view&amp;id=409">张三</a>													</td>
													<td nowrap="nowrap">17700000000</td>
												<td nowrap="nowrap">
														<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=734">张三公司</a>
													</td>
																									<td nowrap="nowrap">
														<span style="color:#">
															2018-03-15 11:15																													</span>
													</td>													<td nowrap="nowrap">
														<span style="color:#">
																																													</span>
													</td>													<td nowrap="nowrap">
														<span style="color:#">
																															10%														</span>
													</td>											<td class="project-completion" nowrap="nowrap">
	                                            <small>当前进度：0%</small>
	                                            <div class="progress progress-mini">
	                                                <div style="width: 0%;" class="progress-bar"></div>
	                                            </div>
	                                        </td>
											<td nowrap="nowrap">
												<a class="role_info" rel="1" href="javascript:void(0)">邹总</a>											</td>
											<td nowrap="nowrap">2018-03-12 12:05:42</td>
										</tr><tr class="controls_tr">
											<td style="width: 30px;padding-left: 20px" nowrap="nowrap">
												<div class="checkbox checkbox-primary">
													<input name="business_id[]" class="check_list" value="496" rel="496" rel1="" rel2="" type="checkbox">
													<label for=""></label>
												</div>
											</td>
											<td nowrap="nowrap">
												<a href="javascript:void(0);" class="remind_view" rel="496">
													<span class="fa fa-bell-o hide" id="remind_view_496" style="font-size:16px;color:orange"></span>
												</a>
											</td>
											<td nowrap="nowrap">
																									<a style="padding-left: 5px;" href="http://demo2.5kcrm.net/index.php?m=business&amp;a=view&amp;id=496">Mccc_20180312-0496</a>											</td>
																								<td nowrap="nowrap">
														<span style="color:#333333">
																																													</span>
													</td>													<td class="detail-right " style="max-width: 20px;" nowrap="nowrap">
														<a href="javascript:void(0);" data-toggle="tooltip" data-placement="bottom" data-original-title="1212" rel="496" rel1="470" rel2="20180312-0496" class="product_view tooltip-show"><i class="fa fa-circle fa-1x"></i></a>
													</td>
													<td style="width: 100px;" nowrap="nowrap">
														<div class="progress progress-mini m-b-sm" style="cursor:pointer;background-color: #DDD;" data-toggle="tooltip" data-placement="top" data-original-title="发盘">
															<div class="progress-bar progress-bar-danger" style="width: 11%;"></div>
														</div>
													</td>
													<td class="detail-right" style="min-width: 30px;" nowrap="nowrap">
																													<a href="javascript:void(0);" data-toggle="tooltip" data-placement="right" data-original-title="推进进度" rel="496" rel1="470" rel2="20180312-0496" class="advance">
																<i class="fa fa-forward"></i>
															</a>													</td>
																									<td nowrap="nowrap">
														<a href="http://demo2.5kcrm.net/index.php?m=contacts&amp;a=view&amp;id=414">323</a>													</td>
													<td nowrap="nowrap">13112123123</td>
												<td nowrap="nowrap">
														<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=470">郑州职业技术学院</a>
													</td>
																									<td nowrap="nowrap">
														<span style="color:#">
																																												</span>
													</td>													<td nowrap="nowrap">
														<span style="color:#">
																																													</span>
													</td>													<td nowrap="nowrap">
														<span style="color:#">
																															10%														</span>
													</td>											<td class="project-completion" nowrap="nowrap">
	                                            <small>当前进度：0%</small>
	                                            <div class="progress progress-mini">
	                                                <div style="width: 0%;" class="progress-bar"></div>
	                                            </div>
	                                        </td>
											<td nowrap="nowrap">
												<a class="role_info" rel="1" href="javascript:void(0)">邹总</a>											</td>
											<td nowrap="nowrap">2018-03-12 11:05:23</td>
										</tr>							</tbody></table>
						</div>
						<div id="tfoot_div" class="clearfix">
							<div class="clearfix" id="tfoot_page">
								 <div style="margin: 10px auto;"><div style="width:auto;float:right;margin-left:15px;line-height: 30px;"><select style="width:auto;display:inline-block;" id="go_page" class="form-control input-sm" name="p" onchange="go_pagep(this.value)"><option value="/index.php?m=business&amp;a=index&amp;listrows=15&amp;p=1" selected="selected">1</option><option value="/index.php?m=business&amp;a=index&amp;listrows=15&amp;p=2">2</option><option value="/index.php?m=business&amp;a=index&amp;listrows=15&amp;p=3">3</option><option value="/index.php?m=business&amp;a=index&amp;listrows=15&amp;p=4">4</option><option value="/index.php?m=business&amp;a=index&amp;listrows=15&amp;p=5">5</option><option value="/index.php?m=business&amp;a=index&amp;listrows=15&amp;p=6">6</option><option value="/index.php?m=business&amp;a=index&amp;listrows=15&amp;p=7">7</option><option value="/index.php?m=business&amp;a=index&amp;listrows=15&amp;p=8">8</option><option value="/index.php?m=business&amp;a=index&amp;listrows=15&amp;p=9">9</option><option value="/index.php?m=business&amp;a=index&amp;listrows=15&amp;p=10">10</option><option value="/index.php?m=business&amp;a=index&amp;listrows=15&amp;p=11">11</option><option value="/index.php?m=business&amp;a=index&amp;listrows=15&amp;p=12">12</option><option value="/index.php?m=business&amp;a=index&amp;listrows=15&amp;p=13">13</option><option value="/index.php?m=business&amp;a=index&amp;listrows=15&amp;p=14">14</option><option value="/index.php?m=business&amp;a=index&amp;listrows=15&amp;p=15">15</option><option value="/index.php?m=business&amp;a=index&amp;listrows=15&amp;p=16">16</option><option value="/index.php?m=business&amp;a=index&amp;listrows=15&amp;p=17">17</option><option value="/index.php?m=business&amp;a=index&amp;listrows=15&amp;p=18">18</option><option value="/index.php?m=business&amp;a=index&amp;listrows=15&amp;p=19">19</option><option value="/index.php?m=business&amp;a=index&amp;listrows=15&amp;p=20">20</option><option value="/index.php?m=business&amp;a=index&amp;listrows=15&amp;p=21">21</option><option value="/index.php?m=business&amp;a=index&amp;listrows=15&amp;p=22">22</option><option value="/index.php?m=business&amp;a=index&amp;listrows=15&amp;p=23">23</option><option value="/index.php?m=business&amp;a=index&amp;listrows=15&amp;p=24">24</option><option value="/index.php?m=business&amp;a=index&amp;listrows=15&amp;p=25">25</option><option value="/index.php?m=business&amp;a=index&amp;listrows=15&amp;p=26">26</option></select><script type="text/javascript">
		function changeURLArg(url,arg,arg_val){ 
			var pattern=arg+"=([^&]*)"; 
			var replaceText=arg+"="+arg_val; 
			if(url.match(pattern)){ 
			var tmp="/("+ arg+"=)([^&]*)/gi"; 
			        tmp=url.replace(eval(tmp),replaceText); 
			return tmp; 
			    }else{ 
			if(url.match("[\?]")){ 
			return url+"&"+replaceText; 
			        }else{ 
			return url+"?"+replaceText; 
			        } 
			    } 
			return url+"\n"+arg+"\n"+arg_val; 
		} 
       function go_pagep(page){
			var listrows = $("#listrows option:selected").val();
			if(page.indexOf("listrows") <= 0){
				if(listrows > 0){
					window.location = page+"&listrows="+listrows;
				}else{
					window.location = page;
				}
			}else{
				window.location = changeURLArg(page,"listrows",listrows);
			}
        }
        </script>页</div><div style="width:auto;height:30px;float:right;margin:2px 0px 0px 15px"><div><ul class="pagination" style="float:right;margin-top:0px"><li><span>« </span></li><li><span class="current btn-default active">1</span><a href="http://demo2.5kcrm.net/index.php?m=business&amp;a=index&amp;listrows=15&amp;p=2">2</a><a href="http://demo2.5kcrm.net/index.php?m=business&amp;a=index&amp;listrows=15&amp;p=3">3</a></li><li><a href="http://demo2.5kcrm.net/index.php?m=business&amp;a=index&amp;listrows=15&amp;p=2"> »</a></li></ul></div></div><div style="width:auto;float:right;margin-top:7px;margin-left:35px">共385 条 1/26 页</div></div> <div class="pull-right" style="width:auto;"><select style="width:auto;display:inline-block;" id="listrows" name="listrows" rel="15" class="form-control input-sm"><option value="10">10</option><option value="15" checked="true" selected="selected">15</option><option value="20">20</option><option value="30">30</option><option value="40">40</option><option value="50">50</option><option value="60">60</option><option value="70">70</option><option value="80">80</option><option value="90">90</option><option value="100">100</option></select></div>
<script type="text/javascript">
function changeURLArg(url,arg,arg_val){ 
	var pattern=arg+'=([^&]*)'; 
	var replaceText=arg+'='+arg_val; 
	if(url.match(pattern)){ 
	var tmp='/('+ arg+'=)([^&]*)/gi'; 
	        tmp=url.replace(eval(tmp),replaceText); 
	return tmp; 
	    }else{ 
	if(url.match('[?]')){ 
	return url+'&'+replaceText; 
	        }else{ 
	return url+'?'+replaceText; 
	        } 
	    } 
	return url+'\n'+arg+'\n'+arg_val; 
} 
var list_rows = $("#listrows").attr('rel');
$("#listrows").val(list_rows);
$("#listrows").change(function(){
	var every_listrows = $(this).val();
	var this_url = window.location.search;
	if(this_url.indexOf("listrows") > 0){
		window.location = changeURLArg(this_url,'listrows',every_listrows);
	}else{
		window.location = this_url+"&listrows="+every_listrows;
	}
});
</script>
							</div>
						</div>
					<div id="oDivH_tab_Test3" style="overflow: hidden; width: 1237px; position: absolute; z-index: 9; left: 0px; top: 0px;"><table class="table table-hover table-striped table_thead_fixed" style="width: 1245px; height: 46px;"><tbody><tr class="tabTh"><td style="width: 72px; padding-left: 20px; height: 45px;" nowrap="nowrap">
											<div class="checkbox checkbox-primary">
												<input class="check_all" type="checkbox">
												<label for=""></label>
											</div>
										</td><td style="width: 29px; height: 45px;" nowrap="nowrap">&nbsp;</td><td style="height: 45px; width: 162px;" nowrap="nowrap">商机名称</td><td style="height: 45px; width: 66px;" nowrap="nowrap">商机金额</td><td colspan="3" style="height: 45px; width: 91px;" nowrap="nowrap">商机进度</td><td style="height: 45px; width: 53px;" nowrap="nowrap">联系人</td><td style="height: 45px; width: 98px;" nowrap="nowrap">联系电话</td><td style="height: 45px; width: 144px;" nowrap="nowrap">客户</td><td style="height: 45px; width: 124px;" nowrap="nowrap">下次联系时间</td><td style="height: 45px; width: 40px;" nowrap="nowrap">备注</td><td style="height: 45px; width: 66px;" nowrap="nowrap">成交几率</td><td style="height: 45px; width: 99px;" nowrap="nowrap">收款进度</td><td style="height: 45px; width: 79px;" nowrap="nowrap">商机负责人</td><td style="height: 45px; width: 142px;" nowrap="nowrap">
																							<a href="http://demo2.5kcrm.net/index.php?m=business&amp;a=index&amp;asc_order=create_time&amp;listrows=15" title="点击按时间正序排列">创建时间&nbsp;<span class="fa fa-caret-down"></span></a>										</td></tr></tbody></table></div></form>
				</div>
            </div>
        </div>
    </div>
</div>






<script type="text/javascript">
/*让复选框默认取消选择*/
$(':checkbox').prop('checked', false);

$('[data-toggle="tooltip"]').tooltip({html:true});

//商机状态
$('#status_id').val(""); 
$('#status_id').change(function(){ 
	$('#business_search').submit(); 
});

//状态分组
var status_type_id = 1;
$('#status_type_id').val(status_type_id); 
$('#status_type_id').change(function(){
	var type_id = $(this).val();
	var temp = '<option value="">--请选择--</option>';
	if(type_id){
		$.ajax({
			'type':'get',
			'data': {'type_id':type_id},
			'dataType':'json',
			'url':'/index.php?m=business&a=getbusinessStatus',
			'success':function(data){
				if(data.status == 1){
					$('#status_id').html('');
					$.each(data.data, function(k, v){
						temp += '<option value="'+v.status_id+'">'+v.name+'</option>';
					});
					$('#status_id').html(temp);
				}else{
					alert_crm(data.info)
				}
			}
		});
	}
	$('#business_search').submit();
});

$('#example').mouseenter(function(){
	$('.tooltip').css('opacity','1');
})
$('#example').mouseleave(function(){
	$('.tooltip').css('opacity','0');
});
$(".controls_tr").mouseenter(function(){
	$(this).find(".controls").show();
}).mouseleave(function(){
	$(this).find(".controls").hide();
});

var url = "/index.php?m=business&a=getcurrentstatus";
var limit_size = 1000;
var count = 385;
var i = 1;  
function remainTime(){
	var id_array = new Array(); 
	$("input[class='check_list']:checked").each(function() {   
		id_array.push($(this).val());
	});  
	$.get(url,function(data){
		if(data.data == 0){
			if((i-1)*limit_size < count){
				$("#act").val('excel');	
				$("#current_page").val(i);
				$("#export_limit").val(limit_size);
				$("#daochu").val(id_array);
				$("#searchForm").submit();
				setTimeout("remainTime()",1000); 
				i++; 
			}else{
				i = 1;
			}
		}else{
			setTimeout("remainTime()",1000); 
		}
	}, 'json');
}

$("#dialog-product_view").dialog({
    autoOpen: false,
    modal: true,
    minWidth: 800,
    maxHeight: 600,
    position: ["center",100]
});
//产品详情
$(".product_view").click(function(){
    var business_id = $(this).attr('rel');
    var customer_id = $(this).attr('rel1');
    var code = $(this).attr('rel2');
    //判断是否有商机编号，如果没有则提示添加产品
    if(!code){
    	swal({
	        title: "请先添加产品信息",
	        text: "",
	        type: "warning",
	        showCancelButton: true,
	        confirmButtonColor: "#DD6B55",
	        confirmButtonText: "添加产品",
	        closeOnConfirm: true,
	    }, function () {
			$('#dialog-addproduct').dialog('open');
			$('#dialog-addproduct').load('/index.php?m=product&a=mutildialog_product&customer_id='+customer_id);
	    });
    }else{
    	$('#dialog-product_view').dialog('open');
    	$('#dialog-product_view').load('/index.php?m=business&a=product_view&id='+business_id);
    }
});
/*营销阶段*/
$("#dialog-advance").dialog({
    autoOpen: false,
    modal: true,
    minWidth: 320,
    maxHeight: 800,
    position: ["center",100]
});
//推进
$(".advance").click(function(){
    var business_id = $(this).attr('rel');
    var customer_id = $(this).attr('rel1');
    var code = $(this).attr('rel2');
	$('#dialog-advance').dialog('open');
	$('#dialog-advance').load('/index.php?m=business&a=advance&id='+business_id);
});

$("#remind").click(function(){
	var business_id = $(this).attr('rel1');
	$('#dialog-remind').dialog('open');
	$('#dialog-remind').load("/index.php?m=remind&a=add&module=business&module_id="+business_id);
});

$(".remind_view").click(function(){
	var business_id = $(this).attr('rel');
	$('#dialog-remind_view').dialog('open');
	$('#dialog-remind_view').load("/index.php?m=remind&a=view&module=business&module_id="+business_id);
});

$("#to_top").click(function(){
	var business_id = $(this).attr('rel');
	$("#form1").attr('action', '/index.php?m=customer&a=settop&module=business&module_id='+business_id);
	$("#form1").submit();
});

$("#log_business").click(function(){
	$('#dialog-log').dialog('open');
	$('#dialog-log').load('/index.php?m=log&a=add&r=RBusinessLog&module=business&id='+$(this).attr('rel'));
});

$('#delete').click(function(){
	var id_array = new Array();
	$("input.check_list:checked").each(function(){  
		id_array.push($(this).val());
	});
	if(id_array.length == 0){
		alert_crm('您没有选择任何数据！');
		return false;
	}
	swal({
		title: "您确定要删除商机信息吗？",
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
	            type:'post',
	            url: "/index.php?m=business&a=delete",
	            data: {business_id: id_array},
	            async: false,
	            success: function (data) {
					if (data.status == 1) {
						swal("删除成功！", "您已经永久删除了信息！", "success");
						location.reload();
					} else {
						swal({
							title: "操作失败！",
							text:data.info,
							type: "error"
						});
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

width=800;
$("#dialog-role-info").dialog({
    autoOpen: false,
    modal: true,
	width: width,
	maxHeight: 550,
	position: ["center",100]
});

$(function(){
	$("#edit_business").click(function(){
		window.location.href="/index.php?m=business&a=edit&p=&id="+$(this).attr('rel');
	})
	$("#excelExport").click(function(){
		if(count > limit_size){
			if(confirm('当前导出量过大，将分几次导出，可能需要您等待一段时间，是否继续?')){
				remainTime();
			}
		}else{
			var id_array = new Array(); 
			$("input[class='check_list']:checked").each(function() {   
				id_array.push($(this).val());
			});  
			if(id_array !=''){
				if(confirm("您确定要导出商机吗？")){
					remainTime();
				}
			}else{
				if(confirm("确定要导出全部吗？")){
					remainTime();
				}
			}
		}
	});

	$(".role_info").click(function(){
		$role_id = $(this).attr('rel');
		$('#dialog-role-info').dialog('open');
		$('#dialog-role-info').load('/index.php?m=user&a=dialoginfo&id='+$role_id);
	});

	$("#dialog-log").dialog({
	    autoOpen: false,
	    modal: true,
		width: width,
		maxHeight: 400,
		position: ["center",100],
		buttons: {
			"确定": function () {
				// $('#dialog_form1').submit();
				// $(this).dialog("close");

				var log_content = $('#log_content').val();
				var nextstep_time = $('#nextstep_time').val();
				if(log_content == ""){
					alert_crm("请填写内容！");
					$("#log_content").focus();
					return false;
				}
	        	$.ajax({
		            type:'post',
		            url: "/index.php?m=log&a=add",
		            data:$('#dialog_form1').serialize(),
		            async: false,
		            success: function (data) {
						if (data.status == 1) {
							swal("操作成功！", "沟通日志添加成功！", "success");
							$("#dialog-log").dialog("close");
							$('#nextstep_time_'+dialog_module_value).html(nextstep_time);
							$('#nextstep_'+dialog_module_value).html(log_content);
							// location.reload();
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
			},
			"取消": function () {
				$(this).dialog("close");
			}
		}
	});

	$("#dialog-remind").dialog({
		autoOpen: false,
		modal: true,
		width: width,
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
		width: width,
		maxHeight: 400,
		position: ["center",100],
		buttons: {
			"删除": function () {
				var business_id = $('#dislog_module_id').val();
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
								$('#remind_view_'+dislog_module_id).addClass('hide');
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
					// $("#dialog_remind").submit();
					// $(this).dialog("close");
				});
			},
			"取消": function () {
				$(this).dialog("close");
			}
		}
	});
})
</script>

<script>
// spacer.gif

 $(document).ready(function(){
// 固定按钮

		var list = '';
		var t_type = "contract";
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
			list += "<li class='($vo['type']}'>"+t_name+"<a href='/index.php?m=contract&a=view&id=298'>点点滴滴</a></li>";var t_type = "business";
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
			list += "<li class='($vo['type']}'>"+t_name+"<a href='/index.php?m=business&a=view&id=408'>M_20180124-0408</a></li>";var t_type = "customer";
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
			list += "<li class='($vo['type']}'>"+t_name+"<a href='/index.php?m=customer&a=view&id=738'>测试</a></li>";var t_type = "customer";
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
			list += "<li class='($vo['type']}'>"+t_name+"<a href='/index.php?m=customer&a=view&id=320'>武帝时代</a></li>";var t_type = "business";
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
			list += "<li class='($vo['type']}'>"+t_name+"<a href='shangjixinxi.htm'>M_20171205-0318</a></li>";var t_type = "customer";
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
			list += "<li class='($vo['type']}'>"+t_name+"<a href='shangjixinxi.htm'>美的集团股份有限公司</a></li>";var t_type = "customer";
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
			list += "<li class='($vo['type']}'>"+t_name+"<a href='shangjixinxi.htm'>郑州职业技术学院</a></li>"; 	      $(document.body).prepend("<div style='position:fixed;left:0;top:35%;z-index:1000;'><div id='recordBtn' style='display:none;position:absolute;left:0px;top:0px;width:27px; height:27px;cursor: pointer;background: url(Public/img/record.png) left top no-repeat;'></div><div class='recordBox' style='z-index: 1000;display:block; position:absolute;left:-222px;top:26px;width:220px;min-height:30px; max-height:550px; background:#fff; border:1px solid #ccc'><span class='recordClose' style='position:absolute;right:15px; top:10px; display:block;width:9px; height:9px;cursor: pointer;  background:url(Public/img/record.png) -3px -29px;z-index:998;'></span><span class='fixed'></span><div class='title'><i></i>最近访问</div><ul style='list-style:none'>"+list+"</ul></div></div>");
 
     
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
</div><div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-front ui-draggable ui-resizable" style="display: none; position: fixed;" tabindex="-1" role="dialog" aria-describedby="dialog-product_view" aria-labelledby="ui-id-1"><div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"><span id="ui-id-1" class="ui-dialog-title">产品详情</span><button class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only ui-dialog-titlebar-close" role="button" aria-disabled="false" title="关闭"><span class="ui-button-icon-primary ui-icon ui-icon-closethick"></span><span class="ui-button-text">关闭</span></button></div><div style="" id="dialog-product_view" class="ui-dialog-content ui-widget-content">
    <div class="spiner-example">
        <div class="sk-spinner sk-spinner-three-bounce">
            <div class="sk-bounce1"></div>
            <div class="sk-bounce2"></div>
            <div class="sk-bounce3"></div>
        </div>
    </div>
</div><div class="ui-resizable-handle ui-resizable-n" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-e" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-s" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-w" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-sw" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-ne" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-nw" style="z-index: 90;"></div></div><div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-front ui-draggable ui-resizable" style="display: none; position: fixed;" tabindex="-1" role="dialog" aria-describedby="dialog-advance" aria-labelledby="ui-id-2"><div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"><span id="ui-id-2" class="ui-dialog-title">阶段变更</span><button class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only ui-dialog-titlebar-close" role="button" aria-disabled="false" title="关闭"><span class="ui-button-icon-primary ui-icon ui-icon-closethick"></span><span class="ui-button-text">关闭</span></button></div><div style="" id="dialog-advance" class="ui-dialog-content ui-widget-content">
	<div class="spiner-example">
		<div class="sk-spinner sk-spinner-three-bounce">
			<div class="sk-bounce1"></div>
			<div class="sk-bounce2"></div>
			<div class="sk-bounce3"></div>
		</div>
	</div>
</div><div class="ui-resizable-handle ui-resizable-n" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-e" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-s" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-w" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-sw" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-ne" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-nw" style="z-index: 90;"></div></div><div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-front ui-draggable ui-resizable" style="display: none; position: fixed;" tabindex="-1" role="dialog" aria-describedby="dialog-role-info" aria-labelledby="ui-id-3"><div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"><span id="ui-id-3" class="ui-dialog-title">员工信息</span><button class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only ui-dialog-titlebar-close" role="button" aria-disabled="false" title="关闭"><span class="ui-button-icon-primary ui-icon ui-icon-closethick"></span><span class="ui-button-text">关闭</span></button></div><div style="" id="dialog-role-info" class="ui-dialog-content ui-widget-content">
	<div class="spiner-example">
		<div class="sk-spinner sk-spinner-three-bounce">
			<div class="sk-bounce1"></div>
			<div class="sk-bounce2"></div>
			<div class="sk-bounce3"></div>
		</div>
	</div>
</div><div class="ui-resizable-handle ui-resizable-n" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-e" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-s" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-w" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-sw" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-ne" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-nw" style="z-index: 90;"></div></div>
<!-- nice-scroll -->
<script src="js/jquery_004.js" type="text/javascript"></script>
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
<div id="ascrail2001" class="nicescroll-rails nicescroll-rails-vr" style="width: 7px; z-index: 100; background: rgb(243, 243, 245) none repeat scroll 0% 0%; cursor: default; position: absolute; top: 0px; left: -7px; height: 355px; opacity: 0.4; display: none;"><div style="position: relative; top: 0px; float: right; width: 7px; height: 0px; background-color: rgb(153, 153, 153); border: 0px none; background-clip: padding-box; border-radius: 3px;" class="nicescroll-cursors"></div></div><div id="ascrail2001-hr" class="nicescroll-rails nicescroll-rails-hr" style="height: 7px; z-index: 100; background: rgb(243, 243, 245) none repeat scroll 0% 0%; top: 348px; left: 0px; position: absolute; opacity: 0.4; cursor: default; display: none;"><div style="position: absolute; top: 0px; height: 7px; width: 0px; background-color: rgb(153, 153, 153); border: 0px none; background-clip: padding-box; border-radius: 3px;" class="nicescroll-cursors"></div></div></div>
<div id="down_url" style="display:none;width:120px;height:120px;background-color: #000;z-index: 1009;position: fixed;bottom:65px;right:160px;text-align: center;">
	<img src="img/download.jpg" style="width:120px;height:120px;">
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
</div><div id="ascrail2000" class="nicescroll-rails nicescroll-rails-vr" style="width: 7px; z-index: 100; background: rgb(243, 243, 245) none repeat scroll 0% 0%; cursor: default; position: absolute; top: 138.717px; left: 1333px; height: 443px; opacity: 0.4; display: block;"><div style="position: relative; top: 0px; float: right; width: 7px; height: 254px; background-color: rgb(153, 153, 153); border: 0px none; background-clip: padding-box; border-radius: 3px;" class="nicescroll-cursors"></div></div><div id="ascrail2000-hr" class="nicescroll-rails nicescroll-rails-hr" style="height: 7px; z-index: 100; background: rgb(243, 243, 245) none repeat scroll 0% 0%; top: 574.717px; left: 96px; position: absolute; opacity: 0.4; cursor: default; display: none; width: 1237px;"><div style="position: absolute; top: 0px; height: 7px; width: 1244px; background-color: rgb(153, 153, 153); border: 0px none; background-clip: padding-box; border-radius: 3px;" class="nicescroll-cursors"></div></div><div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-front ui-dialog-buttons ui-draggable ui-resizable" style="display: none; position: fixed;" tabindex="-1" role="dialog" aria-describedby="dialog-log" aria-labelledby="ui-id-4"><div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"><span id="ui-id-4" class="ui-dialog-title">添加日志</span><button class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only ui-dialog-titlebar-close" role="button" aria-disabled="false" title="关闭"><span class="ui-button-icon-primary ui-icon ui-icon-closethick"></span><span class="ui-button-text">关闭</span></button></div><div style="" id="dialog-log" class="ui-dialog-content ui-widget-content">
	<div class="spiner-example">
		<div class="sk-spinner sk-spinner-three-bounce">
			<div class="sk-bounce1"></div>
			<div class="sk-bounce2"></div>
			<div class="sk-bounce3"></div>
		</div>
	</div>
</div><div class="ui-dialog-buttonpane ui-widget-content ui-helper-clearfix"><div class="ui-dialog-buttonset"><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">确定</span></button><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">取消</span></button></div></div><div class="ui-resizable-handle ui-resizable-n" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-e" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-s" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-w" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-sw" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-ne" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-nw" style="z-index: 90;"></div></div><div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-front ui-dialog-buttons ui-draggable ui-resizable" style="display: none; position: fixed;" tabindex="-1" role="dialog" aria-describedby="dialog-remind" aria-labelledby="ui-id-5"><div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"><span id="ui-id-5" class="ui-dialog-title">提醒</span><button class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only ui-dialog-titlebar-close" role="button" aria-disabled="false" title="关闭"><span class="ui-button-icon-primary ui-icon ui-icon-closethick"></span><span class="ui-button-text">关闭</span></button></div><div style="" id="dialog-remind" class="ui-dialog-content ui-widget-content">
	<div class="spiner-example">
		<div class="sk-spinner sk-spinner-three-bounce">
			<div class="sk-bounce1"></div>
			<div class="sk-bounce2"></div>
			<div class="sk-bounce3"></div>
		</div>
	</div>
</div><div class="ui-dialog-buttonpane ui-widget-content ui-helper-clearfix"><div class="ui-dialog-buttonset"><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">确定</span></button><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">取消</span></button></div></div><div class="ui-resizable-handle ui-resizable-n" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-e" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-s" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-w" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-sw" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-ne" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-nw" style="z-index: 90;"></div></div><div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-front ui-dialog-buttons ui-draggable ui-resizable" style="display: none; position: fixed;" tabindex="-1" role="dialog" aria-describedby="dialog-remind_view" aria-labelledby="ui-id-6"><div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"><span id="ui-id-6" class="ui-dialog-title">提醒内容</span><button class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only ui-dialog-titlebar-close" role="button" aria-disabled="false" title="关闭"><span class="ui-button-icon-primary ui-icon ui-icon-closethick"></span><span class="ui-button-text">关闭</span></button></div><div style="" id="dialog-remind_view" class="ui-dialog-content ui-widget-content">
	<div class="spiner-example">
		<div class="sk-spinner sk-spinner-three-bounce">
			<div class="sk-bounce1"></div>
			<div class="sk-bounce2"></div>
			<div class="sk-bounce3"></div>
		</div>
	</div>
</div><div class="ui-dialog-buttonpane ui-widget-content ui-helper-clearfix"><div class="ui-dialog-buttonset"><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">删除</span></button><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">取消</span></button></div></div><div class="ui-resizable-handle ui-resizable-n" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-e" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-s" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-w" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-sw" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-ne" style="z-index: 90;"></div><div class="ui-resizable-handle ui-resizable-nw" style="z-index: 90;"></div></div></body></html>