<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<title>客户添加</title>
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
			
			@media (max-width: 768px) {
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
			
			input[type=checkbox],
			input[type=radio] {
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
			
			.checkbox,
			.radio {
				margin: 0 auto;
			}
			/*闪烁效果*/
			
			.crm_heart {
				animation: heart 1s ease infinite;
			}
			
			@keyframes heart {
				0% {
					color: #FF6D57;
				}
				100% {
					color: #93A6B5;
				}
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
		<script src="js//moment.js"></script>
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
		<script src="js/WdatePicker.js" type="text/javascript"></script>
		<link href="css/WdatePicker.css" rel="stylesheet" type="text/css">
		<!-- Sweet alert -->
		<script src="js/sweetalert.js"></script>
		<!-- Jquery Validate -->
		<script src="js/jquery_002.js"></script>
		<script src="js/messages_zh.js"></script>
		<script src="js/bootstrap-tooltip.js"></script>
		<!-- 下拉筛选 -->
		<link rel="stylesheet" href="js/bootstrap-select.css">
		<script type="text/javascript" src="js/bootstrap-select.js" charset="UTF-8"></script>
		<!-- select2 -->
		<link href="css/select2.css" rel="stylesheet">
		<script src="js/select2.js"></script>
		<script>
			$(function() {
				var innerHeight = window.innerHeight;
				if(innerHeight < 768) {
					innerHeight = 768;
				}
				$("#page-wrapper").css("min-height", innerHeight);
				$(window).resize(function() {
					var innerHeight = window.innerHeight;
					if(innerHeight < 768) {
						innerHeight = 768;
					}
					$("#page-wrapper").css("min-height", innerHeight);
				});
				$(".select2").select2({
					placeholder: "--请选择--"
					// allowClear: true
				});
			});
		</script>
		<link rel="stylesheet" href="css/layer.css" id="layuicss-layer">
	</head>

	<!-- <body class="navbar fixed-sidebar"> -->

	<body class="navbar  pace-done">
		<div style="position:fixed;left:0;top:35%;z-index:1000;">
			<div id="recordBtn" style="display:none;position:absolute;left:0px;top:0px;width:27px; height:27px;cursor: pointer;background: url(Public/img/record.png) left top no-repeat;"></div>
			<div class="recordBox" style="z-index: 1000;display:block; position:absolute;left:-222px;top:26px;width:220px;min-height:30px; max-height:550px; background:#fff; border:1px solid #ccc"><span class="recordClose" style="position:absolute;right:15px; top:10px; display:block;width:9px; height:9px;cursor: pointer;  background:url(Public/img/record.png) -3px -29px;z-index:998;"></span><span class="fixed" style="display: block; width: 16px; height: 16px; background: rgba(0, 0, 0, 0) url(&quot;Public/img/record.png&quot;) no-repeat scroll left -50px; position: absolute; right: 8px; top: 6px; cursor: pointer; z-index: 999;"></span>
				<div class="title" style="position: relative; font-size: 14px; font-family: 微软雅黑; height: 30px; line-height: 30px; border-bottom: 1px solid rgb(204, 204, 204); background: rgb(230, 230, 230) none repeat scroll 0% 0%; text-indent: 25px;"><i style="position: absolute; display: block; width: 15px; height: 15px; background: rgba(0, 0, 0, 0) url(&quot;Public/img/record.png&quot;) no-repeat scroll left bottom; left: 5px; top: 7px;"></i>最近访问</div>
				<ul style="list-style: outside none none; padding: 10px;"></ul>
			</div>
		</div>
		<div class="pace  pace-inactive">
			<div class="pace-progress" style="transform: translate3d(100%, 0px, 0px);" data-progress-text="100%" data-progress="99">
				<div class="pace-progress-inner"></div>
			</div>
			<div class="pace-activity"></div>
		</div>
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
							<li>
								<a href="http://demo2.5kcrm.net/index.php?m=leads&amp;a=index"><span class="fa fa fa-child" style="display:inline"></span>&nbsp;&nbsp;线索</a>
							</li>
							<li>
								<a href="http://demo2.5kcrm.net/index.php?m=leads&amp;a=index&amp;by=public"><span class="fa fa fa-child" style="display:inline"></span>&nbsp;&nbsp;线索池</a>
							</li>
							<li class="active">
								<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=index&amp;by=me"><span class="fa fa-user" style="display:inline"></span>&nbsp;&nbsp;客户</a>
							</li>
							<li>
								<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=index&amp;by=me&amp;content=resource"><span class="fa fa-group" style="display:inline"></span>&nbsp;&nbsp;客户池</a>
							</li>
							<li>
								<a href="http://demo2.5kcrm.net/index.php?m=contacts&amp;a=index"><span class="fa fa-phone-square" style="display:inline"></span>&nbsp;&nbsp;客户联系人</a>
							</li>
						</ul>
						<ul class="nav navbar-top-links navbar-right" style="margin-right:0px;">
							<li class="dropdown" style="">
								<a class="dropdown-toggle count-info" id="todo_url" data-toggle="dropdown" href="#" title="待办事项">
									<img src="img/remain.png" alt="">
									<div class="label label-info" style="background-color: #FA7252;" id="todo_num">224</div>
								</a>
								<ul class="dropdown-menu dropdown-alerts folder-list m-b-md" style="width:250px;">
									<li style="border-bottom:1px dashed #e7eaec !important;">
										<a href="http://demo2.5kcrm.net/index.php?m=contract&amp;a=index&amp;contract_checked=1&amp;by=all"><i class="fa fa-list-alt"></i>&nbsp;&nbsp;待审核的合同<span class="label label-info pull-right" style="background-color: #FA7252;" id="header_check_contract_num">63</span></a>
									</li>
									<li style="border-bottom:1px dashed #e7eaec !important;">
										<a href="http://demo2.5kcrm.net/index.php?m=finance&amp;a=index&amp;t=receivingorder&amp;status[value]=0&amp;by=all"><i class="fa fa-money"></i>&nbsp;&nbsp;待审核的回款<span class="label label-info pull-right" style="background-color: #FA7252;" id="header_receivables_num">50</span></a>
									</li>
									<li style="border-bottom:1px dashed #e7eaec !important;">
										<a href="http://demo2.5kcrm.net/index.php?m=examine&amp;a=index&amp;by=me_examine&amp;examining=1"><i class="fa fa-check-square-o"></i>&nbsp;&nbsp;待处理的审批流<span class="label label-info pull-right" style="background-color: #FA7252;" id="header_examine_num">2</span></a>
									</li>
									<li style="border-bottom:1px dashed #e7eaec !important;">
										<a href="http://demo2.5kcrm.net/index.php?m=contract&amp;a=index&amp;by=dqcontact"><i class="fa fa-user"></i>&nbsp;&nbsp;合同到期提醒<span class="label label-info pull-right" style="background-color: #FA7252;" id="header_dqcontact_num">42</span></a>
									</li>

									<li style="border-bottom:1px dashed #e7eaec !important;">
										<a href="http://demo2.5kcrm.net/index.php?m=finance&amp;a=index&amp;t=receivables&amp;r_status=1&amp;by=me"><i class="fa fa-money"></i>&nbsp;&nbsp;应收款提醒<span class="label label-info pull-right" style="background-color: #FA7252;" id="receivables_num">67</span></a>
									</li>
									<li style="border-bottom:1px dashed #e7eaec !important;">
										<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=index&amp;by=todaycontact"><i class="fa fa-user"></i>&nbsp;&nbsp;今日需跟进客户<span class="label label-info pull-right" style="background-color: #FA7252;" id="header_follow_customer_num"></span></a>
									</li>
								</ul>
							</li>
							<li class="dropdown" style="">
								<a class="dropdown-toggle count-info" id="event_url" data-toggle="dropdown" href="#" title="今日日程">
									<img src="img/event.png" alt=""><span class="label label-warning" id="event_num">4</span>
								</a>
								<ul class="dropdown-menu dropdown-alerts">
									<li class="list-group" role="presentation" id="event_group" style="height: 220px;">
										<div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 100%;">
											<div class="full-height-scroll" id="event_list" data-height="220px" data-plugin="slimScroll" style="overflow: hidden; width: auto; height: 100%;">
												<a href="http://demo2.5kcrm.net/index.php?m=event&amp;a=index" title="点击查看" style="padding:5px !important;border-bottom:1px dashed #ddd;float:left;margin-bottom:5px;width:100%;">
													<div style="overflow:hidden;padding:0 10px;"> <span class="pull-left" style="color:#46be8a;line-height:26px;"><i class="fa fa-circle"></i>&nbsp;&nbsp;【 提醒 】</span><br> <small class="text-muted pull-right" style="margin-top: 5px;">2018年03月14 15:00</small> </div>
												</a>
												<a href="http://demo2.5kcrm.net/index.php?m=event&amp;a=index" title="点击查看" style="padding:5px !important;border-bottom:1px dashed #ddd;float:left;margin-bottom:5px;width:100%;">
													<div style="overflow:hidden;padding:0 10px;"> <span class="pull-left" style="color:#46be8a;line-height:26px;"><i class="fa fa-circle"></i>&nbsp;&nbsp;【 提醒 】武帝时代</span><br> <small class="text-muted pull-right" style="margin-top: 5px;">2018年03月14 17:13</small> </div>
												</a>
												<a href="http://demo2.5kcrm.net/index.php?m=event&amp;a=index" title="点击查看" style="padding:5px !important;border-bottom:1px dashed #ddd;float:left;margin-bottom:5px;width:100%;">
													<div style="overflow:hidden;padding:0 10px;"> <span class="pull-left" style="color:#57c7d4;line-height:26px;"><i class="fa fa-circle"></i>&nbsp;&nbsp;通话</span><br> <small class="text-muted pull-right" style="margin-top: 5px;">2018年03月14 17:32 ~ 2018年03月14 23:59</small> </div>
												</a>
												<a href="http://demo2.5kcrm.net/index.php?m=event&amp;a=index" title="点击查看" style="padding:5px !important;border-bottom:1px dashed #ddd;float:left;margin-bottom:5px;width:100%;">
													<div style="overflow:hidden;padding:0 10px;"> <span class="pull-left" style="color:#62a8ea;line-height:26px;"><i class="fa fa-circle"></i>&nbsp;&nbsp;了解一下</span><br> <small class="text-muted pull-right" style="margin-top: 5px;">2018年03月14 23:19 ~ 2018年03月14 23:59</small> </div>
												</a>
											</div>
											<div class="slimScrollBar" style="background: rgb(153, 153, 153) none repeat scroll 0% 0%; width: 7px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 7px; z-index: 99; right: 1px;"></div>
											<div class="slimScrollRail" style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51) none repeat scroll 0% 0%; opacity: 0.2; z-index: 90; right: 1px;"></div>
										</div>
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
									<img src="img/bell.png" alt=""><span class="label label-primary" id="message_num">23</span>
								</a>
								<ul class="dropdown-menu dropdown-alerts" style="width:365px;">
									<li class="list-group" role="presentation" id="message_group" style="height: 220px;">
										<div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 100%;">
											<div class="full-height-scroll" id="message_list" data-height="220px" data-plugin="slimScroll" style="overflow: hidden; width: auto; height: 100%;">
												<a href="http://demo2.5kcrm.net/index.php?m=message&amp;a=index" style="width:100%;color:#676a6c;padding:5px !important;border-bottom:1px dashed #ddd;float:left;margin-bottom:5px;">
													<div style="padding:0 10px;"> <img src="img/wukong.png" title="悟空小助手"> 您有<strong>23</strong>条消息待查看 <span class="pull-right text-muted small" style="line-height:30px;">4分钟2秒前</span> </div>
												</a>
											</div>
											<div class="slimScrollBar" style="background: rgb(153, 153, 153) none repeat scroll 0% 0%; width: 7px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 7px; z-index: 99; right: 1px;"></div>
											<div class="slimScrollRail" style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51) none repeat scroll 0% 0%; opacity: 0.2; z-index: 90; right: 1px;"></div>
										</div>
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
									<li>
										<a href="http://demo2.5kcrm.net/index.php?m=user&amp;a=edit">个人资料</a>
									</li>
									<li>
										<a href="http://demo2.5kcrm.net/index.php?m=setting&amp;a=lockscreen">一键锁屏</a>
									</li>
									<li class="divider"></li>
									<li>
										<a href="javascript:void(0);" id="authorize">版本及授权信息</a>
									</li>
									<li>
										<a class="logout" href="javascript:void(0);">退出</a>
									</li>
								</ul>
							</li>
						</ul>
					</nav>
				</div>

				<!-- 模态框 -->

				<script type="text/javascript">
					$(document).on('click', '#authorize', function() {
						$('#Modal_anthorize').modal('show');
					});

					$('[data-toggle="tooltip"]').tooltip({
						html: true
					});
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
						position: ["center", 100]
					});

					$(function() {
						/*站内信*/
						message_tips();
						login_tips();
						$("#header_send_message").click(function() {
							$('#dialog-message-send').dialog('open');
							$('#dialog-message-send').load('/index.php?m=message&a=send');
						});
						/*让复选框默认取消选择*/
						//$(':checkbox').prop('checked', false);

						/*记录菜单隐藏状态*/
						$(".navbar-minimalize").click(function() {
							var arr, reg = new RegExp("(^| )mini-navbar=([^;]*)(;|$)");
							arr = document.cookie.match(reg);
							if(arr) {
								var nav_status = unescape(arr[2]) == 1 ? 0 : 1;
							} else {
								var nav_status = 1;
							}
							document.cookie = "mini-navbar=" + nav_status;
						});
					});

					function salert() {
						var txt = "";
						if(txt != '') {
							swal(txt, "", "")
						}
					}

					/*退出提示*/
					$('.logout').click(function() {
						swal({
								title: "确定退出登录?",
								type: "warning",
								showCancelButton: true,
								confirmButtonColor: "#DD6B55",
								confirmButtonText: "确定",
								cancelButtonText: "取消",
								closeOnConfirm: false
							},
							function(isConfirm) {
								if(isConfirm) {
									window.location = "/index.php?m=user&a=logout";
								}
							}
						);
					});

					/*提交失败返回前一页*/
					var href = "";
					if(href != '' && href != null) {
						swal({
								title: "添加失败!",
								type: "error",
								confirmButtonColor: "#DD6B55",
								confirmButtonText: "返回",
								closeOnConfirm: false
							},
							function() {
								location.href = 'javascript:history.back(-1)';
							});
					}
					var login_show = 0;

					function login_tips() {
						$.get("/index.php?m=message&a=logintips", function(data) {
							var is_login = data.data['is_login'];
							if(is_login == 0 && login_show != 1) {
								$.ajax({
									type: "GET",
									url: "/index.php?m=user&a=loginajax",
									async: true,
									success: function(data) {
										if(data.status != 2) {
											$("#login_modal").parent().removeClass("modal-lg").addClass("modal-md");
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
					var mark_count = 1; //标记第一次弹出
					/*初始默认值*/
					var msg_num = '0,0';

					function message_tips() {
						$.get("/index.php?m=message&a=tips", function(data) {
							var is_lock = data.data['is_lock'];
							if(is_lock == 1) {
								location.href = "/index.php?m=setting&a=lockscreen";
							}
							//卡片提醒显示与隐藏
							var message_html = '';
							var new_num = data.data['message'] + ',' + data.data['contract_count'];

							//待办事项
							$('#header_check_contract_num').html(data.data['check_contract_num']);
							$('#header_dqcontact_num').html(data.data['contract_num']);
							$('#header_examine_num').html(data.data['examine_num']);
							$('#header_receivables_num').html(data.data['receivingorder_num']);
							$('#receivables_num').html(data.data['receivables_num']);
							$('#header_follow_customer_num').html(data.data['today_customer']);
							if(data.data['todo_num']) {
								$('#todo_num').html(data.data['todo_num']);
							} else {
								$('#todo_num').html('');
							}

							//导航提醒实时写入数值
							if(data.data['message'] != 0 && data.data['message'] != '') {
								$('#message_group').show();
								//桌面提醒
								if(data.data['data_list']) {
									$(data.data['data_list']).each(function(k, v) {
										if(data.data['data_list_count'] < 3) {
											animateMessage(v.role_info.thumb_path, v.role_info.full_name, v.content_msubstr);
										}
										aaa(v.role_info.thumb_path, v.role_info.full_name, v.content, v.url_link);
									});
								}
								$('#message_num').html(data.data['message']);
								$('#message_list').html('');
								if(data.data['message_num'] != 0 && data.data['message_num'] != '') {
									message_html += '<a href="/index.php?m=message&a=index" style="width:100%;color:#676a6c;padding:5px !important;border-bottom:1px dashed #ddd;float:left;margin-bottom:5px;">\
		                    <div style="padding:0 10px;">\
		                        <img src="/Public/img/wukong.png" title="悟空小助手"> 您有<strong>' + data.data['message_num'] + '</strong>条消息待查看\
		                        <span class="pull-right text-muted small" style="line-height:30px;">' + data.data['message_time'] + '前</span>\
		                    </div>\
		                </a>';
								}

								if(data.data['message_announcement_count'] != 0 && data.data['message_announcement_count'] != '') {
									message_html += '<a href="/index.php?m=message&a=index&by=announcement" style="width:100%;color:#676a6c;padding:5px !important;border-bottom:1px dashed #ddd;float:left;margin-bottom:5px;">\
		                    <div style="padding:0 10px;">\
		                        <img src="/Public/img/announcement.png" title="系统公告"> 您有<strong>' + data.data['message_announcement_count'] + '</strong>条公告信息待查看\
		                        <span class="pull-right text-muted small" style="line-height:30px;">' + data.data['announcement_time'] + '前</span>\
		                    </div>\
		                </a>';
								}
								if(data.data['role_message_list']) {
									$(data.data['role_message_list']).each(function(k, v) {
										message_html += '<a href="/index.php?m=message&a=message_view&to_role_id=' + v.role_id + '" title="点击回复" style="width:100%;color:#676a6c;padding:5px !important;border-bottom:1px dashed #ddd;float:left;margin-bottom:5px;" >\
	                            <div class="dropdown-messages-box" style="padding:0 10px;">\
	                                <div class="pull-left">\
	                                    <img alt="image" class="img-circle" src="' + v.thumb_path + '">&nbsp;\
	                                </div>\
	                                <div style="overflow:hidden;">\
	                                    <span>' + v.full_name + '</span><span class="label label-warning pull-right" style="margin-right: 3px;border-radius:50% !important;">' + v.unread_num + '</span><br>\
	                                    <span style="word-wrap: break-word;word-break: normal;float:left;margin-top:10px;width:100%;">' + v.content + '</span><br>\
	                                    <small class="text-muted pull-right" style="margin-top: 5px;">' + v.send_time + '</small>\
	                                </div>\
	                            </div>\
	                        </a>';
									});
								}
								$('#message_list').append(message_html);
							} else {
								$('#message_group').hide();
							}
							//日程提醒
							var event_temp = '';
							if(data.data['event_list'] != 0 && data.data['event_list'] != '') {
								$('#event_group').show();
								$('#event_list').html('');
								$('#event_num').html(data.data['event_num']);
								$.each(data.data['event_list'], function(k, v) {
									event_temp += '<a href="/index.php?m=event&a=index" title="点击查看" style="padding:5px !important;border-bottom:1px dashed #ddd;float:left;margin-bottom:5px;width:100%;">\
	                                <div style="overflow:hidden;padding:0 10px;">\
	                                	<span class="pull-left" style="color:' + v.color + ';line-height:26px;"><i class="fa fa-circle"></i>&nbsp;&nbsp;' + v.subject + '</span><br>\
	                                    <small class="text-muted pull-right" style="margin-top: 5px;">' + v.between_date + '</small>\
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
							dir: "ltr",
							lang: "utf-8",
							icon: icon,
							body: content
						};
						if(Notification && Notification.permission === "granted") {
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
				<script type="text/javascript" src="js/PCASClass.js"></script>
				<style type="text/css">
					.add_title {
						padding-bottom: 10px;
						height: 60px;
						margin-bottom: 15px;
					}
					
					.add_title>span {
						border-bottom: 2px solid #1ab394;
						font-size: 24px;
					}
					
					.add_body>div>.full-height-scroll {
						border-right: 1px dotted #ccc
					}
					
					.add_body_title {
						margin: 20px auto 20px auto;
						padding-left: 25px;
					}
					
					.add_body_form {
						padding-left: 38px;
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
					
					.checkbox {
						float: left;
					}
				</style>
				<script>
					$(function() {
						$(".add_body").height(window.innerHeight - $("#add_body").offset().top - $("#tfoot_div").height() - 40);
						$(window).resize(function() {
							$(".add_body").height(window.innerHeight - $("#add_body").offset().top - $("#tfoot_div").height() - 40);
						})
					})
				</script>
				<div class="wrapper wrapper-content animated fadeIn">
					<form class="form-horizontal" id="form" role="form" action="/index.php?m=customer&amp;a=add" method="post" novalidate="novalidate">
						<input name="refer_url" value="http://demo2.5kcrm.net/index.php?m=customer&amp;a=index&amp;by=me" type="hidden">
						<div class="ibox-content add_body" id="add_body" style="height: 489.283px;">
							<div class="row">
								<div class="col-md-6 add_body" style="padding-right: 0px; height: 452.283px;">
									<div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 100%;">
										<div class="full-height-scroll" style="overflow: hidden; width: auto; height: 100%;">
											<div class="row">
												<div class="col-md-12 add_body_title">
													<div class="all-inline">
														<span class="sq-tag"></span>
														<div class="text-tag">
															<span>基础信息</span>
														</div>
													</div>
												</div>
												<div class="col-md-11 add_body_form">
													<div class="form-group">
														<label class="col-md-4 control-label">客户名称：</label>
														<div class="col-md-6">
															<input class="form-control required" id="name" onkeyup="checkinfo(name)" name="name" placeholder="" aria-required="true" type="text">
														</div>
														<div class="col-md-2"></div>
													</div>
													<div class="form-group">
														<label class="col-md-4 control-label">下次联系时间：</label>
														<div class="col-md-6">
															<input class="form-control Wdate" input_type="time" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm'})" name="nextstep_time" id="nextstep_time" type="text"><span id="nextstep_timeTip" style="float: left;line-height: 32px;margin-left: 5%;color:red;"></span> </div>
														<div class="col-md-2"></div>
													</div>
													<div class="form-group">
														<label class="col-md-4 control-label">车牌号：</label>
														<div class="col-md-6">
															<input class="form-control " id="crm_gxmlcs" name="crm_gxmlcs" type="text"><span id="crm_gxmlcsTip" style="float: left;line-height: 32px;margin-left: 5%;color:red;"></span> &nbsp; <span style="color:#999;float:left;margin-top:5px;">(注:ff)</span> </div>
														<div class="col-md-2"></div>
													</div>
													<div class="form-group">
														<label class="col-md-4 control-label">会员卡号：</label>
														<div class="col-md-6">
															<input class="form-control " id="crm_pcamcq" name="crm_pcamcq" type="text"><span id="crm_pcamcqTip" style="float: left;line-height: 32px;margin-left: 5%;color:red;"></span> </div>
														<div class="col-md-2"></div>
													</div>
													<div class="form-group">
														<label class="col-md-4 control-label">测试：</label>
														<div class="col-md-6">
															<select class="form-control " id="crm_xdhslk" name="crm_xdhslk">
																<option value="" selected="selected">--请选择--</option>
																<option value="1">1</option>
																<option value="2">2</option>
																<option value="3">3</option>
															</select><span id="crm_xdhslkTip" style="float: left;line-height: 32px;margin-left: 5%;color:red;"></span> </div>
														<div class="col-md-2"></div>
													</div>
													<div class="form-group">
														<label class="col-md-4 control-label">详细地址：</label>
														<div class="col-md-8">
															<textarea rows="5" class="form-control " id="crm_ogcdos" name="crm_ogcdos"></textarea><span id="crm_ogcdosTip" style="float: left;line-height: 32px;margin-left: 5%;color:red;"></span> </div>
													</div>
													<div class="form-group">
														<label class="col-md-4 control-label">客户等级：</label>
														<div class="col-md-6">
															<input id="star" name="grade" value="" type="hidden">
															<div class="all-star" style="font-size: 18px;padding-top:3px;color:#D0D0D0;">
																<i class="fa fa-star">&nbsp;&nbsp;</i><i class="fa fa-star">&nbsp;&nbsp;</i><i class="fa fa-star">&nbsp;&nbsp;</i><i class="fa fa-star">&nbsp;&nbsp;</i><i class="fa fa-star">&nbsp;&nbsp;</i>
															</div>
														</div>
														<div class="col-md-2"></div>
													</div>
													<div class="form-group">
														<label class="col-md-4 control-label">客户状态：</label>
														<div class="col-md-6">
															<select class="form-control " id="customer_status" name="customer_status">
																<option value="">--请选择--</option>
																<option value="意向客户" selected="selected">意向客户</option>
																<option value="已成交客户">已成交客户</option>
																<option value="失败客户">失败客户</option>
															</select><span id="customer_statusTip" style="float: left;line-height: 32px;margin-left: 5%;color:red;"></span> </div>
														<div class="col-md-2"></div>
													</div>
													<div class="form-group">
														<label class="col-md-4 control-label">微信：</label>
														<div class="col-md-6">
															<input class="form-control " onkeyup="checkinfo(crm_ifvtcy)" id="crm_ifvtcy" name="crm_ifvtcy" type="text"><span id="crm_ifvtcyTip" style="float: left;line-height: 32px;margin-left: 5%;color:red;"></span> </div>
														<div class="col-md-2"></div>
													</div>
													<div class="form-group">
														<label class="col-md-4 control-label">QQ：</label>
														<div class="col-md-6">
															<input class="form-control " onkeyup="checkinfo(crm_jlkgnr)" id="crm_jlkgnr" name="crm_jlkgnr" type="text"><span id="crm_jlkgnrTip" style="float: left;line-height: 32px;margin-left: 5%;color:red;"></span> </div>
														<div class="col-md-2"></div>
													</div>
												</div>
												<div class="col-md-12 add_body_title">
													<div class="all-inline">
														<span class="sq-tag"></span>
														<div class="text-tag">
															<span>附加信息</span>
														</div>
													</div>
												</div>
												<div class="col-md-11 add_body_form">
													<div class="form-group">
														<label class="col-md-4 control-label">备注：</label>
														<div class="col-md-7">
															<textarea rows="5" class="form-control " id="description" name="description"></textarea><span id="descriptionTip" style="float: left;line-height: 32px;margin-left: 5%;color:red;"></span> </div>
														<div class="col-md-1"></div>
													</div>
												</div>
												<div class="col-md-1 pull-right">
													<!-- <div style="height: 100%; border-right: 1px dashed gray;">&nbsp;sadf</div> -->
												</div>
											</div>
										</div>
										<div class="slimScrollBar" style="background: rgb(153, 153, 153) none repeat scroll 0% 0%; width: 7px; position: absolute; top: 0px; opacity: 0.4; display: none; border-radius: 7px; z-index: 99; right: 1px; height: 237.563px;"></div>
										<div class="slimScrollRail" style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51) none repeat scroll 0% 0%; opacity: 0.2; z-index: 90; right: 1px;"></div>
									</div>
								</div>
								<div class="col-md-6 add_body" style="padding-left: 0px; height: 452.283px;">
									<div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 100%;">
										<div class="full-height-scroll" style="overflow: hidden; width: auto; height: 100%;">
											<div class="col-md-12 add_body_title">
												<div class="all-inline">
													<span class="sq-tag"></span>
													<div class="text-tag">
														<span>首要联系人</span>
													</div>
												</div>
											</div>
											<div class="col-md-10 add_body_form">
												<div class="form-group">
													<label class="col-md-4 control-label">邮箱：</label>
													<div class="col-md-6">
														<input class="form-control " id="con_contacts[email]" name="con_contacts[email]" type="email"><span id="con_contacts[email]Tip" style="float: left;line-height: 32px;margin-left: 5%;color:red;"></span> </div>
													<div class="col-md-2"></div>
												</div>
												<div class="form-group">
													<label class="col-md-4 control-label">主要信息：</label>
													<div class="col-md-6">
														<input class="form-control " id="con_contacts[crm_prhvxc]" name="con_contacts[crm_prhvxc]" type="text"><span id="con_contacts[crm_prhvxc]Tip" style="float: left;line-height: 32px;margin-left: 5%;color:red;"></span> </div>
													<div class="col-md-2"></div>
												</div>
												<div class="form-group">
													<label class="col-md-4 control-label">杀胡盼盼：</label>
													<div class="col-md-6">
														<input class="form-control " id="con_contacts[crm_utypnw]" name="con_contacts[crm_utypnw]" type="text"><span id="con_contacts[crm_utypnw]Tip" style="float: left;line-height: 32px;margin-left: 5%;color:red;"></span> </div>
													<div class="col-md-2"></div>
												</div>
												<div class="form-group">
													<label class="col-md-4 control-label">角色：</label>
													<div class="col-md-6">
														<select class="form-control " id="con_contacts[role]" name="con_contacts[role]">
															<option value="" selected="selected">--请选择--</option>
															<option value="普通人">普通人</option>
															<option value="决策人">决策人</option>
															<option value="分项决策人">分项决策人</option>
															<option value="商务决策">商务决策</option>
															<option value="技术决策">技术决策</option>
															<option value="财务决策">财务决策</option>
															<option value="使用人">使用人</option>
															<option value="意见影响人">意见影响人</option>
														</select><span id="con_contacts[role]Tip" style="float: left;line-height: 32px;margin-left: 5%;color:red;"></span> </div>
													<div class="col-md-2"></div>
												</div>
												<div class="form-group">
													<label class="col-md-4 control-label">地址：</label>
													<div class="col-md-8">
														<script type="text/javascript">
															$(function() {
																new PCAS("con_contacts[contacts_address]['state']", "con_contacts[contacts_address]['city']", "con_contacts[contacts_address]['area']", "山东省", "济南市", "");
															});
														</script>
														<select class="form-control " input_type="address" name="con_contacts[contacts_address]['state']" style="width:32%;float:left;">
															<option value="">--请选择省份--</option>
															<option value="北京市">北京市</option>
															<option value="天津市">天津市</option>
															<option value="河北省">河北省</option>
															<option value="山西省">山西省</option>
															<option value="内蒙古自治区">内蒙古自治区</option>
															<option value="辽宁省">辽宁省</option>
															<option value="吉林省">吉林省</option>
															<option value="黑龙江省">黑龙江省</option>
															<option value="上海市">上海市</option>
															<option value="江苏省">江苏省</option>
															<option value="浙江省">浙江省</option>
															<option value="安徽省">安徽省</option>
															<option value="福建省">福建省</option>
															<option value="江西省">江西省</option>
															<option value="山东省" selected="selected">山东省</option>
															<option value="河南省">河南省</option>
															<option value="湖北省">湖北省</option>
															<option value="湖南省">湖南省</option>
															<option value="广东省">广东省</option>
															<option value="广西壮族自治区">广西壮族自治区</option>
															<option value="海南省">海南省</option>
															<option value="重庆市">重庆市</option>
															<option value="四川省">四川省</option>
															<option value="贵州省">贵州省</option>
															<option value="云南省">云南省</option>
															<option value="西藏自治区">西藏自治区</option>
															<option value="陕西省">陕西省</option>
															<option value="甘肃省">甘肃省</option>
															<option value="青海省">青海省</option>
															<option value="宁夏回族自治区">宁夏回族自治区</option>
															<option value="新疆维吾尔自治区">新疆维吾尔自治区</option>
															<option value="香港特别行政区">香港特别行政区</option>
															<option value="澳门特别行政区">澳门特别行政区</option>
															<option value="台湾省">台湾省</option>
															<option value="其它">其它</option>
														</select>
														<select class="form-control " input_type="address" name="con_contacts[contacts_address]['city']" style="width:32%;float:left;margin-left:1%;">
															<option value="">全部</option>
															<option value="济南市" selected="selected">济南市</option>
															<option value="青岛市">青岛市</option>
															<option value="淄博市">淄博市</option>
															<option value="枣庄市">枣庄市</option>
															<option value="东营市">东营市</option>
															<option value="烟台市">烟台市</option>
															<option value="潍坊市">潍坊市</option>
															<option value="济宁市">济宁市</option>
															<option value="泰安市">泰安市</option>
															<option value="威海市">威海市</option>
															<option value="日照市">日照市</option>
															<option value="莱芜市">莱芜市</option>
															<option value="临沂市">临沂市</option>
															<option value="德州市">德州市</option>
															<option value="聊城市">聊城市</option>
															<option value="滨州市">滨州市</option>
															<option value="菏泽市">菏泽市</option>
														</select>
														<select class="form-control " input_type="address" name="con_contacts[contacts_address]['area']" style="width:32%;float:left;margin-left:1%;">
															<option value="" selected="selected">全部</option>
															<option value="市辖区">市辖区</option>
															<option value="历下区">历下区</option>
															<option value="市中区">市中区</option>
															<option value="槐荫区">槐荫区</option>
															<option value="天桥区">天桥区</option>
															<option value="历城区">历城区</option>
															<option value="长清区">长清区</option>
															<option value="平阴县">平阴县</option>
															<option value="济阳县">济阳县</option>
															<option value="商河县">商河县</option>
															<option value="章丘市">章丘市</option>
														</select>
														<input class="form-control" input_type="address" name="con_contacts[contacts_address]['street']" placeholder="街道信息" style="float:left;margin-top:5px;" type="text"> </div>
												</div>
												<div class="form-group">
													<label class="col-md-4 control-label">职位：</label>
													<div class="col-md-6">
														<input class="form-control " id="con_contacts[post]" name="con_contacts[post]" type="text"><span id="con_contacts[post]Tip" style="float: left;line-height: 32px;margin-left: 5%;color:red;"></span> </div>
													<div class="col-md-2"></div>
												</div>
												<div class="form-group">
													<label class="col-md-4 control-label">联系人姓名：</label>
													<div class="col-md-6">
														<input class="form-control " id="con_contacts[name]" name="con_contacts[name]" type="text"><span id="con_contacts[name]Tip" style="float: left;line-height: 32px;margin-left: 5%;color:red;"></span> &nbsp; <span style="color:#999;float:left;margin-top:5px;">如有联系人信息，则联系人姓名不能为空</span> </div>
													<div class="col-md-2"></div>
												</div>
												<div class="form-group">
													<label class="col-md-4 control-label">手机：</label>
													<div class="col-md-6">
														<input class="form-control " id="con_contacts[telephone]" name="con_contacts[telephone]" type="mobile"><span id="con_contacts[telephone]Tip" style="float: left;line-height: 32px;margin-left: 5%;color:red;"></span> </div>
													<div class="col-md-2"></div>
												</div>
												<div class="form-group">
													<label class="col-md-4 control-label">尊称：</label>
													<div class="col-md-6">
														&nbsp;&nbsp;&nbsp; &nbsp;
														<div class="radio radio-info radio-inline"><input name="con_contacts[saltname]" id="con_contacts[saltname]" value="先生" type="radio"><label for="con_contacts[saltname]">先生</label></div> &nbsp;
														<div class="radio radio-info radio-inline"><input name="con_contacts[saltname]" id="con_contacts[saltname]1" value="女士" type="radio"><label for="con_contacts[saltname]1">女士</label></div><span id="con_contacts[saltname]Tip" style="float: left;line-height: 32px;margin-left: 5%;color:red;"></span> </div>
													<div class="col-md-2"></div>
												</div>
											</div>
											<div class="col-md-12 add_body_title">
												<div classs="all-inline">
													<span class="sq-tag"></span>
													<div class="text-tag">
														<span>附加信息</span>
													</div>
												</div>
											</div>
											<div class="col-md-10 add_body_form">
												<div class="form-group">
													<label class="col-md-4 control-label">哈哈哈哈：</label>
													<div class="col-md-6">
														<input class="form-control " id="con_contacts[crm_dcygqu]" name="con_contacts[crm_dcygqu]" type="text"><span id="con_contacts[crm_dcygqu]Tip" style="float: left;line-height: 32px;margin-left: 5%;color:red;"></span> </div>
													<div class="col-md-2"></div>
												</div>
											</div>
											<div class="col-md-2 pull-right">
												<!-- <div style="height: 100%; border-right: 1px dashed gray;">&nbsp;sadf</div> -->
											</div>
										</div>
										<div class="slimScrollBar" style="background: rgb(153, 153, 153) none repeat scroll 0% 0%; width: 7px; position: absolute; top: 0px; opacity: 0.4; display: none; border-radius: 7px; z-index: 99; right: 1px; height: 297.819px;"></div>
										<div class="slimScrollRail" style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51) none repeat scroll 0% 0%; opacity: 0.2; z-index: 90; right: 1px;"></div>
									</div>
								</div>
							</div>
						</div>
						<div id="tfoot_div" class="clearfix">
							<div class="clearfix" id="tfoot_page">
								<div class="ibox-content" style="border-top: none;">
									<div class="col-sm-offset-2"><button type="submit" id="save_submit" class="btn btn-primary">创建客户</button></div>
								</div>
							</div>
						</div>
					</form>
				</div>

				<script>
					function checkinfo(param) {
						var field_value = $('#' + param).val();
						if(field_value) {
							$.post('/index.php?m=customer&a=checkinfo', {
									field_value: field_value,
									field_name: param,
								},
								function(data) {
									if(data.status == 1) {
										$('#' + param + '-error').remove('');
										$('#' + param).after('<label id="' + param + '-error" class="error" for="source"><i class="fa fa-times-circle"></i></label>');
										$('#' + param + '-error').html('<i class="fa fa-times-circle"></i>' + data.data);
									} else {
										$('#' + param + '-error').remove('');
									}
								},
								'json');
						}
					}
					$(document).ready(function() {
						$('#save_submit').prop('disabled', false);
						/*form表单验证*/
						$("#form").validate({
							submitHandler: function(form) {
								$('#save_submit').click(function() {
									$('#save_submit').prop('disabled', true);
								});
								form.submit();
							}
						});
					});

					/*星星特效*/
					$('.fa-star').mousemove(function() {
						$(this).addClass("star-orange");
						$(this).prevAll().addClass("star-orange");
						$(this).nextAll().removeClass("star-orange");
					});
					$('.fa-star').mouseout(function() {
						var star = $('#star').val();
						if(star == '' || star == null) {
							$('.fa-star').removeClass("star-orange");
						} else {
							$('.fa-star').removeClass("star-orange");
							$('.fa-star:lt(' + star + ')').addClass("star-orange");
						}
					});
					$('.fa-star').click(function() {
						var num = $(this).index() + 1;
						$('#star').val(num);
					});
					/*地区联动*/
					//new PCAS("province","city","area")//三级联动，有默认值，有文字提示信息
					$("#dialog-validate").dialog({
						autoOpen: false,
						modal: true,
						width: 400,
						maxHeight: 400,
						buttons: {
							"确定": function() {
								$(this).dialog("close");
							}
						},
						position: ["center", 100]
					});
					$('#name').blur(
						function() {
							name = $('#name').val();
							if(name != '') {
								$.post('/index.php?m=customer&a=check', {
										name: name
									},
									function(data) {
										if(data.data != 0) {
											$result = '';
											$.each(data.data, function(k, v) {
												$result += (k + 1) + '、' + v + '</br>';
											});
											$('#dialog-validate').dialog('open');
											$("#search_content").html($result);
											// alert_crm($result,"","warning");
										}
									},
									'json');
							}
							/*else {
								alert('请填写客户名');
							}*/
						}
					)
				</script>
				<script>
					// spacer.gif

					$(document).ready(function() {
						// 固定按钮

						var list = '';
						$(document.body).prepend("<div style='position:fixed;left:0;top:35%;z-index:1000;'><div id='recordBtn' style='display:none;position:absolute;left:0px;top:0px;width:27px; height:27px;cursor: pointer;background: url(Public/img/record.png) left top no-repeat;'></div><div class='recordBox' style='z-index: 1000;display:block; position:absolute;left:-222px;top:26px;width:220px;min-height:30px; max-height:550px; background:#fff; border:1px solid #ccc'><span class='recordClose' style='position:absolute;right:15px; top:10px; display:block;width:9px; height:9px;cursor: pointer;  background:url(Public/img/record.png) -3px -29px;z-index:998;'></span><span class='fixed'></span><div class='title'><i></i>最近访问</div><ul style='list-style:none'>" + list + "</ul></div></div>");

						// 设置样式

						$('.recordBox ul').css({
							'padding': '10px 10px'
						});
						$('.recordBox ul li').css({
							'line-height': '18px',
							'display': 'block',
							'margin-bottom': '8px'
						});
						$('.recordBox ul li i').css({
							'display': 'inline-block',
							'float': 'left',
							'width': '18px',
							'height': '18px',
							'text-align': 'center',
							'border': '1px solid #ccc',
							'border-radius': '100%',
							'-webkit-border-radius': '100%',
							'-moz-border-radius': '100%',
							'-ms-border-radius': '100%',
							'font-size': '12px',
							'font-style': 'normal',
							'line-height': '18px',
							'margin-right': '8px',
							'color': '#585858',
							'background': '#0088cc',
							'color': '#ffffff'
						});
						$('.title').css({
							'position': 'relative',
							'font-size': '14px',
							'font-family': '微软雅黑',
							'height': '30px',
							'line-height': '30px',
							'border-bottom': '1px solid #ccc',
							'background': '#e6e6e6',
							'text-indent': '25px'
						});
						$('.title i').css({
							'position': 'absolute',
							'display': 'block',
							'width': '15px',
							'height': '15px',
							'background': 'url(Public/img/record.png) left bottom no-repeat',
							'left': '5px',
							'top': '7px'
						});
						$('.fixed').css({
							'display': 'block',
							'width': '16px',
							'height': '16px',
							'background': 'url(Public/img/record.png) left -50px no-repeat',
							'position': 'absolute',
							'right': '8px',
							'top': '6px',
							'cursor': 'pointer',
							'z-index': '999'
						});

						//隐藏展示
						$('#recordBtn').click(function(oEvent) {
							var oleft = $('.recordBox').css('left');

							if(oleft == '-222px') {
								$('.recordBox').animate({
									left: '0px'
								}, 300);
							} else {
								$('.recordBox').animate({
									left: '-222px'
								}, 300);
								delCookie("yes");
								$('.fixed').show();
							}
							e = window.event || oEvent;
							if(e.stopPropagation) {
								e.stopPropagation();
							} else {
								e.cancelBubble = true;
							}
						});

						//关闭按钮

						$('.recordClose').click(function(oEvent) {
							delCookie("yes");
							$('.recordBox').animate({
								left: '-222px'
							}, 300);
							$('.fixed').show();
							e = window.event || oEvent;
							if(e.stopPropagation) {
								e.stopPropagation();
							} else {
								e.cancelBubble = true;
							}
						});
						$('.recordClose').mouseenter(function() {
							$(this).css('background-position', '-3px -41px');
						});
						$('.recordClose').mouseleave(function() {
							$(this).css('background-position', '-3px -29px');
						});

						// 阻止冒泡
						$('.recordBox').click(function(oEvent) {

							$('.recordBox').animate({
								left: '0px'
							}, 300);
							e = window.event || oEvent;
							if(e.stopPropagation) {
								e.stopPropagation();
							} else {
								e.cancelBubble = true;
							}
						});

						$(document).click(function() {

							var ofixed = getCookie('yes');
							if(ofixed == '1') {
								$('.recordBox').animate({
									left: '0px'
								}, 300);

							} else {
								$('.recordBox').animate({
									left: '-222px'
								}, 300);
								$('.fixed').show();
							}

						});

						$('.fixed').click(function() {

							SetCookie("yes", "1");

							$(this).hide();
						});
						var ofixed = getCookie('yes');
						if(ofixed == '1') {
							$('.recordBox').animate({
								left: '0px'
							}, 10);
							$('.fixed').hide();
						}

					});

					//写cookies函数  cookie设置
					function SetCookie(name, value) //两个参数，一个是cookie的名子，一个是值  
					{
						var Days = 30; //此 cookie 将被保存 30 天  
						var exp = new Date(); //new Date("December 31, 9998");  
						exp.setTime(exp.getTime() + Days * 24 * 60 * 60 * 1000);
						document.cookie = name + "=" + escape(value) + ";expires=" + exp.toGMTString();
					}

					function getCookie(name) //取cookies函数          
					{
						var arr = document.cookie.match(new RegExp("(^| )" + name + "=([^;]*)(;|$)"));
						if(arr != null) return unescape(arr[2]);
						return null;

					}

					function delCookie(name) //删除cookie  
					{
						var exp = new Date();
						exp.setTime(exp.getTime() - 1);
						var cval = getCookie(name);
						if(cval != null) document.cookie = name + "=" + cval + ";expires=" + exp.toGMTString();
					}
				</script>
			</div>
		</div>
		<div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-front ui-dialog-buttons ui-draggable ui-resizable" style="display: none; position: fixed;" tabindex="-1" role="dialog" aria-describedby="dialog-validate" aria-labelledby="ui-id-1">
			<div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"><span id="ui-id-1" class="ui-dialog-title">客户名验重结果</span><button class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only ui-dialog-titlebar-close" role="button" aria-disabled="false" title="关闭"><span class="ui-button-icon-primary ui-icon ui-icon-closethick"></span><span class="ui-button-text">关闭</span></button></div>
			<div style="" id="dialog-validate" class="ui-dialog-content ui-widget-content">
				有以下客户与该客户名类似
				<div id="search_content"></div>
			</div>
			<div class="ui-dialog-buttonpane ui-widget-content ui-helper-clearfix">
				<div class="ui-dialog-buttonset"><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">确定</span></button></div>
			</div>
			<div class="ui-resizable-handle ui-resizable-n" style="z-index: 90;"></div>
			<div class="ui-resizable-handle ui-resizable-e" style="z-index: 90;"></div>
			<div class="ui-resizable-handle ui-resizable-s" style="z-index: 90;"></div>
			<div class="ui-resizable-handle ui-resizable-w" style="z-index: 90;"></div>
			<div class="ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se" style="z-index: 90;"></div>
			<div class="ui-resizable-handle ui-resizable-sw" style="z-index: 90;"></div>
			<div class="ui-resizable-handle ui-resizable-ne" style="z-index: 90;"></div>
			<div class="ui-resizable-handle ui-resizable-nw" style="z-index: 90;"></div>
		</div>
		<!-- nice-scroll -->
		<script src="js/jquery_004.js" type="text/javascript"></script>
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
					cursorcolor: "#ccc", //#CC0071 光标颜色 
					cursoropacitymax: 0.5, //改变不透明度非常光标处于活动状态（scrollabar“可见”状态），范围从1到0 
					touchbehavior: false, //使光标拖动滚动像在台式电脑触摸设备 
					cursorwidth: scroll_width + "px", //像素光标的宽度 
					cursorborder: "0", //     游标边框css定义 
					cursorborderradius: "5px", //以像素为光标边界半径 
					autohidemode: false, //是否隐藏滚动条 
					zindex: 100,
					background: "#F3F3F5", //滚动条背景色
				});
			});
		</script>
		<div class="small-chat-box fadeInRight animated" id="feedback_div" style="z-index:1001;width:385px;height:500px;background-color: #f9f9f9;border-color:#ccc;">
			<div class="heading" draggable="true" style="background-color: #fff;border:1px solid #d8e3ef;color:#6A7687;">
				<small class="chat-date pull-right">
            服务热线：400-6968-650
        </small> 悟空小助手
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
			<div id="ascrail2000" class="nicescroll-rails nicescroll-rails-vr" style="width: 5px; z-index: 100; background: rgb(243, 243, 245) none repeat scroll 0% 0%; cursor: default; position: absolute; top: 0px; left: -5px; height: 355px; opacity: 0.5; display: none;">
				<div style="position: relative; top: 0px; float: right; width: 5px; height: 0px; background-color: rgb(204, 204, 204); border: 0px none; background-clip: padding-box; border-radius: 5px;" class="nicescroll-cursors"></div>
			</div>
			<div id="ascrail2000-hr" class="nicescroll-rails nicescroll-rails-hr" style="height: 5px; z-index: 100; background: rgb(243, 243, 245) none repeat scroll 0% 0%; top: 350px; left: 0px; position: absolute; opacity: 0.5; cursor: default; display: none;">
				<div style="position: absolute; top: 0px; height: 5px; width: 0px; background-color: rgb(204, 204, 204); border: 0px none; background-clip: padding-box; border-radius: 5px;" class="nicescroll-cursors"></div>
			</div>
		</div>
		<div id="down_url" style="display:none;width:120px;height:120px;background-color: #000;z-index: 1009;position: fixed;bottom:65px;right:160px;text-align: center;">
			<img src="%E6%82%9F%E7%A9%BACRM2.0%20-%20Powered%20By%20%E6%82%9F%E7%A9%BACRM_files/download.jfif" style="width:120px;height:120px;">
		</div>
		<div id="small-chat" style="z-index:1001;">
			<span class="badge badge-warning pull-right"></span>
			<a class="open-small-chat" title="悟空小助手">
				<i class="fa fa-comments"></i>
			</a>
		</div>

		<script>
			$("#app_download").hover(function() {
				$('#down_url').animate({
					opacity: "show"
				}, "slow");
			}, function() {
				$('#down_url').animate({
					opacity: "hide"
				}, "fast");
			});
			$('#feedback_div').on('click', '.feed_back', function() {
				var version = "2.3.6";
				var full_name = "邹总";
				var telephone = "";
				var server_name = "demo2.5kcrm.net:80/";
				var frameSrc = "http://help.crm.cc/index.php?m=feedBack&a=add" + '&version=' + version + '&full_name=' + full_name + '&telephone=' + telephone + '&server_name=' + server_name;
				$("#NoPermissioniframe").attr("src", frameSrc);
				$('#NoPermissionModal').modal({
					show: true,
					backdrop: 'static'
				});
			});

			$('#feedback_div').keydown(function(event) {
				if(event.keyCode == "13") {
					$('#feedback_submit').click();
				}
			});

			function feedback_ajax(question) {
				var url = "http://help.crm.cc/index.php?m=feedBack&a=ajaxdata&question=" + question;
				var img = "./Uploads/head/thumb_5aa5ec505c63c2291.png";
				$.ajax({
					type: 'get',
					url: url,
					async: true,
					dataType: 'jsonp',
					jsonp: "callback", //服务端用于接收callback调用的function名的参数
					success: function(data) {
						temp = '';
						if(data.status == 1) {
							temp += '<div class="right">\
                                <div class="author-name">';
							if(img) {
								temp += '<img alt="头像" style="height:38px;width:38px" class="img-circle" src="' + img + '" />';
							} else {
								temp += '<img alt="头像" style="height:38px;width:38px" class="img-circle" src="/Public/img/avatar_default.png" />';
							}
							temp += '<small class="chat-date"></small>\
                        </div>\
                            <div class="chat-message right_chat-message">' + question + '</div>\
                        </div>';
							$.each(data.data, function(k, v) {
								temp += '<div class="left">\
                                    <div class="author-name">\
                                        <img alt="头像" style="height:32px;width:32px" class="img-circle" src="/Public/img/wukong.png">\
                                        <small class="chat-date"></small>\
                                    </div>\
                                    <div class="chat-message active left_chat-message"><a style="color:#fff;" target="_blank" href="http://help.crm.cc/index.php?m=help&a=view&help_id=' + v['help_id'] + '&help_menu_id=' + v['help_menu_id'] + '">' + v['name'] + '</a></div>\
                                </div>';
							});
							$('#feedback_content').val('');
							$('#clearfeedback').before(temp);
							var html_h = parseInt($('#list_feedback').height() + 200);
							$("#feedback_body").animate({
								"scrollTop": html_h
							}, 1000);
						} else {
							temp = '';
							temp += '<div class="right">\
                                <div class="author-name">';
							if(img) {
								temp += '<img alt="头像" style="height:38px;width:38px" class="img-circle" src="' + img + '" />';
							} else {
								temp += '<img alt="头像" style="height:38px;width:38px" class="img-circle" src="/Public/img/avatar_default.png" />';
							}
							temp += '<small class="chat-date"></small>\
                        </div>\
                            <div class="chat-message right_chat-message">' + question + '</div>\
                        </div>';
							temp += '<div class="left">\
                        <div class="author-name">\
                            <img alt="头像" style="height:32px;width:32px" class="img-circle" src="/Public/img/wukong.png">\
                            <small class="chat-date"></small>\
                        </div>\
                        <div class="chat-message active left_chat-message">' + data['data'][0]['name'] + '</div>\
                    </div>';
							$('#feedback_content').val('');
							$('#clearfeedback').before(temp);
							var html_h = parseInt($('#list_feedback').height() + 180);
							$("#feedback_body").animate({
								"scrollTop": html_h
							}, 1000);
						}
					},
					error: function() {
						temp = '';
						temp += '<div class="right">\
                                <div class="author-name">';
						if(img) {
							temp += '<img alt="头像" style="height:38px;width:38px" class="img-circle" src="' + img + '" />';
						} else {
							temp += '<img alt="头像" style="height:38px;width:38px" class="img-circle" src="/Public/img/avatar_default.png" />';
						}
						temp += '<small class="chat-date"></small>\
                    </div>\
                        <div class="chat-message right_chat-message">' + question + '</div>\
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
							"scrollTop": html_h
						}, 1000);
					}
				});
			}

			$('#feedback_submit').click(function() {
				var feedback_content = $.trim($('#feedback_content').val());
				if(!feedback_content) {
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
			function wordFunction() {
				var feedbackLength = $("#feedback_content").val().length;
				if(feedbackLength >= 100) {
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
			$(document).ready(function() {
				/*复选框选择效果*/
				if($('.check_all').size() > 0) {
					var icheck_num = 0;
					var all_check_num = 0;
					/*选择所有and取消所有*/
					$(".check_all").change(function() {
						$("input[class='check_list']").prop('checked', $(this).prop("checked")); //选中
						// if($(".check_all").prop("checked")){
						if($(this).is(":checked")) { //jQuery方式判断
							$(".single_btn").hide().children().each(function() {
								$(this).attr('rel', '');
							})
							$('#title-hide').show();
							$('#title-show').hide();
							all_check_num = $("input[class='check_list']:checked").length;
						} else {
							$('#title-hide').hide();
							$('#title-show').show();
							all_check_num = 0;
						}

						if(document.getElementById("oDivL_tab_Test3")) {
							if($(".check_all:checked").size() > 0 && icheck_num % 2 == 0) {
								icheck_num = all_check_num / 2;
								$("#icheck_num").text(all_check_num / 2);
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
					$('.check_list').click(function() {
						if($(this).prop("checked")) {
							icheck_num++;
						} else {
							icheck_num--;
						}
						$("#icheck_num").text(icheck_num);
						//处理单选时才有的操作
						if(icheck_num == 1) {
							$(".single_btn").show().children().each(function() {
								$(this).attr('rel', $("input.check_list:checked").val());
								$('#log_customer').attr('rel1', $("input.check_list:checked").attr('rel'));

								$('#log_business').attr('rel', $("input.check_list:checked").attr('rel'));
								$('.business_btn').children().attr('rel1', $("input.check_list:checked").attr('rel'));

								$('#examine_type').val($("input.check_list:checked").attr('rel'));
								if($("input.check_list:checked").attr('rel1') == 1) {
									$('#to_top_span').html('&nbsp;取消置顶');
									$('#to_check').html('<input type="hidden" id="is_checked" value="2">&nbsp;撤销');
									$('#user_span').html('<a id="delete" href="javascript:void(0)" onclick="del_user(2)"><i class="fa fa-check"></i>&nbsp;启用账号</a>');
								} else {
									$('#to_top_span').html('&nbsp;置顶');
									var rel_name = $("input.check_list:checked").attr('rel3');
									$('#to_check').html('<input type="hidden" id="is_checked" rel="' + rel_name + '" value="1">&nbsp;审核');
								}
							})
						} else {
							$(".single_btn").hide().children().each(function() {
								$(this).attr('rel', '');
							})
						}
						if(icheck_num <= 0) {
							$('#title-hide').hide();
							$('#title-show').show();
						} else {
							$('#title-hide').show();
							$('#title-show').hide();
						}
					});
					/*点插 取消所有选中*/
					$('#back-show').click(function() {
						icheck_num = 0;
						$("#icheck_num").text(icheck_num);
						$('#title-hide').hide();
						$('#title-show').show();
						$(".check_list,.check_all").attr("checked", false);
					});
				}
			});
		</script>

		<div class="modal inmodal" id="Profile" tabindex="-1" role="dialog" aria-hidden="true">
			<div class="modal-dialog modal-lg">
				<div class="modal-content animated bounceInRight">

				</div>
			</div>
		</div>
		<div class="modal inmodal fade" id="Modal_login" tabindex="-1" style=" overflow:auto; border:1px solid #000000;" role="dialog">
			<div class="modal-dialog modal-md" style="width:700px;">
				<div class="modal-content" id="login_modal">

				</div>
			</div>
		</div>
		<div class="modal inmodal fade" id="Modal_anthorize" aria-hidden="true" role="dialog" tabindex="-1">
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
								<div class="col-sm-3 pull-left">
									<a target="_blank" href="http://www.crm.cc/update/">查看更新日志</a>
								</div>
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
		</div>
		<div class="modal fade" id="NoPermissionModal">
			<div class="modal-dialog" style="width:800px;height:545px;">
				<div class="modal-content" style="height: 100%;">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
						<h4 class="modal-title" id="NoPermissionModalLabel">用户反馈</h4>
					</div>
					<div class="modal-body feedback_body" style="height:440px;">
						<iframe id="NoPermissioniframe" height="100%" frameborder="0" width="100%"></iframe>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关  闭</button>
					</div>
				</div>
			</div>
		</div>
	</body>

</html>