<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<title>致客科技_客户管理</title>
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
		<script src="js/WdatePicker.js" type="text/javascript"></script>
		<link href="css/WdatePicker.css" rel="stylesheet" type="text/css">
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
			<div id="page-wrapper" class="gray-bg" style="background: rgb(230, 233, 240) none repeat scroll 0% 0%; min-height: 767px;">
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
								<a href="kehulianxiren.htm"><span class="fa fa-phone-square" style="display:inline"></span>&nbsp;&nbsp;客户联系人</a>
							</li>
						</ul>
						<ul class="nav navbar-top-links navbar-right" style="margin-right:0px;">
							<li class="dropdown" style="">
								<a class="dropdown-toggle count-info" id="todo_url" data-toggle="dropdown" href="#" title="待办事项">
									<img src="img/remain.png" alt="">
									<div class="label label-info" style="background-color: #FA7252;" id="todo_num">225</div>
								</a>
								<ul class="dropdown-menu dropdown-alerts folder-list m-b-md" style="width:250px;">
									<li style="border-bottom:1px dashed #e7eaec !important;">
										<a href="http://demo2.5kcrm.net/index.php?m=contract&amp;a=index&amp;contract_checked=1&amp;by=all"><i class="fa fa-list-alt"></i>&nbsp;&nbsp;待审核的合同<span class="label label-info pull-right" style="background-color: #FA7252;" id="header_check_contract_num">64</span></a>
									</li>
									<li style="border-bottom:1px dashed #e7eaec !important;">
										<a href="http://demo2.5kcrm.net/index.php?m=finance&amp;a=index&amp;t=receivingorder&amp;status[value]=0&amp;by=all"><i class="fa fa-money"></i>&nbsp;&nbsp;待审核的回款<span class="label label-info pull-right" style="background-color: #FA7252;" id="header_receivables_num">50</span></a>
									</li>
									<li style="border-bottom:1px dashed #e7eaec !important;">
										<a href="http://demo2.5kcrm.net/index.php?m=examine&amp;a=index&amp;by=me_examine&amp;examining=1"><i class="fa fa-check-square-o"></i>&nbsp;&nbsp;待处理的审批流<span class="label label-info pull-right" style="background-color: #FA7252;" id="header_examine_num">2</span></a>
									</li>
									<li style="border-bottom:1px dashed #e7eaec !important;">
										<a href="http://demo2.5kcrm.net/index.php?m=contract&amp;a=index&amp;by=dqcontact"><i class="fa fa-user"></i>&nbsp;&nbsp;合同到期提醒<span class="label label-info pull-right" style="background-color: #FA7252;" id="header_dqcontact_num">41</span></a>
									</li>

									<li style="border-bottom:1px dashed #e7eaec !important;">
										<a href="http://demo2.5kcrm.net/index.php?m=finance&amp;a=index&amp;t=receivables&amp;r_status=1&amp;by=me"><i class="fa fa-money"></i>&nbsp;&nbsp;应收款提醒<span class="label label-info pull-right" style="background-color: #FA7252;" id="receivables_num">68</span></a>
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
													<div style="overflow:hidden;padding:0 10px;"> <span class="pull-left" style="color:#46be8a;line-height:26px;"><i class="fa fa-circle"></i>&nbsp;&nbsp;【 提醒 】波音787</span><br> <small class="text-muted pull-right" style="margin-top: 5px;">2018年03月14 15:00</small> </div>
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
									<img src="img/bell.png" alt=""><span class="label label-primary" id="message_num"></span>
								</a>
								<ul class="dropdown-menu dropdown-alerts" style="width:365px;">
									<li class="list-group" role="presentation" id="message_group" style="height:220px;display:none;">
										<div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 100%;">
											<div class="full-height-scroll" id="message_list" data-height="220px" data-plugin="slimScroll" style="overflow: hidden; width: auto; height: 100%;">
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
		                        <img src="img/wukong.png" title="悟空小助手"> 您有<strong>' + data.data['message_num'] + '</strong>条消息待查看\
		                        <span class="pull-right text-muted small" style="line-height:30px;">' + data.data['message_time'] + '前</span>\
		                    </div>\
		                </a>';
								}

								if(data.data['message_announcement_count'] != 0 && data.data['message_announcement_count'] != '') {
									message_html += '<a href="/index.php?m=message&a=index&by=announcement" style="width:100%;color:#676a6c;padding:5px !important;border-bottom:1px dashed #ddd;float:left;margin-bottom:5px;">\
		                    <div style="padding:0 10px;">\
		                        <img src="img/announcement.png" title="系统公告"> 您有<strong>' + data.data['message_announcement_count'] + '</strong>条公告信息待查看\
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
				<link href="css/litebox.css" rel="stylesheet" type="text/css">
				<script src="js/PCASClass.js" type="text/javascript"></script>
				<!-- nice-scroll -->
				<script src="js/jquery_002.js" type="text/javascript"></script>
				<script type="text/javascript" src="js/TableFreeze.js"></script>
				<script src="js/5kcrm_more.js" type="text/javascript"></script>
				<style>
					body {
						overflow-y: hidden;
					}
					
					.option {
						padding-left: -30px;
					}
					
					#oDivL_tab_Test3 {
						background-color: #fff;
						min-width: 300px;
					}
					
					#oTableLH_tab_Test3 {
						min-width: 300px;
					}
					
					.table {
						max-width: none;
					}
					
					.scene_active {
						background-color: #e6e9f0;
					}
					
					#tab_Test3>tr {
						height: 45px;
						line-height: 45px;
					}
					
					.radio label::before {
						border: none;
					}
				</style>
				<script>
					$(function() {
						var scroll_width = 10;
						// var oTableLH_tab_Test3 = 38;
						$("#table_div").height(window.innerHeight - $("#table_div").offset().top - $("#tfoot_div").height() - parseInt($("#table_container").css("padding-bottom").replace("px", "")) - 10);
						$(window).resize(function() {
							$("#table_div").height(window.innerHeight - $("#table_div").offset().top - $("#tfoot_div").height() - parseInt($("#table_container").css("padding-bottom").replace("px", "")) - 10);
							$("#oDivL_tab_Test3").height($("#table_div").height() - scroll_width - 1).width($("#oTableLH_tab_Test3").width());
							$("#oDivH_tab_Test3").height($("#oTableLH_tab_Test3").height()).width($("#table_div").width() - scroll_width);
						})
						$(".nicescroll").niceScroll({
							cursorcolor: "#999", //#CC0071 光标颜色 
							cursoropacitymax: 0.4, //改变不透明度非常光标处于活动状态（scrollabar“可见”状态），范围从1到0 
							touchbehavior: false, //使光标拖动滚动像在台式电脑触摸设备 
							cursorwidth: scroll_width + "px", //像素光标的宽度 
							cursorborder: "0", //     游标边框css定义 
							cursorborderradius: "3px", //以像素为光标边界半径 
							autohidemode: false, //是否隐藏滚动条 
							zindex: 100,
							background: "#F3F3F5", //滚动条背景色
						});
						if("me") {
							$("#filter_ul").prev().html($("#filter_ul>li>a.active").text() + '<span class="fa fa-angle-down small_fa"></span>');
						}
						$("#tab_Test3").FrozenTable(1, 0, 4);
						$("#oDivL_tab_Test3").height($("#table_div").height() - scroll_width - 1).width($("#oTableLH_tab_Test3").width()).css({
							'zIndex': 9
						});
						$("#oDivL_tab_Test3").css({
							"background-color": "#fff",
							"border-right": "1px solid #e7eaec"
						});
						$("#oTableLH_tab_Test3").css({
							"border-right": "1px solid #e7eaec"
						});
						$("#oDivH_tab_Test3").height($("#oTableLH_tab_Test3").height()).width($("#table_div").width() - scroll_width).css({
							'zIndex': 9
						});
					})
				</script>
				<div class="wrapper wrapper-content">
					<div class="row">
						<div class="col-md-12">
							<div class="ibox float-e-margins">
								<div class="title-bar" style="position: relative;z-index: 99;">
									<div class="row  clearfix" id="title-hide" style="display:none;">
										<ul class="breadcrum pull-left">
											<li>已选中&nbsp;<span id="icheck_num"></span>&nbsp;项</li>
											<li class="single_btn">
												<a href="javascript:void(0)" id="log_customer"><i class="fa fa-file-text"></i>&nbsp;添加沟通日志</a>
											</li>
											<li class="single_btn business_btn">
												<a href="javascript:void(0)" id="remind"><i class="fa fa-bell-o"></i>&nbsp;提醒</a>
											</li>
											<li>
												<a id="remove" href="javascript:void(0)"><i class="fa fa-users"></i>&nbsp;放入客户池</a>
											</li>
											<li class="single_btn">
												<a href="javascript:void(0)" id="edit_customer"><i class="fa fa-pencil"></i>&nbsp;编辑</a>
											</li>
											<li class="single_btn business_btn">
												<a href="javascript:void(0)" id="to_top"><i class="fa fa-arrow-up"></i><span id="to_top_span">&nbsp;置顶</span></a>
											</li>
											<li>
												<a id="change" href="javascript:void(0)"><i class="fa fa-exchange"></i>&nbsp;转移</a>
											</li>
											<li>
												<a id="share" href="javascript:void(0)"><i class="fa fa-share"></i>&nbsp;分享</a>
											</li>
											<li>
												<a href="javascript:void(0);" class="link excelExport"><i class="fa fa-download"></i>&nbsp;导出</a>
											</li>
											<li>
												<a id="delete" href="javascript:void(0)"><i class="fa fa-times"></i>&nbsp;删除</a>
											</li>
											<li class="last_li"><big><a class="fa fa-times pull-right" id="back-show"></a></big></li>
										</ul>
									</div>
									<div class="row " id="title-show">
										<ul class="nav pull-left" style="margin:2px 0 0 15px;">
											<a href="kehutianjia.htm" class="btn btn-primary btn-sm pull-left" style="margin-right:8px"><i class="fa fa-plus-circle"></i>&nbsp; 新建客户</a>
										</ul>
										<div class="pull-right" style="margin-right:20px;">
											<form class="form-inline pull-left" id="customer_search" action="" method="get">
												<ul class="breadcrum pull-left" style="margin-bottom: 0px;padding-right:0px;">
													<li>
														<div class="input-group">
															<a href="#" class="dropdown-toggle" data-toggle="dropdown" style="padding: 2px;">
																<div class="input-group" style="margin-right: 10px;margin-bottom: 5px;color:#667B8F;">我的客户 <span class="caret"></span></div>
															</a>
															<ul class="dropdown-menu dropdown-alerts folder-list m-b-md" style="width:150px;">
																<li class="list-group" role="presentation" id="event_group_1" style="height:160px;margin-bottom: 0px;">
																	<div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 100%;">
																		<div class="full-height-scroll" id="scene_list" data-height="220px" data-plugin="slimScroll" style="overflow: hidden; width: auto; height: 100%;">
																			<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=index&amp;by=me&amp;order_type=&amp;order_field=&amp;listrows=15" style="width:100%;color:#676a6c;padding:5px !important;float:left;" class="scene_active" title="我的客户">
																				<div style="padding:0 10px;">
																					<span class="pull-left" style="line-height:26px;">&nbsp;&nbsp;我的客户</span>
																				</div>
																			</a>
																			<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=index&amp;scene_id=70" style="width:100%;color:#676a6c;padding:5px !important;float:left;" title="交查客户">
																				<div style="padding:0 10px;">
																					<span class="pull-left" style="line-height:26px;">&nbsp;&nbsp;交查客户</span>
																				</div>
																			</a>
																			<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=index&amp;scene_id=71" style="width:100%;color:#676a6c;padding:5px !important;float:left;" title="李红yan">
																				<div style="padding:0 10px;">
																					<span class="pull-left" style="line-height:26px;">&nbsp;&nbsp;李红yan</span>
																				</div>
																			</a>
																			<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=index&amp;scene_id=72" style="width:100%;color:#676a6c;padding:5px !important;float:left;" title="1类">
																				<div style="padding:0 10px;">
																					<span class="pull-left" style="line-height:26px;">&nbsp;&nbsp;1类</span>
																				</div>
																			</a>
																			<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=index&amp;scene_id=73" style="width:100%;color:#676a6c;padding:5px !important;float:left;" title="123">
																				<div style="padding:0 10px;">
																					<span class="pull-left" style="line-height:26px;">&nbsp;&nbsp;123</span>
																				</div>
																			</a>
																			<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=index&amp;scene_id=74" style="width:100%;color:#676a6c;padding:5px !important;float:left;" title="自定义">
																				<div style="padding:0 10px;">
																					<span class="pull-left" style="line-height:26px;">&nbsp;&nbsp;自定义</span>
																				</div>
																			</a>
																			<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=index&amp;scene_id=45" style="width:100%;color:#676a6c;padding:5px !important;float:left;" title="1月成交客户">
																				<div style="padding:0 10px;">
																					<span class="pull-left" style="line-height:26px;">&nbsp;&nbsp;1月成交客户</span>
																				</div>
																			</a>
																			<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=index&amp;scene_id=46" style="width:100%;color:#676a6c;padding:5px !important;float:left;" title="已成交客户">
																				<div style="padding:0 10px;">
																					<span class="pull-left" style="line-height:26px;">&nbsp;&nbsp;已成交客户</span>
																				</div>
																			</a>
																			<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=index&amp;by=all&amp;order_type=&amp;order_field=&amp;listrows=15" style="width:100%;color:#676a6c;padding:5px !important;float:left;" title="全部客户">
																				<div style="padding:0 10px;">
																					<span class="pull-left" style="line-height:26px;">&nbsp;&nbsp;全部客户</span>
																				</div>
																			</a>
																			<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=index&amp;scene_id=47" style="width:100%;color:#676a6c;padding:5px !important;float:left;" title="已成交客户11">
																				<div style="padding:0 10px;">
																					<span class="pull-left" style="line-height:26px;">&nbsp;&nbsp;已成交客户11</span>
																				</div>
																			</a>
																			<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=index&amp;scene_id=48" style="width:100%;color:#676a6c;padding:5px !important;float:left;" title="打电话">
																				<div style="padding:0 10px;">
																					<span class="pull-left" style="line-height:26px;">&nbsp;&nbsp;打电话</span>
																				</div>
																			</a>
																			<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=index&amp;scene_id=50" style="width:100%;color:#676a6c;padding:5px !important;float:left;" title="主要客户">
																				<div style="padding:0 10px;">
																					<span class="pull-left" style="line-height:26px;">&nbsp;&nbsp;主要客户</span>
																				</div>
																			</a>
																			<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=index&amp;by=share&amp;order_type=&amp;order_field=&amp;listrows=15" style="width:100%;color:#676a6c;padding:5px !important;float:left;" title="共享给我的">
																				<div style="padding:0 10px;">
																					<span class="pull-left" style="line-height:26px;">&nbsp;&nbsp;共享给我的</span>
																				</div>
																			</a>
																			<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=index&amp;by=sub&amp;order_type=&amp;order_field=&amp;listrows=15" style="width:100%;color:#676a6c;padding:5px !important;float:left;" title="下属客户">
																				<div style="padding:0 10px;">
																					<span class="pull-left" style="line-height:26px;">&nbsp;&nbsp;下属客户</span>
																				</div>
																			</a>
																			<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=index&amp;by=myshare&amp;order_type=&amp;order_field=&amp;listrows=15" style="width:100%;color:#676a6c;padding:5px !important;float:left;" title="我共享的">
																				<div style="padding:0 10px;">
																					<span class="pull-left" style="line-height:26px;">&nbsp;&nbsp;我共享的</span>
																				</div>
																			</a>
																		</div>
																		<div class="slimScrollBar" style="background: rgb(153, 153, 153) none repeat scroll 0% 0%; width: 7px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 7px; z-index: 99; right: 1px;"></div>
																		<div class="slimScrollRail" style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51) none repeat scroll 0% 0%; opacity: 0.2; z-index: 90; right: 1px;"></div>
																	</div>
																</li>
																<li style="float:left;width:100%;">
																	<a href="javascript:void(0);" id="add_scene" style="width:100%;color:#676a6c;padding:5px !important;float:left;">
																		<div style="padding:0 10px;">
																			<span class="pull-left" style="line-height:26px;"><i class="fa fa-plus-circle"></i>&nbsp;新建场景</span>
																		</div>
																	</a>
																</li>
																<li style="float:left;width:100%;">
																	<a href="javascript:void(0);" id="setting_scene" style="width:100%;color:#676a6c;padding:5px !important;float:left;">
																		<div style="padding:0 10px;">
																			<span class="pull-left" style="line-height:26px;"><i class="fa fa-cog"></i>&nbsp;管理</span>
																		</div>
																	</a>
																</li>
															</ul>
														</div>
													</li>
													<li>
														搜索：
														<div class="input-group">
															<input name="m" value="customer" type="hidden">
															<input name="a" value="index" type="hidden">
															<input name="field" value="name" type="hidden">
															<input name="condition" value="contains" type="hidden">
															<input name="content" value="" type="hidden">
															<input name="by" value="me" type="hidden">
															<input name="scene_id" value="" type="hidden">

															<input id="short_search" style="width:180px;" placeholder="客户名/联系人/联系电话" onkeydown='if(event.keyCode==13) {$("#short_search_btn").trigger("click");return false;}' class="form-control input-sm" name="search" type="text">
															<span class="input-group-btn">
												<button class="btn btn-default btn-search" id="short_search_btn" type="submit"><i class="fa fa-search"></i></button>
											</span>
														</div>
														&nbsp;&nbsp;
														<a title="高级搜索" href="javascript:void(0)" id="search_type" class="btn btn-white btn-bitbucket"><i class="fa fa-filter" style="color: #D8E3EF;"></i></a>
													</li>
												</ul>
											</form>
											<div class="nav navbar-top-links navbar-left" style="margin-right:15px;">
												<div class="dropdown" style="">
													<a title="排序" href="javascript:void(0)" data-toggle="dropdown" class="btn btn-white btn-bitbucket dropdown-toggle" style="margin-left:-4px;"><i class="fa fa-sort-amount-asc" style="color: #D8E3EF;"></i></a>
													<ul class="dropdown-menu dropdown-menu-left" style="width:150px;left:-100px;" id="dropdown_order">
														<li class="list-group" role="presentation" style="height:150px;">
															<div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 100%;">
																<div class="full-height-scroll" data-height="150px" data-plugin="slimScroll" style="overflow: hidden; width: auto; margin-top: 10px; height: 100%;">
																	<div class="link-block" style="margin-left:15px;">
																		<div class="radio radio-info radio-inline">
																			<input class="save_order" name="order_field" id="create_time_order" value="create_time" type="radio">
																			<label for="create_time_order">
			                                                创建时间
			                                            </label>
																		</div>
																	</div>
																	<div class="link-block" style="margin-left:15px;">
																		<div class="radio radio-info radio-inline">
																			<input class="save_order" name="order_field" id="update_time_order" value="update_time" checked="checked" type="radio">
																			<label for="update_time_order">
			                                                修改时间
			                                            </label>
																		</div>
																	</div>
																	<div class="link-block" style="margin-left:15px;">
																		<div class="radio radio-info radio-inline">
																			<input class="save_order" name="order_field" id="crm_yacitq_order" value="crm_yacitq" type="radio">
																			<label for="crm_yacitq_order">
				                                                到期时间				                                            </label>
																		</div>
																	</div>
																	<div class="link-block" style="margin-left:15px;">
																		<div class="radio radio-info radio-inline">
																			<input class="save_order" name="order_field" id="grade_order" value="grade" type="radio">
																			<label for="grade_order">
				                                                客户等级				                                            </label>
																		</div>
																	</div>
																	<div class="link-block" style="margin-left:15px;">
																		<div class="radio radio-info radio-inline">
																			<input class="save_order" name="order_field" id="nextstep_time_order" value="nextstep_time" type="radio">
																			<label for="nextstep_time_order">
				                                                下次联系时间				                                            </label>
																		</div>
																	</div>
																</div>
																<div class="slimScrollBar" style="background: rgb(153, 153, 153) none repeat scroll 0% 0%; width: 7px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 7px; z-index: 99; right: 1px;"></div>
																<div class="slimScrollRail" style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51) none repeat scroll 0% 0%; opacity: 0.2; z-index: 90; right: 1px;"></div>
															</div>
														</li>
														<li class="divider" style="height:1px;"></li>
														<li>
															<div class="link-block" style="margin-left:15px;">
																<div class="radio radio-info radio-inline">
																	<input class="save_order" name="order_type" id="asc_order" value="asc" type="radio">
																	<label for="asc_order">
		                                                正序
		                                            </label>
																</div>
															</div>
															<div class="link-block" style="margin-left:15px;">
																<div class="radio radio-info radio-inline">
																	<input class="save_order" name="order_type" id="desc_order" value="desc" checked="checked" type="radio">
																	<label for="desc_order">
		                                                倒序
		                                            </label>
																</div>
															</div>
															<div class="link-block" style="margin-left:15px;">
																<div class="radio radio-info radio-inline">
																	<input class="save_order" name="order_type" id="cancel_order" value="cancel_order" type="radio">
																	<label for="cancel_order">
		                                                取消排序
		                                            </label>
																</div>
															</div>
														</li>
													</ul>
												</div>
											</div>
											<div class="btn-group pull-left">
												<button data-toggle="dropdown" class="btn btn-primary dropdown-toggle" aria-expanded="false">操作 <span class="caret"></span>
	                            </button>
												<ul class="dropdown-menu">
													<li>
														<a id="import_excel" class="link" href="javascript:void(0);"><i class="fa fa-upload"></i>&nbsp;导入</a>
													</li>
													<li>
														<a href="javascript:void(0);" class="link excelExport"><i class="fa fa-download"></i>&nbsp;导出</a>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
								<div class="ibox-content clearfix" id="table_container" style="z-index: 1;">
									<form id="form1" action="" method="post" style="position:relative;">
										<input name="owner_role" id="hidden_owner_id" value="0" type="hidden">
										<input name="message_alert" id="hidden_message" value="0" type="hidden">
										<input name="sms_alert" id="hidden_sms" value="0" type="hidden">
										<input name="email_alert" id="hidden_email" value="0" type="hidden">
										<input name="operating_type" id="operating_type" value="" type="hidden">
										<div id="table_div" class="nicescroll" style="height: 577.383px; overflow: hidden;" tabindex="0">
											<table class="table table-hover table-striped table_thead_fixed" id="tab_Test3">
												<tbody>
													<tr id="childNodes_num" class="tabTh">
														<td style="width:30px;padding-left: 20px" nowrap="nowrap">
															<div class="checkbox checkbox-primary">
																<input class="check_all" type="checkbox">
																<label for=""></label>
															</div>
														</td>
														<td style="width: 26px;" nowrap="nowrap">&nbsp;</td>
														<td style="min-width:300px;" nowrap="nowrap">客户名称</td>
														<td style="width:30px;border-right:1px solid #e7eaec;" nowrap="nowrap"></td>
														<td nowrap="nowrap">联系电话</td>
														<td nowrap="nowrap">车牌号</td>
														<td nowrap="nowrap">到期时间</td>
														<td nowrap="nowrap">会员卡号</td>
														<td nowrap="nowrap">客户等级</td>
														<td nowrap="nowrap">客户状态</td>
														<td nowrap="nowrap">微信</td>
														<td nowrap="nowrap">客户行业</td>
														<td nowrap="nowrap">客户负责人</td>
														<td nowrap="nowrap">QQ</td>
														<td nowrap="nowrap">销售渠道</td>
														<td nowrap="nowrap">地址</td>
														<td nowrap="nowrap">创建时间</td>
														<td nowrap="nowrap">
															<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=index&amp;desc_order=update_time&amp;by=me&amp;order_type=&amp;order_field=&amp;listrows=15">距到期天数</a>
														</td>
														<td colspan="2" style="min-width: 80px;" nowrap="nowrap">快捷操作</td>
													</tr>
													<tr class="controls_tr" rel="628">
														<td style="width: 30px;padding-left: 20px;" nowrap="nowrap">
															<div class="checkbox checkbox-primary">
																<input name="customer_id[]" class="check_list" value="628" rel="" rel1="1" rel2="1521018802" type="checkbox">
																<label for=""></label>
															</div>
														</td>
														<td nowrap="nowrap">
															<a href="javascript:void(0);" class="remind_view" rel="628">
																<span class="fa fa-bell-o " id="remind_view_628" style="font-size:16px;color:orange"></span>
															</a>
														</td>
														<td style="min-width:100px;" nowrap="nowrap">
															<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=628" title="武帝时代" target="_blank" style="border-left: 5px solid #ffb07b;padding-left: 5px;line-height: 24px;">
																武帝时代
															</a>
														</td>
														<td style="width:30px;border-right:1px solid #e7eaec;" nowrap="nowrap">
															<a class="log_customer" href="javascript:void(0);" rel="628"><i class="fa fa-toggle-right" id="fa_log_628" title="沟通日志" style="float:right;color:#ccc;"></i></a>
														</td>
														<td nowrap="nowrap"></td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																												12													</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																											    <span style="cursor:pointer;color:#D0D0D0;">
														        <i class="fa fa-star star-orange"></i>&nbsp;<i class="fa fa-star star-orange"></i>&nbsp;<i class="fa fa-star star-orange"></i>&nbsp;														        <i class="fa fa-star"></i>&nbsp;<i class="fa fa-star"></i>&nbsp;														    </span>
															</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																												已成交客户													</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#050505">
																												北京市													</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																													<a class="role_info" rel="1" href="javascript:void(0)">邹总</a>
																											</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																												市辖区
东城区

													</span>
														</td>
														<td nowrap="nowrap">2018-03-01</td>
														<td nowrap="nowrap">
															<a style="margin-left:0px;" href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=customerlock&amp;customer_id=628">
																<img style="width:19px;" title="点击解锁，解锁定后超期回归客户池" src="img/locking.png">
															</a>
															<font color="#7486A8">已锁定</font>
														</td>
														<td class="detail-right" style="width:30px;" nowrap="nowrap">
															<a data-toggle="tooltip" data-placement="top" data-original-title="取消置顶" href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=settop&amp;module=customer&amp;module_id=628">
																<i class="fa fa-x fa-thumb-tack" style="font-size:16px;"></i>
															</a>
														</td>
														<td class="detail-right" style="width:30px;" nowrap="nowrap">
															<a data-toggle="tooltip" data-placement="top" class="addproduct" data-original-title="添加商机" rel="628">
																<i class="fa fa-cube" style="font-size:16px;"></i>
															</a>
														</td>
													</tr>
													<tr class="controls_tr" rel="320">
														<td style="width: 30px;padding-left: 20px;" nowrap="nowrap">
															<div class="checkbox checkbox-primary">
																<input name="customer_id[]" class="check_list" value="320" rel="" rel1="1" rel2="" type="checkbox">
																<label for=""></label>
															</div>
														</td>
														<td nowrap="nowrap">
															<a href="javascript:void(0);" class="remind_view" rel="320">
																<span class="fa fa-bell-o hide" id="remind_view_320" style="font-size:16px;color:orange"></span>
															</a>
														</td>
														<td style="min-width:100px;" nowrap="nowrap">
															<a href="kehuchakanxinxi.htm" title="武帝时代" target="_blank" style="border-left: 5px solid #ffb07b;padding-left: 5px;line-height: 24px;">
																武帝时代
															</a>
														</td>
														<td style="width:30px;border-right:1px solid #e7eaec;" nowrap="nowrap">
															<a class="log_customer" href="javascript:void(0);" rel="320"><i class="fa fa-toggle-right" id="fa_log_320" title="沟通日志" style="float:right;color:#ccc;"></i></a>
														</td>
														<td nowrap="nowrap">155424154215</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																												12													</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																											    <span style="cursor:pointer;color:#D0D0D0;">
														        <i class="fa fa-star star-orange"></i>&nbsp;<i class="fa fa-star star-orange"></i>&nbsp;<i class="fa fa-star star-orange"></i>&nbsp;														        <i class="fa fa-star"></i>&nbsp;<i class="fa fa-star"></i>&nbsp;														    </span>
															</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																												已成交客户													</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#050505">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																													<a class="role_info" rel="1" href="javascript:void(0)">邹总</a>
																											</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																												56415615													</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																												官网													</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																												北京市
市辖区
东城区

													</span>
														</td>
														<td nowrap="nowrap">2017-12-05</td>
														<td nowrap="nowrap">
															<a style="margin-left:0px;" href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=customerlock&amp;customer_id=320">
																<img title="点击锁定，锁定后将不会回归客户池" style="width:19px;" src="img/unlocking.png"> </a>
															<font title="7天未跟进或30天未签合同，将自动回归客户池" color="#7486A8">7/30</font>
														</td>
														<td class="detail-right" style="width:30px;" nowrap="nowrap">
															<a data-toggle="tooltip" data-placement="top" data-original-title="取消置顶" href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=settop&amp;module=customer&amp;module_id=320">
																<i class="fa fa-x fa-thumb-tack" style="font-size:16px;"></i>
															</a>
														</td>
														<td class="detail-right" style="width:30px;" nowrap="nowrap">
															<a data-toggle="tooltip" data-placement="top" class="addproduct" data-original-title="添加商机" rel="320">
																<i class="fa fa-cube" style="font-size:16px;"></i>
															</a>
														</td>
													</tr>
													<tr class="controls_tr" rel="518">
														<td style="width: 30px;padding-left: 20px;" nowrap="nowrap">
															<div class="checkbox checkbox-primary">
																<input name="customer_id[]" class="check_list" value="518" rel="" rel1="1" rel2="" type="checkbox">
																<label for=""></label>
															</div>
														</td>
														<td nowrap="nowrap">
															<a href="javascript:void(0);" class="remind_view" rel="518">
																<span class="fa fa-bell-o hide" id="remind_view_518" style="font-size:16px;color:orange"></span>
															</a>
														</td>
														<td style="min-width:100px;" nowrap="nowrap">
															<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=518" title="" target="_blank" style="border-left: 5px solid #ffb07b;padding-left: 5px;line-height: 24px;">
																查看详情
															</a>
														</td>
														<td style="width:30px;border-right:1px solid #e7eaec;" nowrap="nowrap">
															<a class="log_customer" href="javascript:void(0);" rel="518"><i class="fa fa-toggle-right" id="fa_log_518" title="沟通日志" style="float:right;color:#ccc;"></i></a>
														</td>
														<td nowrap="nowrap"></td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																												12													</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																											    <span style="cursor:pointer;color:#D0D0D0;">
														        <i class="fa fa-star star-orange"></i>&nbsp;														        <i class="fa fa-star"></i>&nbsp;<i class="fa fa-star"></i>&nbsp;<i class="fa fa-star"></i>&nbsp;<i class="fa fa-star"></i>&nbsp;														    </span>
															</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																												已成交客户													</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#050505">
																												就看见姐姐													</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																													<a class="role_info" rel="1" href="javascript:void(0)">邹总</a>
																											</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																												官网													</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																												


													</span>
														</td>
														<td nowrap="nowrap">2018-02-27</td>
														<td nowrap="nowrap">
															<a style="margin-left:0px;" href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=customerlock&amp;customer_id=518">
																<img style="width:19px;" title="点击解锁，解锁定后超期回归客户池" src="img/locking.png">
															</a>
															<font color="#7486A8">已锁定</font>
														</td>
														<td class="detail-right" style="width:30px;" nowrap="nowrap">
															<a data-toggle="tooltip" data-placement="top" data-original-title="取消置顶" href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=settop&amp;module=customer&amp;module_id=518">
																<i class="fa fa-x fa-thumb-tack" style="font-size:16px;"></i>
															</a>
														</td>
														<td class="detail-right" style="width:30px;" nowrap="nowrap">
															<a data-toggle="tooltip" data-placement="top" class="addproduct" data-original-title="添加商机" rel="518">
																<i class="fa fa-cube" style="font-size:16px;"></i>
															</a>
														</td>
													</tr>
													<tr class="controls_tr" rel="741">
														<td style="width: 30px;padding-left: 20px;" nowrap="nowrap">
															<div class="checkbox checkbox-primary">
																<input name="customer_id[]" class="check_list" value="741" rel="" rel1="" rel2="" type="checkbox">
																<label for=""></label>
															</div>
														</td>
														<td nowrap="nowrap">
															<a href="javascript:void(0);" class="remind_view" rel="741">
																<span class="fa fa-bell-o hide" id="remind_view_741" style="font-size:16px;color:orange"></span>
															</a>
														</td>
														<td style="min-width:100px;" nowrap="nowrap">
															<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=741" title="测试测试测试测试测试" target="_blank" style="padding-left: 5px;line-height: 24px;"> 测试测试测试测试测试
															</a>
														</td>
														<td style="width:30px;border-right:1px solid #e7eaec;" nowrap="nowrap">
															<a class="log_customer" href="javascript:void(0);" rel="741"><i class="fa fa-toggle-right" id="fa_log_741" title="沟通日志" style="float:right;color:#ccc;"></i></a>
														</td>
														<td nowrap="nowrap">13140031329</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																											    <span style="cursor:pointer;color:#D0D0D0;">
														        <i class="fa fa-star star-orange"></i>&nbsp;<i class="fa fa-star star-orange"></i>&nbsp;<i class="fa fa-star star-orange"></i>&nbsp;<i class="fa fa-star star-orange"></i>&nbsp;														        <i class="fa fa-star"></i>&nbsp;														    </span>
															</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																												已成交客户													</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#050505">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																													<a class="role_info" rel="1" href="javascript:void(0)">邹总</a>
																											</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																												123456													</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">2018-03-14</td>
														<td nowrap="nowrap">
															<a style="margin-left:0px;" href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=customerlock&amp;customer_id=741">
																<img style="width:19px;" title="点击解锁，解锁定后超期回归客户池" src="img/locking.png">
															</a>
															<font color="#7486A8">已锁定</font>
														</td>
														<td class="detail-right" style="width:30px;" nowrap="nowrap">
															<a data-toggle="tooltip" data-placement="top" data-original-title="置顶" href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=settop&amp;module=customer&amp;module_id=741">
																<i class="fa fa-x fa-thumb-tack" style="font-size:16px;"></i>
															</a>
														</td>
														<td class="detail-right" style="width:30px;" nowrap="nowrap">
															<a data-toggle="tooltip" data-placement="top" class="addproduct" data-original-title="添加商机" rel="741">
																<i class="fa fa-cube" style="font-size:16px;"></i>
															</a>
														</td>
													</tr>
													<tr class="controls_tr" rel="734">
														<td style="width: 30px;padding-left: 20px;" nowrap="nowrap">
															<div class="checkbox checkbox-primary">
																<input name="customer_id[]" class="check_list" value="734" rel="" rel1="" rel2="" type="checkbox">
																<label for=""></label>
															</div>
														</td>
														<td nowrap="nowrap">
															<a href="javascript:void(0);" class="remind_view" rel="734">
																<span class="fa fa-bell-o hide" id="remind_view_734" style="font-size:16px;color:orange"></span>
															</a>
														</td>
														<td style="min-width:100px;" nowrap="nowrap">
															<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=734" title="张三公司" target="_blank" style="padding-left: 5px;line-height: 24px;"> 张三公司
															</a>
														</td>
														<td style="width:30px;border-right:1px solid #e7eaec;" nowrap="nowrap">
															<a class="log_customer" href="javascript:void(0);" rel="734"><i class="fa fa-toggle-right" id="fa_log_734" title="沟通日志" style="float:right;color:#ccc;"></i></a>
														</td>
														<td nowrap="nowrap">17700000000</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																											    <span style="cursor:pointer;color:#D0D0D0;">
														        <i class="fa fa-star star-orange"></i>&nbsp;<i class="fa fa-star star-orange"></i>&nbsp;<i class="fa fa-star star-orange"></i>&nbsp;<i class="fa fa-star star-orange"></i>&nbsp;														        <i class="fa fa-star"></i>&nbsp;														    </span>
															</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																												意向客户													</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#050505">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																													<a class="role_info" rel="1" href="javascript:void(0)">邹总</a>
																											</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																												/n/n/n													</span>
														</td>
														<td nowrap="nowrap">2018-03-07</td>
														<td nowrap="nowrap">
															<a style="margin-left:0px;" href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=customerlock&amp;customer_id=734">
																<img style="width:19px;" title="点击解锁，解锁定后超期回归客户池" src="img/locking.png">
															</a>
															<font color="#7486A8">已锁定</font>
														</td>
														<td class="detail-right" style="width:30px;" nowrap="nowrap">
															<a data-toggle="tooltip" data-placement="top" data-original-title="置顶" href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=settop&amp;module=customer&amp;module_id=734">
																<i class="fa fa-x fa-thumb-tack" style="font-size:16px;"></i>
															</a>
														</td>
														<td class="detail-right" style="width:30px;" nowrap="nowrap">
															<a data-toggle="tooltip" data-placement="top" class="addproduct" data-original-title="添加商机" rel="734">
																<i class="fa fa-cube" style="font-size:16px;"></i>
															</a>
														</td>
													</tr>
													<tr class="controls_tr" rel="739">
														<td style="width: 30px;padding-left: 20px;" nowrap="nowrap">
															<div class="checkbox checkbox-primary">
																<input name="customer_id[]" class="check_list" value="739" rel="" rel1="" rel2="" type="checkbox">
																<label for=""></label>
															</div>
														</td>
														<td nowrap="nowrap">
															<a href="javascript:void(0);" class="remind_view" rel="739">
																<span class="fa fa-bell-o hide" id="remind_view_739" style="font-size:16px;color:orange"></span>
															</a>
														</td>
														<td style="min-width:100px;" nowrap="nowrap">
															<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=739" title="美的集团股份有限公司" target="_blank" style="padding-left: 5px;line-height: 24px;"> 美的集团股份有限公司
															</a>
														</td>
														<td style="width:30px;border-right:1px solid #e7eaec;" nowrap="nowrap">
															<a class="log_customer" href="javascript:void(0);" rel="739"><i class="fa fa-toggle-right" id="fa_log_739" title="沟通日志" style="float:right;color:#ccc;"></i></a>
														</td>
														<td nowrap="nowrap">18520945687</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																											    <span style="cursor:pointer;color:#D0D0D0;">
														        <i class="fa fa-star star-orange"></i>&nbsp;<i class="fa fa-star star-orange"></i>&nbsp;<i class="fa fa-star star-orange"></i>&nbsp;<i class="fa fa-star star-orange"></i>&nbsp;<i class="fa fa-star star-orange"></i>&nbsp;														        														    </span>
															</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																												已成交客户													</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#050505">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																													<a class="role_info" rel="1" href="javascript:void(0)">邹总</a>
																											</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">2018-03-12</td>
														<td nowrap="nowrap">
															<a style="margin-left:0px;" href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=customerlock&amp;customer_id=739">
																<img style="width:19px;" title="点击解锁，解锁定后超期回归客户池" src="img/locking.png">
															</a>
															<font color="#7486A8">已锁定</font>
														</td>
														<td class="detail-right" style="width:30px;" nowrap="nowrap">
															<a data-toggle="tooltip" data-placement="top" data-original-title="置顶" href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=settop&amp;module=customer&amp;module_id=739">
																<i class="fa fa-x fa-thumb-tack" style="font-size:16px;"></i>
															</a>
														</td>
														<td class="detail-right" style="width:30px;" nowrap="nowrap">
															<a data-toggle="tooltip" data-placement="top" class="addproduct" data-original-title="添加商机" rel="739">
																<i class="fa fa-cube" style="font-size:16px;"></i>
															</a>
														</td>
													</tr>
													<tr class="controls_tr" rel="737">
														<td style="width: 30px;padding-left: 20px;" nowrap="nowrap">
															<div class="checkbox checkbox-primary">
																<input name="customer_id[]" class="check_list" value="737" rel="" rel1="" rel2="" type="checkbox">
																<label for=""></label>
															</div>
														</td>
														<td nowrap="nowrap">
															<a href="javascript:void(0);" class="remind_view" rel="737">
																<span class="fa fa-bell-o hide" id="remind_view_737" style="font-size:16px;color:orange"></span>
															</a>
														</td>
														<td style="min-width:100px;" nowrap="nowrap">
															<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=737" title="测" target="_blank" style="padding-left: 5px;line-height: 24px;"> 测
															</a>
														</td>
														<td style="width:30px;border-right:1px solid #e7eaec;" nowrap="nowrap">
															<a class="log_customer" href="javascript:void(0);" rel="737"><i class="fa fa-toggle-right" id="fa_log_737" title="沟通日志" style="float:right;color:#ccc;"></i></a>
														</td>
														<td nowrap="nowrap"></td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																											    <span style="cursor:pointer;color:#D0D0D0;">
														        <i class="fa fa-star star-orange"></i>&nbsp;<i class="fa fa-star star-orange"></i>&nbsp;<i class="fa fa-star star-orange"></i>&nbsp;<i class="fa fa-star star-orange"></i>&nbsp;<i class="fa fa-star star-orange"></i>&nbsp;														        														    </span>
															</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																												已成交客户													</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#050505">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																													<a class="role_info" rel="1" href="javascript:void(0)">邹总</a>
																											</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																												/n/n/n													</span>
														</td>
														<td nowrap="nowrap">2018-03-07</td>
														<td nowrap="nowrap">
															<a style="margin-left:0px;" href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=customerlock&amp;customer_id=737">
																<img style="width:19px;" title="点击解锁，解锁定后超期回归客户池" src="img/locking.png">
															</a>
															<font color="#7486A8">已锁定</font>
														</td>
														<td class="detail-right" style="width:30px;" nowrap="nowrap">
															<a data-toggle="tooltip" data-placement="top" data-original-title="置顶" href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=settop&amp;module=customer&amp;module_id=737">
																<i class="fa fa-x fa-thumb-tack" style="font-size:16px;"></i>
															</a>
														</td>
														<td class="detail-right" style="width:30px;" nowrap="nowrap">
															<a data-toggle="tooltip" data-placement="top" class="addproduct" data-original-title="添加商机" rel="737">
																<i class="fa fa-cube" style="font-size:16px;"></i>
															</a>
														</td>
													</tr>
													<tr class="controls_tr" rel="736">
														<td style="width: 30px;padding-left: 20px;" nowrap="nowrap">
															<div class="checkbox checkbox-primary">
																<input name="customer_id[]" class="check_list" value="736" rel="" rel1="" rel2="" type="checkbox">
																<label for=""></label>
															</div>
														</td>
														<td nowrap="nowrap">
															<a href="javascript:void(0);" class="remind_view" rel="736">
																<span class="fa fa-bell-o hide" id="remind_view_736" style="font-size:16px;color:orange"></span>
															</a>
														</td>
														<td style="min-width:100px;" nowrap="nowrap">
															<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=736" title="" target="_blank" style="padding-left: 5px;line-height: 24px;"> 查看详情
															</a>
														</td>
														<td style="width:30px;border-right:1px solid #e7eaec;" nowrap="nowrap">
															<a class="log_customer" href="javascript:void(0);" rel="736"><i class="fa fa-toggle-right" id="fa_log_736" title="沟通日志" style="float:right;color:#ccc;"></i></a>
														</td>
														<td nowrap="nowrap">18081137091</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																											    <span style="cursor:pointer;color:#D0D0D0;">
														        <i class="fa fa-star star-orange"></i>&nbsp;														        <i class="fa fa-star"></i>&nbsp;<i class="fa fa-star"></i>&nbsp;<i class="fa fa-star"></i>&nbsp;<i class="fa fa-star"></i>&nbsp;														    </span>
															</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																												意向客户													</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#050505">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																													<a class="role_info" rel="1" href="javascript:void(0)">邹总</a>
																											</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																												/n/n/n													</span>
														</td>
														<td nowrap="nowrap">2018-03-07</td>
														<td nowrap="nowrap">
															<a style="margin-left:0px;" href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=customerlock&amp;customer_id=736">
																<img style="width:19px;" title="点击解锁，解锁定后超期回归客户池" src="img/locking.png">
															</a>
															<font color="#7486A8">已锁定</font>
														</td>
														<td class="detail-right" style="width:30px;" nowrap="nowrap">
															<a data-toggle="tooltip" data-placement="top" data-original-title="置顶" href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=settop&amp;module=customer&amp;module_id=736">
																<i class="fa fa-x fa-thumb-tack" style="font-size:16px;"></i>
															</a>
														</td>
														<td class="detail-right" style="width:30px;" nowrap="nowrap">
															<a data-toggle="tooltip" data-placement="top" class="addproduct" data-original-title="添加商机" rel="736">
																<i class="fa fa-cube" style="font-size:16px;"></i>
															</a>
														</td>
													</tr>
													<tr class="controls_tr" rel="735">
														<td style="width: 30px;padding-left: 20px;" nowrap="nowrap">
															<div class="checkbox checkbox-primary">
																<input name="customer_id[]" class="check_list" value="735" rel="" rel1="" rel2="" type="checkbox">
																<label for=""></label>
															</div>
														</td>
														<td nowrap="nowrap">
															<a href="javascript:void(0);" class="remind_view" rel="735">
																<span class="fa fa-bell-o hide" id="remind_view_735" style="font-size:16px;color:orange"></span>
															</a>
														</td>
														<td style="min-width:100px;" nowrap="nowrap">
															<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=735" title="了吗哦那么早就知道我是谁吗好的，谢谢老师关心你的名字是什么意思呢你干嘛呢老婆老婆我爱你我爱你们的聊天记录的那个月了啊你怎么想你去啊的吗好的好的好的好的，？我现在都没有看到吗好的，谢谢啦谢谢老师关心你的意思就是什么东西都收拾好了吧你自己说的那个事儿多拿点东西回来再给你打电话的时候可以给我打电话让我自己一个人在家无聊死了啊你怎么想吧你呢干嘛呢美女晚上好啊好啊美女你好你好美女晚上好美女晚上好美女早上好亲爱的朋友圈第一条帮忙举报韩信你啊你不喜欢的那个题啊我都不知道怎么说呢我是你的小可爱啊我现在在外面吃饭啊！我现在" target="_blank" style="padding-left: 5px;line-height: 24px;"> 了吗哦那么早就知道我是谁吗好的 . . .
															</a>
														</td>
														<td style="width:30px;border-right:1px solid #e7eaec;" nowrap="nowrap">
															<a class="log_customer" href="javascript:void(0);" rel="735"><i class="fa fa-toggle-right" id="fa_log_735" title="沟通日志" style="float:right;color:#ccc;"></i></a>
														</td>
														<td nowrap="nowrap"></td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																											    <span style="cursor:pointer;color:#D0D0D0;">
														        <i class="fa fa-star star-orange"></i>&nbsp;														        <i class="fa fa-star"></i>&nbsp;<i class="fa fa-star"></i>&nbsp;<i class="fa fa-star"></i>&nbsp;<i class="fa fa-star"></i>&nbsp;														    </span>
															</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																												意向客户													</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#050505">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																													<a class="role_info" rel="1" href="javascript:void(0)">邹总</a>
																											</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																												/n/n/n													</span>
														</td>
														<td nowrap="nowrap">2018-03-07</td>
														<td nowrap="nowrap">
															<a style="margin-left:0px;" href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=customerlock&amp;customer_id=735">
																<img style="width:19px;" title="点击解锁，解锁定后超期回归客户池" src="img/locking.png">
															</a>
															<font color="#7486A8">已锁定</font>
														</td>
														<td class="detail-right" style="width:30px;" nowrap="nowrap">
															<a data-toggle="tooltip" data-placement="top" data-original-title="置顶" href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=settop&amp;module=customer&amp;module_id=735">
																<i class="fa fa-x fa-thumb-tack" style="font-size:16px;"></i>
															</a>
														</td>
														<td class="detail-right" style="width:30px;" nowrap="nowrap">
															<a data-toggle="tooltip" data-placement="top" class="addproduct" data-original-title="添加商机" rel="735">
																<i class="fa fa-cube" style="font-size:16px;"></i>
															</a>
														</td>
													</tr>
													<tr class="controls_tr" rel="733">
														<td style="width: 30px;padding-left: 20px;" nowrap="nowrap">
															<div class="checkbox checkbox-primary">
																<input name="customer_id[]" class="check_list" value="733" rel="" rel1="" rel2="" type="checkbox">
																<label for=""></label>
															</div>
														</td>
														<td nowrap="nowrap">
															<a href="javascript:void(0);" class="remind_view" rel="733">
																<span class="fa fa-bell-o hide" id="remind_view_733" style="font-size:16px;color:orange"></span>
															</a>
														</td>
														<td style="min-width:100px;" nowrap="nowrap">
															<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=733" title="你能不能" target="_blank" style="padding-left: 5px;line-height: 24px;"> 你能不能
															</a>
														</td>
														<td style="width:30px;border-right:1px solid #e7eaec;" nowrap="nowrap">
															<a class="log_customer" href="javascript:void(0);" rel="733"><i class="fa fa-toggle-right" id="fa_log_733" title="沟通日志" style="float:right;color:#ccc;"></i></a>
														</td>
														<td nowrap="nowrap"></td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																												川A88888													</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
														2018-03-07 13:48																											</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																											    <span style="cursor:pointer;color:#D0D0D0;">
														        <i class="fa fa-star star-orange"></i>&nbsp;														        <i class="fa fa-star"></i>&nbsp;<i class="fa fa-star"></i>&nbsp;<i class="fa fa-star"></i>&nbsp;<i class="fa fa-star"></i>&nbsp;														    </span>
															</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																												意向客户													</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#050505">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																													<a class="role_info" rel="1" href="javascript:void(0)">邹总</a>
																											</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																												["","","",""]													</span>
														</td>
														<td nowrap="nowrap">2018-03-07</td>
														<td nowrap="nowrap">
															<a style="margin-left:0px;" href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=customerlock&amp;customer_id=733">
																<img style="width:19px;" title="点击解锁，解锁定后超期回归客户池" src="img/locking.png">
															</a>
															<font color="#7486A8">已锁定</font>
														</td>
														<td class="detail-right" style="width:30px;" nowrap="nowrap">
															<a data-toggle="tooltip" data-placement="top" data-original-title="置顶" href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=settop&amp;module=customer&amp;module_id=733">
																<i class="fa fa-x fa-thumb-tack" style="font-size:16px;"></i>
															</a>
														</td>
														<td class="detail-right" style="width:30px;" nowrap="nowrap">
															<a data-toggle="tooltip" data-placement="top" class="addproduct" data-original-title="添加商机" rel="733">
																<i class="fa fa-cube" style="font-size:16px;"></i>
															</a>
														</td>
													</tr>
													<tr class="controls_tr" rel="732">
														<td style="width: 30px;padding-left: 20px;" nowrap="nowrap">
															<div class="checkbox checkbox-primary">
																<input name="customer_id[]" class="check_list" value="732" rel="" rel1="" rel2="" type="checkbox">
																<label for=""></label>
															</div>
														</td>
														<td nowrap="nowrap">
															<a href="javascript:void(0);" class="remind_view" rel="732">
																<span class="fa fa-bell-o hide" id="remind_view_732" style="font-size:16px;color:orange"></span>
															</a>
														</td>
														<td style="min-width:100px;" nowrap="nowrap">
															<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=732" title="挺好结婚v" target="_blank" style="padding-left: 5px;line-height: 24px;"> 挺好结婚v
															</a>
														</td>
														<td style="width:30px;border-right:1px solid #e7eaec;" nowrap="nowrap">
															<a class="log_customer" href="javascript:void(0);" rel="732"><i class="fa fa-toggle-right" id="fa_log_732" title="沟通日志" style="float:right;color:#ccc;"></i></a>
														</td>
														<td nowrap="nowrap">13633336666</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																											    <span style="cursor:pointer;color:#D0D0D0;">
														        <i class="fa fa-star star-orange"></i>&nbsp;														        <i class="fa fa-star"></i>&nbsp;<i class="fa fa-star"></i>&nbsp;<i class="fa fa-star"></i>&nbsp;<i class="fa fa-star"></i>&nbsp;														    </span>
															</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																												意向客户													</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#050505">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																													<a class="role_info" rel="1" href="javascript:void(0)">邹总</a>
																											</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																												/n/n/n													</span>
														</td>
														<td nowrap="nowrap">2018-03-06</td>
														<td nowrap="nowrap">
															<a style="margin-left:0px;" href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=customerlock&amp;customer_id=732">
																<img style="width:19px;" title="点击解锁，解锁定后超期回归客户池" src="img/locking.png">
															</a>
															<font color="#7486A8">已锁定</font>
														</td>
														<td class="detail-right" style="width:30px;" nowrap="nowrap">
															<a data-toggle="tooltip" data-placement="top" data-original-title="置顶" href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=settop&amp;module=customer&amp;module_id=732">
																<i class="fa fa-x fa-thumb-tack" style="font-size:16px;"></i>
															</a>
														</td>
														<td class="detail-right" style="width:30px;" nowrap="nowrap">
															<a data-toggle="tooltip" data-placement="top" class="addproduct" data-original-title="添加商机" rel="732">
																<i class="fa fa-cube" style="font-size:16px;"></i>
															</a>
														</td>
													</tr>
													<tr class="controls_tr" rel="730">
														<td style="width: 30px;padding-left: 20px;" nowrap="nowrap">
															<div class="checkbox checkbox-primary">
																<input name="customer_id[]" class="check_list" value="730" rel="" rel1="" rel2="" type="checkbox">
																<label for=""></label>
															</div>
														</td>
														<td nowrap="nowrap">
															<a href="javascript:void(0);" class="remind_view" rel="730">
																<span class="fa fa-bell-o hide" id="remind_view_730" style="font-size:16px;color:orange"></span>
															</a>
														</td>
														<td style="min-width:100px;" nowrap="nowrap">
															<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=730" title="sdf" target="_blank" style="padding-left: 5px;line-height: 24px;"> sdf
															</a>
														</td>
														<td style="width:30px;border-right:1px solid #e7eaec;" nowrap="nowrap">
															<a class="log_customer" href="javascript:void(0);" rel="730"><i class="fa fa-toggle-right" id="fa_log_730" title="沟通日志" style="float:right;color:#ccc;"></i></a>
														</td>
														<td nowrap="nowrap"></td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																											    <span style="cursor:pointer;color:#D0D0D0;">
														        <i class="fa fa-star star-orange"></i>&nbsp;														        <i class="fa fa-star"></i>&nbsp;<i class="fa fa-star"></i>&nbsp;<i class="fa fa-star"></i>&nbsp;<i class="fa fa-star"></i>&nbsp;														    </span>
															</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																												意向客户													</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#050505">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																													<a class="role_info" rel="1" href="javascript:void(0)">邹总</a>
																											</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																												/n/n/n													</span>
														</td>
														<td nowrap="nowrap">2018-03-06</td>
														<td nowrap="nowrap">
															<a style="margin-left:0px;" href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=customerlock&amp;customer_id=730">
																<img title="点击锁定，锁定后将不会回归客户池" style="width:19px;" src="img/unlocking.png"> </a>
															<font title="7天未跟进或30天未签合同，将自动回归客户池" color="#7486A8">7/30</font>
														</td>
														<td class="detail-right" style="width:30px;" nowrap="nowrap">
															<a data-toggle="tooltip" data-placement="top" data-original-title="置顶" href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=settop&amp;module=customer&amp;module_id=730">
																<i class="fa fa-x fa-thumb-tack" style="font-size:16px;"></i>
															</a>
														</td>
														<td class="detail-right" style="width:30px;" nowrap="nowrap">
															<a data-toggle="tooltip" data-placement="top" class="addproduct" data-original-title="添加商机" rel="730">
																<i class="fa fa-cube" style="font-size:16px;"></i>
															</a>
														</td>
													</tr>
													<tr class="controls_tr" rel="729">
														<td style="width: 30px;padding-left: 20px;" nowrap="nowrap">
															<div class="checkbox checkbox-primary">
																<input name="customer_id[]" class="check_list" value="729" rel="" rel1="" rel2="" type="checkbox">
																<label for=""></label>
															</div>
														</td>
														<td nowrap="nowrap">
															<a href="javascript:void(0);" class="remind_view" rel="729">
																<span class="fa fa-bell-o hide" id="remind_view_729" style="font-size:16px;color:orange"></span>
															</a>
														</td>
														<td style="min-width:100px;" nowrap="nowrap">
															<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=729" title="sssss" target="_blank" style="padding-left: 5px;line-height: 24px;"> sssss
															</a>
														</td>
														<td style="width:30px;border-right:1px solid #e7eaec;" nowrap="nowrap">
															<a class="log_customer" href="javascript:void(0);" rel="729"><i class="fa fa-toggle-right" id="fa_log_729" title="沟通日志" style="float:right;color:#ccc;"></i></a>
														</td>
														<td nowrap="nowrap"></td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																											    <span style="cursor:pointer;color:#D0D0D0;">
														        														        <i class="fa fa-star"></i>&nbsp;<i class="fa fa-star"></i>&nbsp;<i class="fa fa-star"></i>&nbsp;<i class="fa fa-star"></i>&nbsp;<i class="fa fa-star"></i>&nbsp;														    </span>
															</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																												意向客户													</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#050505">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																													<a class="role_info" rel="1" href="javascript:void(0)">邹总</a>
																											</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">2018-03-05</td>
														<td nowrap="nowrap">
															<a style="margin-left:0px;" href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=customerlock&amp;customer_id=729">
																<img style="width:19px;" title="点击解锁，解锁定后超期回归客户池" src="img/locking.png">
															</a>
															<font color="#7486A8">已锁定</font>
														</td>
														<td class="detail-right" style="width:30px;" nowrap="nowrap">
															<a data-toggle="tooltip" data-placement="top" data-original-title="置顶" href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=settop&amp;module=customer&amp;module_id=729">
																<i class="fa fa-x fa-thumb-tack" style="font-size:16px;"></i>
															</a>
														</td>
														<td class="detail-right" style="width:30px;" nowrap="nowrap">
															<a data-toggle="tooltip" data-placement="top" class="addproduct" data-original-title="添加商机" rel="729">
																<i class="fa fa-cube" style="font-size:16px;"></i>
															</a>
														</td>
													</tr>
													<tr class="controls_tr" rel="728">
														<td style="width: 30px;padding-left: 20px;" nowrap="nowrap">
															<div class="checkbox checkbox-primary">
																<input name="customer_id[]" class="check_list" value="728" rel="" rel1="" rel2="" type="checkbox">
																<label for=""></label>
															</div>
														</td>
														<td nowrap="nowrap">
															<a href="javascript:void(0);" class="remind_view" rel="728">
																<span class="fa fa-bell-o hide" id="remind_view_728" style="font-size:16px;color:orange"></span>
															</a>
														</td>
														<td style="min-width:100px;" nowrap="nowrap">
															<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=728" title="" target="_blank" style="padding-left: 5px;line-height: 24px;"> 查看详情
															</a>
														</td>
														<td style="width:30px;border-right:1px solid #e7eaec;" nowrap="nowrap">
															<a class="log_customer" href="javascript:void(0);" rel="728"><i class="fa fa-toggle-right" id="fa_log_728" title="沟通日志" style="float:right;color:#ccc;"></i></a>
														</td>
														<td nowrap="nowrap"></td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																												12													</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																											    <span style="cursor:pointer;color:#D0D0D0;">
														        <i class="fa fa-star star-orange"></i>&nbsp;														        <i class="fa fa-star"></i>&nbsp;<i class="fa fa-star"></i>&nbsp;<i class="fa fa-star"></i>&nbsp;<i class="fa fa-star"></i>&nbsp;														    </span>
															</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																												意向客户													</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#050505">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																													<a class="role_info" rel="1" href="javascript:void(0)">邹总</a>
																											</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																												/n/n/n													</span>
														</td>
														<td nowrap="nowrap">2018-03-02</td>
														<td nowrap="nowrap">
															<a style="margin-left:0px;" href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=customerlock&amp;customer_id=728">
																<img style="width:19px;" title="点击解锁，解锁定后超期回归客户池" src="img/locking.png">
															</a>
															<font color="#7486A8">已锁定</font>
														</td>
														<td class="detail-right" style="width:30px;" nowrap="nowrap">
															<a data-toggle="tooltip" data-placement="top" data-original-title="置顶" href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=settop&amp;module=customer&amp;module_id=728">
																<i class="fa fa-x fa-thumb-tack" style="font-size:16px;"></i>
															</a>
														</td>
														<td class="detail-right" style="width:30px;" nowrap="nowrap">
															<a data-toggle="tooltip" data-placement="top" class="addproduct" data-original-title="添加商机" rel="728">
																<i class="fa fa-cube" style="font-size:16px;"></i>
															</a>
														</td>
													</tr>
													<tr class="controls_tr" rel="727">
														<td style="width: 30px;padding-left: 20px;" nowrap="nowrap">
															<div class="checkbox checkbox-primary">
																<input name="customer_id[]" class="check_list" value="727" rel="" rel1="" rel2="" type="checkbox">
																<label for=""></label>
															</div>
														</td>
														<td nowrap="nowrap">
															<a href="javascript:void(0);" class="remind_view" rel="727">
																<span class="fa fa-bell-o hide" id="remind_view_727" style="font-size:16px;color:orange"></span>
															</a>
														</td>
														<td style="min-width:100px;" nowrap="nowrap">
															<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=727" title="" target="_blank" style="padding-left: 5px;line-height: 24px;"> 查看详情
															</a>
														</td>
														<td style="width:30px;border-right:1px solid #e7eaec;" nowrap="nowrap">
															<a class="log_customer" href="javascript:void(0);" rel="727"><i class="fa fa-toggle-right" id="fa_log_727" title="沟通日志" style="float:right;color:#ccc;"></i></a>
														</td>
														<td nowrap="nowrap"></td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																												12													</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																											    <span style="cursor:pointer;color:#D0D0D0;">
														        <i class="fa fa-star star-orange"></i>&nbsp;														        <i class="fa fa-star"></i>&nbsp;<i class="fa fa-star"></i>&nbsp;<i class="fa fa-star"></i>&nbsp;<i class="fa fa-star"></i>&nbsp;														    </span>
															</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																												意向客户													</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#050505">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																													<a class="role_info" rel="1" href="javascript:void(0)">邹总</a>
																											</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																																									</span>
														</td>
														<td nowrap="nowrap">
															<span style="color:#333333">
																												/n/n/n													</span>
														</td>
														<td nowrap="nowrap">2018-03-02</td>
														<td nowrap="nowrap">
															<a style="margin-left:0px;" href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=customerlock&amp;customer_id=727">
																<img style="width:19px;" title="点击解锁，解锁定后超期回归客户池" src="img/locking.png">
															</a>
															<font color="#7486A8">已锁定</font>
														</td>
														<td class="detail-right" style="width:30px;" nowrap="nowrap">
															<a data-toggle="tooltip" data-placement="top" data-original-title="置顶" href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=settop&amp;module=customer&amp;module_id=727">
																<i class="fa fa-x fa-thumb-tack" style="font-size:16px;"></i>
															</a>
														</td>
														<td class="detail-right" style="width:30px;" nowrap="nowrap">
															<a data-toggle="tooltip" data-placement="top" class="addproduct" data-original-title="添加商机" rel="727">
																<i class="fa fa-cube" style="font-size:16px;"></i>
															</a>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
										<div id="tfoot_div" class="clearfix">
											<div class="clearfix" id="tfoot_page">
												<div style="margin: 10px auto;">
													<div style="width:auto;float:right;margin-left:15px;line-height: 30px;">
														<select style="width:auto;display:inline-block;" id="go_page" class="form-control input-sm" name="p" onchange="go_pagep(this.value)">
															<option value="/index.php?m=customer&amp;a=index&amp;by=me&amp;order_type=&amp;order_field=&amp;listrows=15&amp;p=1" selected="selected">1</option>
															<option value="/index.php?m=customer&amp;a=index&amp;by=me&amp;order_type=&amp;order_field=&amp;listrows=15&amp;p=2">2</option>
															<option value="/index.php?m=customer&amp;a=index&amp;by=me&amp;order_type=&amp;order_field=&amp;listrows=15&amp;p=3">3</option>
															<option value="/index.php?m=customer&amp;a=index&amp;by=me&amp;order_type=&amp;order_field=&amp;listrows=15&amp;p=4">4</option>
															<option value="/index.php?m=customer&amp;a=index&amp;by=me&amp;order_type=&amp;order_field=&amp;listrows=15&amp;p=5">5</option>
															<option value="/index.php?m=customer&amp;a=index&amp;by=me&amp;order_type=&amp;order_field=&amp;listrows=15&amp;p=6">6</option>
															<option value="/index.php?m=customer&amp;a=index&amp;by=me&amp;order_type=&amp;order_field=&amp;listrows=15&amp;p=7">7</option>
															<option value="/index.php?m=customer&amp;a=index&amp;by=me&amp;order_type=&amp;order_field=&amp;listrows=15&amp;p=8">8</option>
															<option value="/index.php?m=customer&amp;a=index&amp;by=me&amp;order_type=&amp;order_field=&amp;listrows=15&amp;p=9">9</option>
															<option value="/index.php?m=customer&amp;a=index&amp;by=me&amp;order_type=&amp;order_field=&amp;listrows=15&amp;p=10">10</option>
															<option value="/index.php?m=customer&amp;a=index&amp;by=me&amp;order_type=&amp;order_field=&amp;listrows=15&amp;p=11">11</option>
															<option value="/index.php?m=customer&amp;a=index&amp;by=me&amp;order_type=&amp;order_field=&amp;listrows=15&amp;p=12">12</option>
															<option value="/index.php?m=customer&amp;a=index&amp;by=me&amp;order_type=&amp;order_field=&amp;listrows=15&amp;p=13">13</option>
															<option value="/index.php?m=customer&amp;a=index&amp;by=me&amp;order_type=&amp;order_field=&amp;listrows=15&amp;p=14">14</option>
															<option value="/index.php?m=customer&amp;a=index&amp;by=me&amp;order_type=&amp;order_field=&amp;listrows=15&amp;p=15">15</option>
															<option value="/index.php?m=customer&amp;a=index&amp;by=me&amp;order_type=&amp;order_field=&amp;listrows=15&amp;p=16">16</option>
															<option value="/index.php?m=customer&amp;a=index&amp;by=me&amp;order_type=&amp;order_field=&amp;listrows=15&amp;p=17">17</option>
															<option value="/index.php?m=customer&amp;a=index&amp;by=me&amp;order_type=&amp;order_field=&amp;listrows=15&amp;p=18">18</option>
														</select>
														<script type="text/javascript">
															function  changeURLArg(url, arg, arg_val) { 
																var  pattern = arg + "=([^&]*)"; 
																var  replaceText = arg + "=" + arg_val; 
																if(url.match(pattern)) { 
																	var  tmp = "/(" +  arg + "=)([^&]*)/gi";         
																	tmp = url.replace(eval(tmp), replaceText); 
																	return  tmp;     
																} else { 
																	if(url.match("[\?]")) { 
																		return  url + "&" + replaceText;         
																	} else { 
																		return  url + "?" + replaceText;         
																	}     
																} 
																return  url + "\n" + arg + "\n" + arg_val; 
															} 
															function go_pagep(page) {
																var listrows = $("#listrows option:selected").val();
																if(page.indexOf("listrows") <= 0) {
																	if(listrows > 0) {
																		window.location = page + "&listrows=" + listrows;
																	} else {
																		window.location = page;
																	}
																} else {
																	window.location = changeURLArg(page, "listrows", listrows);
																}
															}
														</script>页</div>
													<div style="width:auto;height:30px;float:right;margin:2px 0px 0px 15px">
														<div>
															<ul class="pagination" style="float:right;margin-top:0px">
																<li><span>« </span></li>
																<li><span class="current btn-default active">1</span>
																	<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=index&amp;by=me&amp;order_type=&amp;order_field=&amp;listrows=15&amp;p=2">2</a>
																	<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=index&amp;by=me&amp;order_type=&amp;order_field=&amp;listrows=15&amp;p=3">3</a>
																</li>
																<li>
																	<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=index&amp;by=me&amp;order_type=&amp;order_field=&amp;listrows=15&amp;p=2"> »</a>
																</li>
															</ul>
														</div>
													</div>
													<div style="width:auto;float:right;margin-top:7px;margin-left:35px">共264 条 1/18 页</div>
												</div>
												<div class="pull-right" style="width:auto;">
													<select style="width:auto;display:inline-block;" id="listrows" name="listrows" rel="15" class="form-control input-sm">
														<option value="10">10</option>
														<option value="15" checked="true" selected="selected">15</option>
														<option value="20">20</option>
														<option value="30">30</option>
														<option value="40">40</option>
														<option value="50">50</option>
														<option value="60">60</option>
														<option value="70">70</option>
														<option value="80">80</option>
														<option value="90">90</option>
														<option value="100">100</option>
													</select>
												</div>
												<script type="text/javascript">
													function  changeURLArg(url, arg, arg_val) { 
														var  pattern = arg + '=([^&]*)'; 
														var  replaceText = arg + '=' + arg_val; 
														if(url.match(pattern)) { 
															var  tmp = '/(' +  arg + '=)([^&]*)/gi';         
															tmp = url.replace(eval(tmp), replaceText); 
															return  tmp;     
														} else { 
															if(url.match('[?]')) { 
																return  url + '&' + replaceText;         
															} else { 
																return  url + '?' + replaceText;         
															}     
														} 
														return  url + '\n' + arg + '\n' + arg_val; 
													} 
													var list_rows = $("#listrows").attr('rel');
													$("#listrows").val(list_rows);
													$("#listrows").change(function() {
														var every_listrows = $(this).val();
														var this_url = window.location.search;
														if(this_url.indexOf("listrows") > 0) {
															window.location = changeURLArg(this_url, 'listrows', every_listrows);
														} else {
															window.location = this_url + "&listrows=" + every_listrows;
														}
													});
												</script>
											</div>
										</div>
										<table id="oTableLH_tab_Test3" class="table table-hover table-striped table_thead_fixed" style="width: 407px; height: 45.8px; position: absolute; z-index: 10; left: 0px; top: 0px; border-right: 1px solid rgb(231, 234, 236);">
											<tbody>
												<tr class="tabTh">
													<td style="width: 72px; padding-left: 20px; height: 45px;" nowrap="nowrap">
														<div class="checkbox checkbox-primary">
															<input class="check_all" type="checkbox">
															<label for=""></label>
														</div>
													</td>
													<td style="width: 29px; height: 45px;" nowrap="nowrap">&nbsp;</td>
													<td style="min-width: 300px; height: 45px; width: 300px;" nowrap="nowrap">客户名称</td>
												</tr>
											</tbody>
										</table>
										<div id="oDivH_tab_Test3" style="overflow: hidden; width: 1404px; position: absolute; z-index: 9; left: 0px; top: 0px; height: 45.2px;">
											<table class="table table-hover table-striped table_thead_fixed" style="width: 1667px; height: 45.8px;">
												<tbody>
													<tr class="tabTh">
														<td style="width: 72px; padding-left: 20px; height: 45px;" nowrap="nowrap">
															<div class="checkbox checkbox-primary">
																<input class="check_all" type="checkbox">
																<label for=""></label>
															</div>
														</td>
														<td style="width: 29px; height: 45px;" nowrap="nowrap">&nbsp;</td>
														<td style="min-width: 300px; height: 45px; width: 300px;" nowrap="nowrap">客户名称</td>
														<td style="height: 45px; width: 105px;" nowrap="nowrap">联系电话</td>
														<td style="height: 45px; width: 74px;" nowrap="nowrap">车牌号</td>
														<td style="height: 45px; width: 124px;" nowrap="nowrap">到期时间</td>
														<td style="height: 45px; width: 66px;" nowrap="nowrap">会员卡号</td>
														<td style="height: 45px; width: 97px;" nowrap="nowrap">客户等级</td>
														<td style="height: 45px; width: 79px;" nowrap="nowrap">客户状态</td>
														<td style="height: 45px; width: 40px;" nowrap="nowrap">微信</td>
														<td style="height: 45px; width: 79px;" nowrap="nowrap">客户行业</td>
														<td style="height: 45px; width: 79px;" nowrap="nowrap">客户负责人</td>
														<td style="height: 45px; width: 75px;" nowrap="nowrap">QQ</td>
														<td style="height: 45px; width: 66px;" nowrap="nowrap">销售渠道</td>
														<td style="height: 45px; width: 131px;" nowrap="nowrap">地址</td>
														<td style="height: 45px; width: 86px;" nowrap="nowrap">创建时间</td>
														<td style="height: 45px; width: 79px;" nowrap="nowrap">
															<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=index&amp;desc_order=update_time&amp;by=me&amp;order_type=&amp;order_field=&amp;listrows=15">距到期天数</a>
														</td>
														<td colspan="2" style="min-width: 80px; height: 45px; width: 80px;" nowrap="nowrap">快捷操作</td>
													</tr>
												</tbody>
											</table>
										</div>
										<div id="oDivL_tab_Test3" style="overflow: hidden; height: 566px; position: absolute; z-index: 9; left: 0px; top: 0px; width: 407px; background-color: rgb(255, 255, 255); border-right: 1px solid rgb(231, 234, 236);">
											<table class="table table-hover table-striped table_thead_fixed" style="width: 407px; height: 720.8px;">
												<tbody>
													<tr class="tabTh">
														<td style="width: 72px; padding-left: 20px; height: 45px;" nowrap="nowrap">
															<div class="checkbox checkbox-primary">
																<input class="check_all" type="checkbox">
																<label for=""></label>
															</div>
														</td>
														<td style="width: 29px; height: 45px;" nowrap="nowrap">&nbsp;</td>
														<td style="min-width: 300px; height: 45px; width: 300px;" nowrap="nowrap">客户名称</td>
													</tr>
													<tr rel="628" class="controls_tr">
														<td style="width: 72px; padding-left: 20px; height: 45px;" nowrap="nowrap">
															<div class="checkbox checkbox-primary">
																<input name="customer_id[]" class="check_list" value="628" rel="" rel1="1" rel2="1521018802" type="checkbox">
																<label for=""></label>
															</div>
														</td>
														<td style="height: 45px; width: 29px;" nowrap="nowrap">
															<a href="javascript:void(0);" class="remind_view" rel="628">
																<span class="fa fa-bell-o " id="remind_view_628" style="font-size:16px;color:orange"></span>
															</a>
														</td>
														<td style="min-width: 100px; height: 45px; width: 300px;" nowrap="nowrap">
															<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=628" title="武帝时代" target="_blank" style="border-left: 5px solid #ffb07b;padding-left: 5px;line-height: 24px;">
																武帝时代
															</a>
														</td>
														<td style="width: 26.8px; border-right: 1px solid rgb(231, 234, 236); height: 45px;" nowrap="nowrap">
															<a class="log_customer" href="javascript:void(0);" rel="628"><i class="fa fa-toggle-right" id="fa_log_628" title="沟通日志" style="float:right;color:#ccc;"></i></a>
														</td>
													</tr>
													<tr rel="320" class="controls_tr">
														<td style="width: 72px; padding-left: 20px; height: 45px;" nowrap="nowrap">
															<div class="checkbox checkbox-primary">
																<input name="customer_id[]" class="check_list" value="320" rel="" rel1="1" rel2="" type="checkbox">
																<label for=""></label>
															</div>
														</td>
														<td style="height: 45px; width: 29px;" nowrap="nowrap">
															<a href="javascript:void(0);" class="remind_view" rel="320">
																<span class="fa fa-bell-o hide" id="remind_view_320" style="font-size:16px;color:orange"></span>
															</a>
														</td>
														<td style="min-width: 100px; height: 45px; width: 300px;" nowrap="nowrap">
															<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=320" title="武帝时代" target="_blank" style="border-left: 5px solid #ffb07b;padding-left: 5px;line-height: 24px;">
																武帝时代
															</a>
														</td>
														<td style="width: 26.8px; border-right: 1px solid rgb(231, 234, 236); height: 45px;" nowrap="nowrap">
															<a class="log_customer" href="javascript:void(0);" rel="320"><i class="fa fa-toggle-right" id="fa_log_320" title="沟通日志" style="float:right;color:#ccc;"></i></a>
														</td>
													</tr>
													<tr rel="518" class="controls_tr">
														<td style="width: 72px; padding-left: 20px; height: 45px;" nowrap="nowrap">
															<div class="checkbox checkbox-primary">
																<input name="customer_id[]" class="check_list" value="518" rel="" rel1="1" rel2="" type="checkbox">
																<label for=""></label>
															</div>
														</td>
														<td style="height: 45px; width: 29px;" nowrap="nowrap">
															<a href="javascript:void(0);" class="remind_view" rel="518">
																<span class="fa fa-bell-o hide" id="remind_view_518" style="font-size:16px;color:orange"></span>
															</a>
														</td>
														<td style="min-width: 100px; height: 45px; width: 300px;" nowrap="nowrap">
															<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=518" title="" target="_blank" style="border-left: 5px solid #ffb07b;padding-left: 5px;line-height: 24px;">
																查看详情
															</a>
														</td>
														<td style="width: 26.8px; border-right: 1px solid rgb(231, 234, 236); height: 45px;" nowrap="nowrap">
															<a class="log_customer" href="javascript:void(0);" rel="518"><i class="fa fa-toggle-right" id="fa_log_518" title="沟通日志" style="float:right;color:#ccc;"></i></a>
														</td>
													</tr>
													<tr rel="741" class="controls_tr">
														<td style="width: 72px; padding-left: 20px; height: 45px;" nowrap="nowrap">
															<div class="checkbox checkbox-primary">
																<input name="customer_id[]" class="check_list" value="741" rel="" rel1="" rel2="" type="checkbox">
																<label for=""></label>
															</div>
														</td>
														<td style="height: 45px; width: 29px;" nowrap="nowrap">
															<a href="javascript:void(0);" class="remind_view" rel="741">
																<span class="fa fa-bell-o hide" id="remind_view_741" style="font-size:16px;color:orange"></span>
															</a>
														</td>
														<td style="min-width: 100px; height: 45px; width: 300px;" nowrap="nowrap">
															<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=741" title="测试测试测试测试测试" target="_blank" style="padding-left: 5px;line-height: 24px;"> 测试测试测试测试测试
															</a>
														</td>
														<td style="width: 26.8px; border-right: 1px solid rgb(231, 234, 236); height: 45px;" nowrap="nowrap">
															<a class="log_customer" href="javascript:void(0);" rel="741"><i class="fa fa-toggle-right" id="fa_log_741" title="沟通日志" style="float:right;color:#ccc;"></i></a>
														</td>
													</tr>
													<tr rel="734" class="controls_tr">
														<td style="width: 72px; padding-left: 20px; height: 45px;" nowrap="nowrap">
															<div class="checkbox checkbox-primary">
																<input name="customer_id[]" class="check_list" value="734" rel="" rel1="" rel2="" type="checkbox">
																<label for=""></label>
															</div>
														</td>
														<td style="height: 45px; width: 29px;" nowrap="nowrap">
															<a href="javascript:void(0);" class="remind_view" rel="734">
																<span class="fa fa-bell-o hide" id="remind_view_734" style="font-size:16px;color:orange"></span>
															</a>
														</td>
														<td style="min-width: 100px; height: 45px; width: 300px;" nowrap="nowrap">
															<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=734" title="张三公司" target="_blank" style="padding-left: 5px;line-height: 24px;"> 张三公司
															</a>
														</td>
														<td style="width: 26.8px; border-right: 1px solid rgb(231, 234, 236); height: 45px;" nowrap="nowrap">
															<a class="log_customer" href="javascript:void(0);" rel="734"><i class="fa fa-toggle-right" id="fa_log_734" title="沟通日志" style="float:right;color:#ccc;"></i></a>
														</td>
													</tr>
													<tr rel="739" class="controls_tr">
														<td style="width: 72px; padding-left: 20px; height: 45px;" nowrap="nowrap">
															<div class="checkbox checkbox-primary">
																<input name="customer_id[]" class="check_list" value="739" rel="" rel1="" rel2="" type="checkbox">
																<label for=""></label>
															</div>
														</td>
														<td style="height: 45px; width: 29px;" nowrap="nowrap">
															<a href="javascript:void(0);" class="remind_view" rel="739">
																<span class="fa fa-bell-o hide" id="remind_view_739" style="font-size:16px;color:orange"></span>
															</a>
														</td>
														<td style="min-width: 100px; height: 45px; width: 300px;" nowrap="nowrap">
															<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=739" title="美的集团股份有限公司" target="_blank" style="padding-left: 5px;line-height: 24px;"> 美的集团股份有限公司
															</a>
														</td>
														<td style="width: 26.8px; border-right: 1px solid rgb(231, 234, 236); height: 45px;" nowrap="nowrap">
															<a class="log_customer" href="javascript:void(0);" rel="739"><i class="fa fa-toggle-right" id="fa_log_739" title="沟通日志" style="float:right;color:#ccc;"></i></a>
														</td>
													</tr>
													<tr rel="737" class="controls_tr">
														<td style="width: 72px; padding-left: 20px; height: 45px;" nowrap="nowrap">
															<div class="checkbox checkbox-primary">
																<input name="customer_id[]" class="check_list" value="737" rel="" rel1="" rel2="" type="checkbox">
																<label for=""></label>
															</div>
														</td>
														<td style="height: 45px; width: 29px;" nowrap="nowrap">
															<a href="javascript:void(0);" class="remind_view" rel="737">
																<span class="fa fa-bell-o hide" id="remind_view_737" style="font-size:16px;color:orange"></span>
															</a>
														</td>
														<td style="min-width: 100px; height: 45px; width: 300px;" nowrap="nowrap">
															<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=737" title="测" target="_blank" style="padding-left: 5px;line-height: 24px;"> 测
															</a>
														</td>
														<td style="width: 26.8px; border-right: 1px solid rgb(231, 234, 236); height: 45px;" nowrap="nowrap">
															<a class="log_customer" href="javascript:void(0);" rel="737"><i class="fa fa-toggle-right" id="fa_log_737" title="沟通日志" style="float:right;color:#ccc;"></i></a>
														</td>
													</tr>
													<tr rel="736" class="controls_tr">
														<td style="width: 72px; padding-left: 20px; height: 45px;" nowrap="nowrap">
															<div class="checkbox checkbox-primary">
																<input name="customer_id[]" class="check_list" value="736" rel="" rel1="" rel2="" type="checkbox">
																<label for=""></label>
															</div>
														</td>
														<td style="height: 45px; width: 29px;" nowrap="nowrap">
															<a href="javascript:void(0);" class="remind_view" rel="736">
																<span class="fa fa-bell-o hide" id="remind_view_736" style="font-size:16px;color:orange"></span>
															</a>
														</td>
														<td style="min-width: 100px; height: 45px; width: 300px;" nowrap="nowrap">
															<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=736" title="" target="_blank" style="padding-left: 5px;line-height: 24px;"> 查看详情
															</a>
														</td>
														<td style="width: 26.8px; border-right: 1px solid rgb(231, 234, 236); height: 45px;" nowrap="nowrap">
															<a class="log_customer" href="javascript:void(0);" rel="736"><i class="fa fa-toggle-right" id="fa_log_736" title="沟通日志" style="float:right;color:#ccc;"></i></a>
														</td>
													</tr>
													<tr rel="735" class="controls_tr">
														<td style="width: 72px; padding-left: 20px; height: 45px;" nowrap="nowrap">
															<div class="checkbox checkbox-primary">
																<input name="customer_id[]" class="check_list" value="735" rel="" rel1="" rel2="" type="checkbox">
																<label for=""></label>
															</div>
														</td>
														<td style="height: 45px; width: 29px;" nowrap="nowrap">
															<a href="javascript:void(0);" class="remind_view" rel="735">
																<span class="fa fa-bell-o hide" id="remind_view_735" style="font-size:16px;color:orange"></span>
															</a>
														</td>
														<td style="min-width: 100px; height: 45px; width: 300px;" nowrap="nowrap">
															<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=735" title="了吗哦那么早就知道我是谁吗好的，谢谢老师关心你的名字是什么意思呢你干嘛呢老婆老婆我爱你我爱你们的聊天记录的那个月了啊你怎么想你去啊的吗好的好的好的好的，？我现在都没有看到吗好的，谢谢啦谢谢老师关心你的意思就是什么东西都收拾好了吧你自己说的那个事儿多拿点东西回来再给你打电话的时候可以给我打电话让我自己一个人在家无聊死了啊你怎么想吧你呢干嘛呢美女晚上好啊好啊美女你好你好美女晚上好美女晚上好美女早上好亲爱的朋友圈第一条帮忙举报韩信你啊你不喜欢的那个题啊我都不知道怎么说呢我是你的小可爱啊我现在在外面吃饭啊！我现在" target="_blank" style="padding-left: 5px;line-height: 24px;"> 了吗哦那么早就知道我是谁吗好的 . . .
															</a>
														</td>
														<td style="width: 26.8px; border-right: 1px solid rgb(231, 234, 236); height: 45px;" nowrap="nowrap">
															<a class="log_customer" href="javascript:void(0);" rel="735"><i class="fa fa-toggle-right" id="fa_log_735" title="沟通日志" style="float:right;color:#ccc;"></i></a>
														</td>
													</tr>
													<tr rel="733" class="controls_tr">
														<td style="width: 72px; padding-left: 20px; height: 45px;" nowrap="nowrap">
															<div class="checkbox checkbox-primary">
																<input name="customer_id[]" class="check_list" value="733" rel="" rel1="" rel2="" type="checkbox">
																<label for=""></label>
															</div>
														</td>
														<td style="height: 45px; width: 29px;" nowrap="nowrap">
															<a href="javascript:void(0);" class="remind_view" rel="733">
																<span class="fa fa-bell-o hide" id="remind_view_733" style="font-size:16px;color:orange"></span>
															</a>
														</td>
														<td style="min-width: 100px; height: 45px; width: 300px;" nowrap="nowrap">
															<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=733" title="你能不能" target="_blank" style="padding-left: 5px;line-height: 24px;"> 你能不能
															</a>
														</td>
														<td style="width: 26.8px; border-right: 1px solid rgb(231, 234, 236); height: 45px;" nowrap="nowrap">
															<a class="log_customer" href="javascript:void(0);" rel="733"><i class="fa fa-toggle-right" id="fa_log_733" title="沟通日志" style="float:right;color:#ccc;"></i></a>
														</td>
													</tr>
													<tr rel="732" class="controls_tr">
														<td style="width: 72px; padding-left: 20px; height: 45px;" nowrap="nowrap">
															<div class="checkbox checkbox-primary">
																<input name="customer_id[]" class="check_list" value="732" rel="" rel1="" rel2="" type="checkbox">
																<label for=""></label>
															</div>
														</td>
														<td style="height: 45px; width: 29px;" nowrap="nowrap">
															<a href="javascript:void(0);" class="remind_view" rel="732">
																<span class="fa fa-bell-o hide" id="remind_view_732" style="font-size:16px;color:orange"></span>
															</a>
														</td>
														<td style="min-width: 100px; height: 45px; width: 300px;" nowrap="nowrap">
															<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=732" title="挺好结婚v" target="_blank" style="padding-left: 5px;line-height: 24px;"> 挺好结婚v
															</a>
														</td>
														<td style="width: 26.8px; border-right: 1px solid rgb(231, 234, 236); height: 45px;" nowrap="nowrap">
															<a class="log_customer" href="javascript:void(0);" rel="732"><i class="fa fa-toggle-right" id="fa_log_732" title="沟通日志" style="float:right;color:#ccc;"></i></a>
														</td>
													</tr>
													<tr rel="730" class="controls_tr">
														<td style="width: 72px; padding-left: 20px; height: 45px;" nowrap="nowrap">
															<div class="checkbox checkbox-primary">
																<input name="customer_id[]" class="check_list" value="730" rel="" rel1="" rel2="" type="checkbox">
																<label for=""></label>
															</div>
														</td>
														<td style="height: 45px; width: 29px;" nowrap="nowrap">
															<a href="javascript:void(0);" class="remind_view" rel="730">
																<span class="fa fa-bell-o hide" id="remind_view_730" style="font-size:16px;color:orange"></span>
															</a>
														</td>
														<td style="min-width: 100px; height: 45px; width: 300px;" nowrap="nowrap">
															<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=730" title="sdf" target="_blank" style="padding-left: 5px;line-height: 24px;"> sdf
															</a>
														</td>
														<td style="width: 26.8px; border-right: 1px solid rgb(231, 234, 236); height: 45px;" nowrap="nowrap">
															<a class="log_customer" href="javascript:void(0);" rel="730"><i class="fa fa-toggle-right" id="fa_log_730" title="沟通日志" style="float:right;color:#ccc;"></i></a>
														</td>
													</tr>
													<tr rel="729" class="controls_tr">
														<td style="width: 72px; padding-left: 20px; height: 45px;" nowrap="nowrap">
															<div class="checkbox checkbox-primary">
																<input name="customer_id[]" class="check_list" value="729" rel="" rel1="" rel2="" type="checkbox">
																<label for=""></label>
															</div>
														</td>
														<td style="height: 45px; width: 29px;" nowrap="nowrap">
															<a href="javascript:void(0);" class="remind_view" rel="729">
																<span class="fa fa-bell-o hide" id="remind_view_729" style="font-size:16px;color:orange"></span>
															</a>
														</td>
														<td style="min-width: 100px; height: 45px; width: 300px;" nowrap="nowrap">
															<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=729" title="sssss" target="_blank" style="padding-left: 5px;line-height: 24px;"> sssss
															</a>
														</td>
														<td style="width: 26.8px; border-right: 1px solid rgb(231, 234, 236); height: 45px;" nowrap="nowrap">
															<a class="log_customer" href="javascript:void(0);" rel="729"><i class="fa fa-toggle-right" id="fa_log_729" title="沟通日志" style="float:right;color:#ccc;"></i></a>
														</td>
													</tr>
													<tr rel="728" class="controls_tr">
														<td style="width: 72px; padding-left: 20px; height: 45px;" nowrap="nowrap">
															<div class="checkbox checkbox-primary">
																<input name="customer_id[]" class="check_list" value="728" rel="" rel1="" rel2="" type="checkbox">
																<label for=""></label>
															</div>
														</td>
														<td style="height: 45px; width: 29px;" nowrap="nowrap">
															<a href="javascript:void(0);" class="remind_view" rel="728">
																<span class="fa fa-bell-o hide" id="remind_view_728" style="font-size:16px;color:orange"></span>
															</a>
														</td>
														<td style="min-width: 100px; height: 45px; width: 300px;" nowrap="nowrap">
															<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=728" title="" target="_blank" style="padding-left: 5px;line-height: 24px;"> 查看详情
															</a>
														</td>
														<td style="width: 26.8px; border-right: 1px solid rgb(231, 234, 236); height: 45px;" nowrap="nowrap">
															<a class="log_customer" href="javascript:void(0);" rel="728"><i class="fa fa-toggle-right" id="fa_log_728" title="沟通日志" style="float:right;color:#ccc;"></i></a>
														</td>
													</tr>
													<tr rel="727" class="controls_tr">
														<td style="width: 72px; padding-left: 20px; height: 45px;" nowrap="nowrap">
															<div class="checkbox checkbox-primary">
																<input name="customer_id[]" class="check_list" value="727" rel="" rel1="" rel2="" type="checkbox">
																<label for=""></label>
															</div>
														</td>
														<td style="height: 45px; width: 29px;" nowrap="nowrap">
															<a href="javascript:void(0);" class="remind_view" rel="727">
																<span class="fa fa-bell-o hide" id="remind_view_727" style="font-size:16px;color:orange"></span>
															</a>
														</td>
														<td style="min-width: 100px; height: 45px; width: 300px;" nowrap="nowrap">
															<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=727" title="" target="_blank" style="padding-left: 5px;line-height: 24px;"> 查看详情
															</a>
														</td>
														<td style="width: 26.8px; border-right: 1px solid rgb(231, 234, 236); height: 45px;" nowrap="nowrap">
															<a class="log_customer" href="javascript:void(0);" rel="727"><i class="fa fa-toggle-right" id="fa_log_727" title="沟通日志" style="float:right;color:#ccc;"></i></a>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>

				<script type="text/javascript" src="%E6%82%9F%E7%A9%BACRM2.0%20-%20Powered%20By%20%E6%82%9F%E7%A9%BACRM_files/api"></script>
				<script type="text/javascript" src="%E6%82%9F%E7%A9%BACRM2.0%20-%20Powered%20By%20%E6%82%9F%E7%A9%BACRM_files/getscript"></script>

				<script type="text/javascript">
					//呼出电话
					$(document).on('click', '.tel_list', function() {
						var model_id = $(this).attr('rel');
						var html = $('#tel_list_' + model_id).prop('outerHTML');
						$('#call_list').modal('show');
						$('#call_modal').html('');
						$('#call_modal').append(html);
					});

					//dropdown menu 不关闭
					$('#dropdown_order').on('click', function(event) {
						event.stopPropagation();
					});
					//客户转移
					$("#change").click(function() {
						var id_array = new Array();
						$("input[class='check_list']:checked").each(function() {
							id_array.push($(this).val());
						});
						if(id_array.length == 0) {
							alert("您没有选中任何客户!");
						} else {
							var customer_ids = id_array.join(",");
							$('#dialog-transform').dialog('open');
							$('#dialog-transform').load("/index.php?m=customer&a=transfer_edit", "customer_id=" + customer_ids);
						}
					});
					//客户分享
					$("#share").click(function() {
						var id_array = new Array();
						$("input[class='check_list']:checked").each(function() {
							id_array.push($(this).val());
						});
						if(id_array.length == 0) {
							alert("您没有选中任何客户!");
						} else {
							var customer_ids = id_array.join(",");
							$('#dialog-share').dialog('open');
							$('#dialog-share').load("/index.php?m=customer&a=share", "customer_id=" + customer_ids);
						}
					});
					//取消客户分享
					$("#close_share").click(function() {
						var id_array = new Array();
						$("input[class='check_list']:checked").each(function() {
							id_array.push($(this).val());
						});
						if(id_array.length == 0) {
							alert("您没有选中任何客户!");
						} else {
							var customer_ids = id_array.join(",");
							swal({
									title: "您确定要取消客户共享信息吗？",
									text: "移除后将无法恢复，请谨慎操作！",
									type: "warning",
									showCancelButton: true,
									confirmButtonColor: "#DD6B55",
									confirmButtonText: "是的，取消！",
									cancelButtonText: '让我再考虑一下…',
									closeOnConfirm: false,
									closeOnCancel: false
								},
								function(isConfirm) {
									if(isConfirm) {
										window.location.href = "/index.php?m=customer&a=close_share&customer_ids=" + customer_ids;
									} else {
										swal("已取消", "您取消了此操作！", "error");
									}
								});
						}
					});
					$("#dialog-transform").dialog({
						autoOpen: false,
						width: 530,
						maxHeight: 600,
						position: ["center", 100],
						buttons: {
							"确认转移": function() {
								$('#form_transfer').submit();
								$(this).dialog("close");
							},
							"取消": function() {
								$(this).dialog("close");
							}
						},
						close: function() {
							$(this).html('');
						}
					});
					$("#dialog-share").dialog({
						autoOpen: false,
						modal: true,
						width: 720,
						maxHeight: 600,
						position: ["center", 100],
						buttons: {
							"确认分享": function() {
								$('#share_form').submit();
								$(this).dialog("close");
							},
							"取消": function() {
								$(this).dialog("close");
							}
						},
						close: function() {
							$(this).html('');
						}
					});
					//自定义排序
					$('#dropdown_order').on('click', '.save_order', function() {
						var by = "me";
						var scene_id = "";
						var order_field = $("input[name='order_field']:checked").val();
						var order_type = $("input[name='order_type']:checked").val();
						var order_parameter = 'by=me&listrows=15';

						if(order_field != '' && order_type != '') {
							if(order_type == 'cancel_order') {
								window.location.href = "/index.php?m=customer&a=index" + '&' + order_parameter;
							} else {
								window.location.href = "/index.php?m=customer&a=index" + '&' + order_parameter + '&order_type=' + order_type + '&order_field=' + order_field;
							}
						}
					});

					/*让复选框默认取消选择*/
					$(':checkbox').prop('checked', false);

					$('[data-toggle="tooltip"]').tooltip({
						html: true
					});

					$('#status_id').val("");
					$('#status_id').change(function() {
						$('#customer_search').submit();
					});

					/*添加筛选条件*/
					var m = 1;
					$('#add_btn').click(function() {
						m += 1;
						$('#search_add').append('<div id="con_search_' + m + '" style="float:left;width:650px;padding-top:10px;margin:0px 10px 0 10px;"><div  id="rem_' + m + '" class="pull-left" style="line-height:30px;"><a href="javascript:void(0);" class="rem_search" rel="' + m + '" title="移除"><span class="fa fa-times-circle"></span></a></div>&nbsp;<ul class="nav pull-left" style="margin:0px 0 0 5px;width:620px"><li class="pull-left"><select id="field_' + m + '"  style="width:auto" class="form-control input-sm field_name new-select" onchange="changeCondition(' + m + ')" name=""><option class="" value="name">--请选择筛选条件--</option><option class="text" value="name" rel="customer">客户名称</option><option class="datetime" value="nextstep_time" rel="customer">下次联系时间</option><option class="text" value="crm_gxmlcs" rel="customer">车牌号</option><option class="datetime" value="crm_yacitq" rel="customer">到期时间</option><option class="text" value="crm_pcamcq" rel="customer">会员卡号</option><option class="box" value="crm_xdhslk" rel="customer">测试</option><option class="textarea" value="crm_ogcdos" rel="customer">详细地址</option><option class="box" value="grade" rel="customer">客户等级</option><option class="box" value="customer_status" rel="customer">客户状态</option><option class="text" value="crm_ifvtcy" rel="customer">微信</option><option class="box" value="industry" rel="customer">客户行业</option><option class="text" value="crm_jlkgnr" rel="customer">QQ</option><option class="text" value="customer_code" rel="customer">客户单号</option><option class="box" value="origin" rel="customer">销售渠道</option><option class="address" value="address" rel="customer">地址</option><option class="role" value="owner_role_id">负责人</option><option class="date" value="create_time">创建时间</option><option class="date" value="update_time">修改时间</option><option class="text" value="contacts_name">首要联系人姓名</option><option class="mobile" value="contacts_telephone">首要联系人电话</option></select>&nbsp;&nbsp;</li><li class="pull-left" id="conditionContent_' + m + '"><select id="condition_' + m + '" style="width:99px" class="form-control input-sm new-select" name="condition" onchange="changeSearch()"><option value="contains">包含</option><option value="not_contain">不包含</option><option value="is">是</option><option value="isnot">否</option><option value="start_with">开始字符</option><option value="end_with">结束字符</option><option value="is_empty">为空</option><option value="is_not_empty">不为空</option></select>&nbsp;&nbsp;</li><li class="pull-left" id="searchContent_' + m + '"><input id="search_' + m + '" type="text" style="width:160px;" class="input-medium form-control input-sm search-query" name="value"/>&nbsp;&nbsp;</li></ul></div>');
					});
					$(document).on('click', '.rem_search', function() {
						var num = $(this).attr('rel');
						$('#con_search_' + num).remove();
					});

					// 筛选重复判断
					var dosearch = 1;

					function doh() {
						var ary = new Array();
						var field_name = '';
						var is_submit = 1;
						$('.field_name').each(function(k, v) {
							field_name = $(this).find("option:selected").val();
							if(jQuery.inArray(field_name, ary) >= 0) {
								is_submit = 0;
								swal({
									title: "筛选条件中有重复项！",
									text: "",
									type: "error"
								});
								dosearch = 0;
								return false;
							}
							ary[k] = field_name;
						})
						if(is_submit == 1) {
							$("#searchForm").submit();
						}
					}

					var url = "/index.php?m=customer&a=getcurrentstatus";
					var limit_size = 1000;
					var count = 264;
					var ii = 1;

					function remainTime() {
						var id_array = new Array();
						// 判断是普通查询还是高级搜索
						var field = "";

						$("input.check_list:checked").each(function() {
							id_array.push($(this).val());
						});
						$.get(url, function(data) {
							if(data.data == 0) {
								if(id_array != '') {
									count = id_array.length;
								}
								if((ii - 1) * limit_size < count) {
									$("#act").val('excel');
									$("#daochu").val(id_array);
									$("#current_page").val(ii);
									$("#export_limit").val(limit_size);
									if(field) {
										$("#customer_search").submit();
									} else {
										$("#searchForm").submit();
									}
									setTimeout("remainTime()", 1000);
									ii++;
								} else {
									$("#act").val('');
									swal("数据导出成功！", "", "success");
									ii = 1;
								}

							} else {
								setTimeout("remainTime()", 1000);
							}
						}, 'json');
					}

					$("#dialog-product_view").dialog({
						autoOpen: false,
						modal: true,
						minWidth: 800,
						maxHeight: 600,
						position: ["center", 100]
					});
					//产品详情
					$(".product_view").click(function() {
						var business_id = $(this).attr('rel');
						var customer_id = $(this).attr('rel1');
						var code = $(this).attr('rel2');
						//判断是否有商机编号，如果没有则提示添加产品
						if(!code) {
							swal({
								title: "请先添加产品信息",
								text: "",
								type: "warning",
								showCancelButton: true,
								confirmButtonColor: "#DD6B55",
								confirmButtonText: "添加产品",
								closeOnConfirm: true,
							}, function() {
								// $('#dialog-addbusiness').dialog('open');
								$('#dialog-addproduct').dialog('open');
								$('#dialog-addproduct').load('/index.php?m=product&a=mutildialog_product&customer_id=' + customer_id);
							});
						} else {
							$('#dialog-product_view').dialog('open');
							$('#dialog-product_view').load('/index.php?m=business&a=product_view&id=' + business_id);
						}
					});
					/*营销阶段*/
					$("#dialog-advance").dialog({
						autoOpen: false,
						modal: true,
						minWidth: 320,
						maxHeight: 800,
						position: ["center", 100]
					});
					//推进
					$(".advance").click(function() {
						var business_id = $(this).attr('rel');
						var customer_id = $(this).attr('rel1');
						var code = $(this).attr('rel2');
						//判断是否有商机编号，如果没有则提示添加产品
						if(!code) {
							swal({
								title: "请先添加产品信息",
								text: "添加产品信息后，才可以推进",
								type: "warning",
								showCancelButton: true,
								confirmButtonColor: "#DD6B55",
								confirmButtonText: "添加产品",
								closeOnConfirm: true,
							}, function() {
								// $('#dialog-addbusiness').dialog('open');
								$('#dialog-addproduct').dialog('open');
								$('#dialog-addproduct').load('/index.php?m=product&a=mutildialog_product&customer_id=' + customer_id);
							});
						} else {
							$('#dialog-advance').dialog('open');
							$('#dialog-advance').load('/index.php?m=business&a=advance&id=' + business_id);
						}
					});

					if("" == "1") {
						width = $('.container').width() * 0.9;
					} else {
						width = 800;
					}

					$("#dialog-add_scene").dialog({
						autoOpen: false,
						modal: true,
						width: 750,
						height: 500,
						position: ["center", 100],
						buttons: {
							"确定": function() {
								if($('#scene_name').val() == '') {
									alert_crm('请填写场景名称！');
									return false;
								}
								dohDialog();
								if(dosearchDialog == 1) {
									var dialog = $('#scene_dialog').val();
									var temp = '';
									$.ajax({
										type: 'post',
										url: "/index.php?m=system&a=scene_add",
										data: $("#searchFormDialog").serialize(),
										async: false,
										success: function(data) {
											if(data.status == 1) {
												swal("温馨提示！", "创建成功！", "success");
												if(dialog == 1) {
													temp += '<tr class="controls_tr" id="tr_"+data.data.id>\
									<td><input type="hidden" class="check_list_scene" name="id[]" value="' + data.data.id + '"/></td>\
									<td>' + data.data.name + '</td>\
									<td>\
										<div class="radio radio-info radio-inline" style="padding-left:20px;">';
													if(data.data.is_default == 1) {
														temp += '<input type="radio" class="is_default" name="is_default"  rel="' + data.data.id + '" checked /><label for=""></label>';
													} else {
														temp += '<input type="radio" class="is_default" name="is_default"  rel="' + data.data.id + '"/><label for=""></label>';
													}
													temp += '</div>\
									</td>\
									<td>';
													if(data.data.is_hide == 0) {
														temp += '<a class="is_hide" href="javascript:void(0);" rel="' + data.data.id + '" title="不启用" ><span class="fa fa-toggle-on" id="hide_span_' + data.data.id + '" style="color:#ccc;font-size:20px;"></span></a>';
													} else {
														temp += '<a class="is_hide" href="javascript:void(0);" rel="' + data.data.id + '" title="启用" ><span class="fa fa-toggle-off" id="hide_span_' + data.data.id + '" style="color:#ccc;font-size:20px;"></span></a>';
													}
													temp += '</td>\
										<td>\
											<a class="edit_scene" style="float:left;" href="javascript:void(0);" rel="' + data.data.id + '" title="编辑"><i class="fa fa-pencil"></i></a>&nbsp;&nbsp;\
											<a class="delete" style="float:left;margin-left:10px;" href="javascript:void(0);" rel="' + data.data.id + '" title="删除"><i class="fa fa-times"></i></a>\
										</td>\
									</tr>';
													$('#tab_Test3_scene').append(temp);
												} else {
													location.reload();
												}
											} else {
												swal({
													title: "操作失败！",
													text: data.info,
													type: "error"
												})
												return false;
											}
										},
										dataType: 'json'
									});
									$(this).dialog("close");
								}
							},
							"取消": function() {
								$(this).dialog("close");
							}
						},
						close: function() {
							scene_list();
							$(this).html('');
						}
					});

					$("#add_scene").click(function() {
						$('#dialog-add_scene').dialog('open');
						$('#dialog-add_scene').load('/index.php?m=system&a=scene_add&module=customer');
					});

					$("#dialog-setting_scene").dialog({
						autoOpen: false,
						modal: true,
						width: 900,
						height: 500,
						position: ["center", 100],
						buttons: {
							"确定": function() {
								$(this).dialog("close");
							},
							"取消": function() {
								$(this).dialog("close");
							}
						},
						close: function() {
							scene_list();
							$(this).html('');
						}
					});

					$("#setting_scene").click(function() {
						$('#dialog-setting_scene').dialog('open');
						$('#dialog-setting_scene').load('/index.php?m=system&a=scene_setting&module=customer');
					});

					//场景刷新
					function scene_list() {
						var scene_temp = '';
						var url = '';
						$.ajax({
							type: 'post',
							url: "/index.php?m=system&a=sceneListAjax",
							data: {
								module: 'customer'
							},
							async: false,
							success: function(data) {
								if(data.status == 1) {
									$(data.data).each(function(k, v) {
										if(v.type == 1) {
											url = "/index.php?m=customer&a=index&by=" + v.by;
											scene_temp += '<a href="' + url + '" style="width:100%;color:#676a6c;padding:5px !important;float:left;">\
							<div style="padding:0 10px;">\
						    	<span class="pull-left" style="line-height:26px;">&nbsp;&nbsp;' + v.name + '</span>\
						    </div>\
						</a>';
										} else {
											url = "/index.php?m=customer&a=index&scene_id=" + v.id;
											scene_temp += '<a href="' + url + '" style="width:100%;color:#676a6c;padding:5px !important;float:left;">\
							<div style="padding:0 10px;">\
						    	<span class="pull-left" style="line-height:26px;">&nbsp;&nbsp;' + v.name + '</span>\
						    </div>\
						</a>';
										}
									});
									$('#scene_list').html(scene_temp);
								}
							},
							dataType: 'json'
						});
					}

					$("#dialog-map").dialog({
						autoOpen: false,
						modal: true,
						width: 800,
						minHeight: 600,
						position: ["center", 100]
					});

					$(".getMap").click(function() {
						var map = $(this).attr('rel');
						$('#dialog-map').dialog('open');
						$('#dialog-map').load('/index.php?m=setting&a=mapdialog&map=' + map);
					});

					$("#log_customer").click(function() {
						$('#dialog-log').dialog('open');
						$('#dialog-log').load('/index.php?m=log&a=add&r=RCustomerLog&module=customer&id=' + $(this).attr('rel'));
					});

					$('#form1').on('click', '.log_customer', function() {
						$('#dialog-log').dialog('open');
						$('#dialog-log').load('/index.php?m=log&a=add&r=RCustomerLog&module=customer&id=' + $(this).attr('rel'));
					});

					$("#dialog-log").dialog({
						autoOpen: false,
						// modal: true,
						width: 750,
						maxHeight: 500,
						position: ["center", 100],
						buttons: {
							"确定": function() {
								var log_content = $('#log_content').val();
								if(log_content == "") {
									alert_crm("请填写沟通记录！");
									$("#log_content").focus();
									return false;
								}
								var status_id = $('#status_id option:selected').val();
								if($('#save_reply').is(':checked') && status_id == '') {
									alert_crm("请选择跟进类型！");
									$("#status_id").focus();
									return false;
								}
								$.ajax({
									type: 'post',
									url: "/index.php?m=log&a=add",
									data: $('#dialog_form1').serialize(),
									async: false,
									success: function(data) {
										if(data.status == 1) {
											swal("操作成功！", "沟通日志添加成功！", "success");
											$("#dialog-log").dialog("close");
											// location.reload();
										} else {
											swal({
												title: "操作失败！",
												text: data.info,
												type: "error"
											});
											return false;
										}
									},
									dataType: 'json'
								});
							},
							"取消": function() {
								$(this).dialog("close");
							}
						},
						close: function() {
							$(this).html('');
						}
					});

					$("#dialog-role-info").dialog({
						autoOpen: false,
						modal: true,
						width: width,
						maxHeight: 550,
						position: ["center", 100]
					});

					$("#dialog-import").dialog({
						autoOpen: false,
						modal: true,
						width: width,
						maxHeight: 400,
						position: ["center", 100]
					});

					$("#dialog-field-search").dialog({
						autoOpen: false,
						modal: true,
						width: 700,
						minHeight: 350,
						maxHeight: 450,
						position: ["center", 100],
						buttons: {
							"确定": function() {
								doh();
								if(dosearch == 1) {
									$(this).dialog("close");
								}
							},
							"取消": function() {
								$(this).dialog("close");
							}
						}
					});

					$("#dialog-fenpei").dialog({
						autoOpen: false,
						modal: true,
						width: width,
						maxHeight: 400,
						position: ["center", 100],
						buttons: {
							"确定": function() {
								$('#fenpei_form').submit();
								$(this).dialog("close");
							},
							"取消": function() {
								$(this).dialog("close");
							}
						},
						close: function() {
							$(this).html('');
						}
					});

					$("#dialog-remind").dialog({
						autoOpen: false,
						modal: true,
						width: width,
						maxHeight: 400,
						position: ["center", 100],
						buttons: {
							"确定": function() {
								if($('#dialog_content').val() == '') {
									alert_crm("请填写提醒内容！");
									$("#dialog_content").focus();
								} else {
									$('#remind_form').submit();
									$(this).dialog("close");
								}
							},
							"取消": function() {
								$(this).dialog("close");
							}
						},
						close: function() {
							$(this).html('');
						}
					});

					$("#dialog-remind_view").dialog({
						autoOpen: false,
						modal: true,
						width: width,
						maxHeight: 400,
						position: ["center", 100],
						buttons: {
							"删除": function() {
								swal({
										title: "您确认删除吗？",
										type: "warning",
										showCancelButton: true,
										confirmButtonColor: "#DD6B55",
										confirmButtonText: "确定",
										closeOnConfirm: false
									},
									function() {
										var dislog_module_id = $('#dislog_module_id').val();
										var dislog_module = $('#dislog_module').val();
										$.ajax({
											type: 'post',
											url: "/index.php?m=remind&a=delete",
											data: {
												module_id: dislog_module_id,
												module: dislog_module
											},
											async: false,
											success: function(data) {
												if(data.status == 1) {
													$('#remind_view_' + dislog_module_id).addClass('hide');
													swal("操作成功！", "提醒删除成功！", "success");
													$("#dialog-remind_view").dialog("close");
												} else {
													swal({
														title: "操作失败！",
														text: data.info,
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
							"取消": function() {
								$(this).dialog("close");
							}
						},
						close: function() {
							$(this).html('');
						}
					});

					$("#dialog-assign").dialog({
						autoOpen: false,
						modal: true,
						width: width,
						maxHeight: 400,
						position: ["center", 100],
						buttons: {
							"确定": function() {
								var owner_role_id = $('input[name="owner_role_id"]').val();
								var message_alert = $('input:checkbox[name="message_alert"]:checked').val();
								var sms_alert = $('input:checkbox[name="sms_alert"]:checked').val();
								var email_alert = $('input:checkbox[name="email_alert"]:checked').val();

								$("#hidden_owner_id").val(owner_role_id);
								$("#hidden_message").val(message_alert);
								$("#hidden_sms").val(sms_alert);
								$("#hidden_email").val(email_alert);

								$("#form1").attr('action', '/index.php?m=customer&a=receive');
								$('#operating_type').val('assign');
								$("#form1").submit();
								$(this).dialog("close");
							},
							"取消": function() {
								$(this).dialog("close");
							}
						},
						close: function() {
							$(this).html('');
						}
					});

					$("#dialog-addbusiness").dialog({
						autoOpen: false,
						modal: true,
						minWidth: 850,
						maxHeight: 400,
						position: ["center", 100],
						buttons: {
							"确定": function() {
								if(typeof($('.bus_product').val()) == 'undefined' || $('.bus_product').val() == '0') {
									alert_crm("请至少选择一个产品！");
								} else {
									$('#addbusiness_form').submit();
									$(this).dialog("close");
								}
							},
							"取消": function() {
								$(this).dialog("close");
							}
						},
						close: function() {
							$(this).html('');
						}
					});

					$(".addproduct").click(function() {
						var customer_id = $(this).attr('rel');
						$('#dialog-addproduct').load('/index.php?m=product&a=mutildialog_product&customer_id=' + customer_id);
						$('#dialog-addproduct').dialog('open');
					});

					// 选择产品
					$("#dialog-addproduct").dialog({
						autoOpen: false,
						modal: true,
						minWidth: 850,
						maxHeight: 600,
						position: ["center", 100],
						buttons: {
							"确定": function() {
								var is_product = $('.cproduct_id').val();
								if(is_product == 'undefined' || is_product == '0') {
									alert_crm('请至少选择一个产品！');
								} else {
									$('#addbusiness_form').submit();
									$(this).dialog("close");
								}
							},
							"取消": function() {
								$(this).html('');
								$(this).dialog("close");
							}
						},
						close: function() {
							$(this).empty();
						}
					});

					$("#dialog-excelexport").dialog({
						autoOpen: false,
						modal: true,
						minWidth: 550,
						maxHeight: 400,
						position: ["center", 100],
						buttons: {
							"确定": function() {
								var select_array = new Array();
								$("input.select_list:checked").each(function() {
									select_array.push($(this).val());
								});
								$('#selectexcelxport').val(select_array);
								remainTime();
								$(this).dialog("close");
							},
							"取消": function() {
								$(this).dialog("close");
							}
						},
						close: function() {
							$(this).empty();
						}
					});

					$(".addBusiness").click(function() {
						var customer_id = $(this).attr('rel');
						$('#dialog-addbusiness').dialog('open');
						$('#dialog-addbusiness').load('/index.php?m=product&a=mutildialog_business&customer_id=' + customer_id);
					});

					function changeContent() {
						a = $("#select1 option:selected").val();
						window.location.href = "/index.php?m=customer&a=index&by=" + a;
					}

					$(function() {
						$("#edit_customer").click(function() {
							window.location.href = "kehuxinxixiugai.htm"; //+$(this).attr('rel');
						})
						$(".excelExport").click(function() {
							$('#dialog-excelexport').dialog('open');
							$('#dialog-excelexport').load('/index.php?m=customer&a=selectexcelexport');
						})

						$('#delete').click(function() {
							var id_array = new Array();
							$("input.check_list:checked").each(function() {
								id_array.push($(this).val());
							});
							if(id_array.length == 0) {
								alert_crm('您没有选中任何客户!');
								return false;
							}
							swal({
									title: "您确定要删除客户信息吗？",
									text: "删除后将无法恢复，请谨慎操作！",
									type: "warning",
									showCancelButton: true,
									confirmButtonColor: "#DD6B55",
									confirmButtonText: "是的，我要删除！",
									cancelButtonText: '让我再考虑一下…',
									closeOnConfirm: false,
									closeOnCancel: false
								},
								function(isConfirm) {
									if(isConfirm) {
										$.ajax({
											type: 'post',
											url: "/index.php?m=customer&a=delete",
											data: {
												customer_id: id_array
											},
											async: false,
											success: function(data) {
												if(data.status == 1) {
													swal("删除成功！", "您已经永久删除了信息！", "success");
													location.reload();
												} else {
													swal({
														title: "操作失败！",
														text: data.info,
														type: "error"
													})
													return false;
												}
											},
											dataType: 'json'
										});
									} else {
										swal("已取消", "您取消了删除操作！", "error");
									}
								});
						});

						$('#remove').click(function() {
							swal({
									title: "确认放入客户池？",
									type: "warning",
									showCancelButton: true,
									confirmButtonColor: "#DD6B55",
									confirmButtonText: "确定",
									closeOnConfirm: false
								},
								function() {
									$("#form1").attr('action', '/index.php?m=customer&a=remove');
									$('#operating_type').attr('value', 'remove');
									$("#form1").submit();
								});
						});

						$("#import_excel").click(function() {
							$('#dialog-import').dialog('open');
							$('#dialog-import').load('/index.php?m=customer&a=excelimport');
						});

						$(".role_info").click(function() {
							$role_id = $(this).attr('rel');
							$('#dialog-role-info').dialog('open');
							$('#dialog-role-info').load('/index.php?m=user&a=dialoginfo&id=' + $role_id);
						});

						$("#check_send").click(function() {
							var id_array = new Array();
							$("input.check_list:checked").each(function() {
								id_array.push($(this).val());
							});
							if(id_array.length == 0) {
								alert('您没有选中任何客户!');
							} else {
								var customer_ids = id_array.join(",");
								window.open("/index.php?m=setting&a=sendSms&model=customer&customer_ids=" + customer_ids);
							}
						});

						$("#check_send_email").click(function() {
							var id_array = new Array();
							$("input.check_list:checked").each(function() {
								id_array.push($(this).val());
							});

							if(id_array.length == 0) {
								swal("您没有选中任何客户!");
							} else {
								var customer_ids = id_array.join(",");
								window.open("/index.php?m=setting&a=sendemail&model=customer&customer_ids=" + customer_ids);
							}
						});

						$("#page_send").click(function() {
							var id_array = new Array();
							$("input[class='check_list']").each(function() {
								id_array.push($(this).val());
							});
							if(id_array.length == 0) {
								swal("您没有选中任何客户!");
							} else {
								var customer_ids = id_array.join(",");
								window.open("/index.php?m=setting&a=sendSms&model=customer&customer_ids=" + customer_ids);
							}
						});

						$("#page_send_email").click(function() {
							var id_array = new Array();
							$("input[class='check_list']").each(function() {
								id_array.push($(this).val());
							});
							if(id_array.length == 0) {
								swal("您没有选中任何客户!");
							} else {
								var customer_ids = id_array.join(",");
								window.open("/index.php?m=setting&a=sendemail&model=customer&customer_ids=" + customer_ids);
							}
						});

						$("#transform").click(function() {
							var id_array = new Array();
							$("input.check_list:checked").each(function() {
								id_array.push($(this).val());
							});
							if(id_array.length == 0) {
								swal("您没有选中任何客户!");
							} else {
								var customer_ids = id_array.join(",");
								$('#dialog-transform').dialog('open');
								$('#dialog-transform').load("/index.php?m=customer&a=transfer_edit", "customer_id=" + customer_ids);
							}
						});

						$("#all_send_email").click(function() {
							window.open("/index.php?m=setting&a=sendemail&model=customer&customer_ids=all");
						});

						$("#all_send").click(function() {
							$("#act").val('sms');
							$("#searchForm").submit();
						});

						$(".fenpei").click(function() {
							var customer_id = $(this).attr('rel');
							$('#dialog-fenpei').dialog('open');
							$('#dialog-fenpei').load('/index.php?m=customer&a=fenpei&customer_id=' + customer_id);
						});

						$("#remind").click(function() {
							var customer_id = $(this).attr('rel');
							$('#dialog-remind').dialog('open');
							$('#dialog-remind').load("/index.php?m=remind&a=add&module=customer&module_id=" + customer_id);
						});

						$(".remind_view").click(function() {
							var customer_id = $(this).attr('rel');
							$('#dialog-remind_view').dialog('open');
							$('#dialog-remind_view').load("/index.php?m=remind&a=view&module=customer&module_id=" + customer_id);
						});

						$("#to_top").click(function() {
							var customer_id = $(this).attr('rel');
							$("#form1").attr('action', '/index.php?m=customer&a=settop&module=customer&module_id=' + customer_id);
							$("#form1").submit();
						});
						$('#batch_assign').click(function() {
							$('#dialog-assign').dialog('open');
							$('#dialog-assign').load('/index.php?m=customer&a=fenpei');
						});

						$('#batch_receive').click(function() {
							swal({
								title: "确定要批量领取吗？",
								type: "warning",
								showCancelButton: true,
								confirmButtonColor: "#DD6B55",
								confirmButtonText: "确定",
								closeOnConfirm: false
							}, function() {
								$("#form1").attr('action', '/index.php?m=customer&a=receive');
								$('#operating_type').attr('value', 'receive');
								$("#form1").submit();
							});
						});

						$("#search_type").click(function() {
							$("#dialog-field-search").dialog('open');
						});
					});
				</script>

				<!-- loading加载 -->
				<!-- <style type="text/css">
	#box{
		position:absolute;
		top:0;
		bottom:0;
		left:0;
		right:0;
		background:#000;
		opacity:0.7;
		
		padding-top: 200px;
		padding-left: 45%;
	}
</style>
<div id="box" style="display: none;"><img src="img/loading.gif" width="80px"></div>
<script type="text/javascript">
	//呼叫功能
	$('.call').click(function(){
		$('#box').show();

		var phone = $(this).attr('phone');
		var extid = "";
		var agent_ip = "";
		
		if (!phone) {
			alert('该客户没有联系方式！');
			$('#box').hide();
			return false;
		}
			
		$.ajax({
			type:'get',
			url: "http://"+agent_ip+"/agent/index.php/home/index/call",
			data: {phone:phone, extid:extid},
			async:true,
			success:function(data){
				if (data.status == 1) {
					$('#box').hide();
				} else {
					$('#box').hide();
					alert(data.info);
				}
			},
			error:function(){
				$('#box').hide();
				alert('响应失败，请联系管理员检查呼叫配置！');
			},
			dataType:'json'
		});
	});
</script> -->

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
		<div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-front ui-dialog-buttons ui-draggable ui-resizable" style="display: none; position: fixed;" tabindex="-1" role="dialog" aria-describedby="dialog-transform" aria-labelledby="ui-id-1">
			<div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"><span id="ui-id-1" class="ui-dialog-title">客户转移</span><button class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only ui-dialog-titlebar-close" role="button" aria-disabled="false" title="关闭"><span class="ui-button-icon-primary ui-icon ui-icon-closethick"></span><span class="ui-button-text">关闭</span></button></div>
			<div style="" id="dialog-transform" class="ui-dialog-content ui-widget-content">
				<div class="spiner-example">
					<div class="sk-spinner sk-spinner-three-bounce">
						<div class="sk-bounce1"></div>
						<div class="sk-bounce2"></div>
						<div class="sk-bounce3"></div>
					</div>
				</div>
			</div>
			<div class="ui-dialog-buttonpane ui-widget-content ui-helper-clearfix">
				<div class="ui-dialog-buttonset"><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">确认转移</span></button><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">取消</span></button></div>
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
		<div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-front ui-dialog-buttons ui-draggable ui-resizable" style="display: none; position: fixed;" tabindex="-1" role="dialog" aria-describedby="dialog-share" aria-labelledby="ui-id-2">
			<div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"><span id="ui-id-2" class="ui-dialog-title">分享客户</span><button class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only ui-dialog-titlebar-close" role="button" aria-disabled="false" title="关闭"><span class="ui-button-icon-primary ui-icon ui-icon-closethick"></span><span class="ui-button-text">关闭</span></button></div>
			<div style="" id="dialog-share" class="ui-dialog-content ui-widget-content">
				<div class="spiner-example">
					<div class="sk-spinner sk-spinner-three-bounce">
						<div class="sk-bounce1"></div>
						<div class="sk-bounce2"></div>
						<div class="sk-bounce3"></div>
					</div>
				</div>
			</div>
			<div class="ui-dialog-buttonpane ui-widget-content ui-helper-clearfix">
				<div class="ui-dialog-buttonset"><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">确认分享</span></button><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">取消</span></button></div>
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
		<div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-front ui-draggable ui-resizable" style="display: none; position: fixed;" tabindex="-1" role="dialog" aria-describedby="dialog-product_view" aria-labelledby="ui-id-3">
			<div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"><span id="ui-id-3" class="ui-dialog-title">产品详情</span><button class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only ui-dialog-titlebar-close" role="button" aria-disabled="false" title="关闭"><span class="ui-button-icon-primary ui-icon ui-icon-closethick"></span><span class="ui-button-text">关闭</span></button></div>
			<div style="" id="dialog-product_view" class="ui-dialog-content ui-widget-content">
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
			<div class="ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se" style="z-index: 90;"></div>
			<div class="ui-resizable-handle ui-resizable-sw" style="z-index: 90;"></div>
			<div class="ui-resizable-handle ui-resizable-ne" style="z-index: 90;"></div>
			<div class="ui-resizable-handle ui-resizable-nw" style="z-index: 90;"></div>
		</div>
		<div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-front ui-draggable ui-resizable" style="display: none; position: fixed;" tabindex="-1" role="dialog" aria-describedby="dialog-advance" aria-labelledby="ui-id-4">
			<div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"><span id="ui-id-4" class="ui-dialog-title">阶段变更</span><button class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only ui-dialog-titlebar-close" role="button" aria-disabled="false" title="关闭"><span class="ui-button-icon-primary ui-icon ui-icon-closethick"></span><span class="ui-button-text">关闭</span></button></div>
			<div style="" id="dialog-advance" class="ui-dialog-content ui-widget-content">
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
			<div class="ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se" style="z-index: 90;"></div>
			<div class="ui-resizable-handle ui-resizable-sw" style="z-index: 90;"></div>
			<div class="ui-resizable-handle ui-resizable-ne" style="z-index: 90;"></div>
			<div class="ui-resizable-handle ui-resizable-nw" style="z-index: 90;"></div>
		</div>
		<div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-front ui-dialog-buttons ui-draggable ui-resizable" style="display: none; position: fixed;" tabindex="-1" role="dialog" aria-describedby="dialog-add_scene" aria-labelledby="ui-id-5">
			<div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"><span id="ui-id-5" class="ui-dialog-title">新建场景</span><button class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only ui-dialog-titlebar-close" role="button" aria-disabled="false" title="关闭"><span class="ui-button-icon-primary ui-icon ui-icon-closethick"></span><span class="ui-button-text">关闭</span></button></div>
			<div style="" id="dialog-add_scene" class="ui-dialog-content ui-widget-content">
				<div class="spiner-example">
					<div class="sk-spinner sk-spinner-three-bounce">
						<div class="sk-bounce1"></div>
						<div class="sk-bounce2"></div>
						<div class="sk-bounce3"></div>
					</div>
				</div>
			</div>
			<div class="ui-dialog-buttonpane ui-widget-content ui-helper-clearfix">
				<div class="ui-dialog-buttonset"><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">确定</span></button><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">取消</span></button></div>
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
		<div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-front ui-dialog-buttons ui-draggable ui-resizable" style="display: none; position: fixed;" tabindex="-1" role="dialog" aria-describedby="dialog-setting_scene" aria-labelledby="ui-id-6">
			<div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"><span id="ui-id-6" class="ui-dialog-title">场景管理</span><button class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only ui-dialog-titlebar-close" role="button" aria-disabled="false" title="关闭"><span class="ui-button-icon-primary ui-icon ui-icon-closethick"></span><span class="ui-button-text">关闭</span></button></div>
			<div style="" id="dialog-setting_scene" class="ui-dialog-content ui-widget-content">
				<div class="spiner-example">
					<div class="sk-spinner sk-spinner-three-bounce">
						<div class="sk-bounce1"></div>
						<div class="sk-bounce2"></div>
						<div class="sk-bounce3"></div>
					</div>
				</div>
			</div>
			<div class="ui-dialog-buttonpane ui-widget-content ui-helper-clearfix">
				<div class="ui-dialog-buttonset"><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">确定</span></button><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">取消</span></button></div>
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
		<div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-front ui-draggable ui-resizable" style="display: none; position: fixed;" tabindex="-1" role="dialog" aria-describedby="dialog-map" aria-labelledby="ui-id-7">
			<div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"><span id="ui-id-7" class="ui-dialog-title">地图</span><button class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only ui-dialog-titlebar-close" role="button" aria-disabled="false" title="关闭"><span class="ui-button-icon-primary ui-icon ui-icon-closethick"></span><span class="ui-button-text">关闭</span></button></div>
			<div style="" id="dialog-map" class="ui-dialog-content ui-widget-content">
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
			<div class="ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se" style="z-index: 90;"></div>
			<div class="ui-resizable-handle ui-resizable-sw" style="z-index: 90;"></div>
			<div class="ui-resizable-handle ui-resizable-ne" style="z-index: 90;"></div>
			<div class="ui-resizable-handle ui-resizable-nw" style="z-index: 90;"></div>
		</div>
		<div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-front ui-dialog-buttons ui-draggable ui-resizable" style="display: none; position: fixed;" tabindex="-1" role="dialog" aria-describedby="dialog-log" aria-labelledby="ui-id-8">
			<div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"><span id="ui-id-8" class="ui-dialog-title">添加跟进记录</span><button class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only ui-dialog-titlebar-close" role="button" aria-disabled="false" title="关闭"><span class="ui-button-icon-primary ui-icon ui-icon-closethick"></span><span class="ui-button-text">关闭</span></button></div>
			<div style="" id="dialog-log" class="ui-dialog-content ui-widget-content">
				<div class="spiner-example">
					<div class="sk-spinner sk-spinner-three-bounce">
						<div class="sk-bounce1"></div>
						<div class="sk-bounce2"></div>
						<div class="sk-bounce3"></div>
					</div>
				</div>
			</div>
			<div class="ui-dialog-buttonpane ui-widget-content ui-helper-clearfix">
				<div class="ui-dialog-buttonset"><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">确定</span></button><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">取消</span></button></div>
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
		<div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-front ui-draggable ui-resizable" style="display: none; position: fixed;" tabindex="-1" role="dialog" aria-describedby="dialog-role-info" aria-labelledby="ui-id-9">
			<div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"><span id="ui-id-9" class="ui-dialog-title">员工信息</span><button class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only ui-dialog-titlebar-close" role="button" aria-disabled="false" title="关闭"><span class="ui-button-icon-primary ui-icon ui-icon-closethick"></span><span class="ui-button-text">关闭</span></button></div>
			<div style="" id="dialog-role-info" class="ui-dialog-content ui-widget-content">
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
			<div class="ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se" style="z-index: 90;"></div>
			<div class="ui-resizable-handle ui-resizable-sw" style="z-index: 90;"></div>
			<div class="ui-resizable-handle ui-resizable-ne" style="z-index: 90;"></div>
			<div class="ui-resizable-handle ui-resizable-nw" style="z-index: 90;"></div>
		</div>
		<div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-front ui-draggable ui-resizable" style="display: none; position: fixed;" tabindex="-1" role="dialog" aria-describedby="dialog-import" aria-labelledby="ui-id-10">
			<div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"><span id="ui-id-10" class="ui-dialog-title">导入数据</span><button class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only ui-dialog-titlebar-close" role="button" aria-disabled="false" title="关闭"><span class="ui-button-icon-primary ui-icon ui-icon-closethick"></span><span class="ui-button-text">关闭</span></button></div>
			<div style="" id="dialog-import" class="ui-dialog-content ui-widget-content">
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
			<div class="ui-resizable-handle ui-resizable-se ui-icon ui-icon-gripsmall-diagonal-se" style="z-index: 90;"></div>
			<div class="ui-resizable-handle ui-resizable-sw" style="z-index: 90;"></div>
			<div class="ui-resizable-handle ui-resizable-ne" style="z-index: 90;"></div>
			<div class="ui-resizable-handle ui-resizable-nw" style="z-index: 90;"></div>
		</div>
		<div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-front ui-dialog-buttons ui-draggable ui-resizable" style="display: none; position: fixed;" tabindex="-1" role="dialog" aria-describedby="dialog-field-search" aria-labelledby="ui-id-11">
			<div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"><span id="ui-id-11" class="ui-dialog-title">高级搜索</span><button class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only ui-dialog-titlebar-close" role="button" aria-disabled="false" title="关闭"><span class="ui-button-icon-primary ui-icon ui-icon-closethick"></span><span class="ui-button-text">关闭</span></button></div>
			<div style="" id="dialog-field-search" class="ui-dialog-content ui-widget-content">
				<form class="form-inline" id="searchForm" action="" method="get">
					<div id="search_add" style="width:650px;float:left;">
						<input name="scene_id" value="" type="hidden">
						<input name="content" type="hidden">
						<input name="this_page" value="1" type="hidden">

						<input name="m" value="customer" type="hidden">
						<input name="act" id="act" value="index" type="hidden">
						<input name="daochu" id="daochu" type="hidden">
						<input name="selectexcelxport" id="selectexcelxport" type="hidden">
						<input name="current_page" id="current_page" value="" type="hidden">
						<input name="export_limit" id="export_limit" value="" type="hidden">
						<input name="by" value="me" type="hidden">
						<div id="con_search_1" style="float:left;width:650px;margin:0 10px 0 10px;">
							<ul class="nav pull-left" style="margin:0px 0 0 23px;width:650px;">
								<li class="pull-left">
									<select id="field_1" style="width:auto" class="form-control input-sm field_name new-select" onchange="changeCondition(1)">
										<option class="" value="name">--请选择筛选条件--</option>
										<option class="text" value="name" rel="customer" selected="selected">客户名称</option>
										<option class="datetime" value="nextstep_time" rel="customer">下次联系时间</option>
										<option class="text" value="crm_gxmlcs" rel="customer">车牌号</option>
										<option class="datetime" value="crm_yacitq" rel="customer">到期时间</option>
										<option class="text" value="crm_pcamcq" rel="customer">会员卡号</option>
										<option class="box" value="crm_xdhslk" rel="customer">测试</option>
										<option class="textarea" value="crm_ogcdos" rel="customer">详细地址</option>
										<option class="box" value="grade" rel="customer">客户等级</option>
										<option class="box" value="customer_status" rel="customer">客户状态</option>
										<option class="text" value="crm_ifvtcy" rel="customer">微信</option>
										<option class="box" value="industry" rel="customer">客户行业</option>
										<option class="text" value="crm_jlkgnr" rel="customer">QQ</option>
										<option class="text" value="customer_code" rel="customer">客户单号</option>
										<option class="box" value="origin" rel="customer">销售渠道</option>
										<option class="address" value="address" rel="customer">地址</option>
										<option class="role" value="owner_role_id">负责人</option>
										<option class="date" value="create_time">创建时间</option>
										<option class="date" value="update_time">修改时间</option>
										<option class="text" value="contacts_name">首要联系人姓名</option>
										<option class="mobile" value="contacts_telephone">首要联系人电话</option>
										<!-- <option class="business_status" value="status_id">客户进度</option> -->
									</select>&nbsp;&nbsp;
								</li>
								<li class="pull-left" id="conditionContent_1">
									<select id="condition_1" style="width:auto" class="form-control input-sm new-select" onchange="changeSearch()" name="name[condition]">
										<option value="contains" selected="selected">包含</option>
										<option value="not_contain">不包含</option>
										<option value="is">是</option>
										<option value="isnot">否</option>
										<option value="start_with">开始字符</option>
										<option value="end_with">结束字符</option>
										<option value="is_empty">为空</option>
										<option value="is_not_empty">不为空</option>
									</select>&nbsp;&nbsp;
								</li>
								<li class="pull-left" id="searchContent_1">
									<input id="search_1" style="width:160px;" class="input-medium form-control input-sm search-query" name="name[value]" type="text">&nbsp;&nbsp;
								</li>
							</ul>
						</div>
					</div>
					<div class="clearfix"></div>
					<div style="margin-left: 35px;margin-top:10px;">
						<a href="javascript:void(0);" style="display: -moz-stack;margin: 30px 0px 0px; font-size: 12px; color: rgb(62, 133, 233);" id="add_btn">+添加筛选条件</a>
					</div>
				</form>
			</div>
			<div class="ui-dialog-buttonpane ui-widget-content ui-helper-clearfix">
				<div class="ui-dialog-buttonset"><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">确定</span></button><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">取消</span></button></div>
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
		<div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-front ui-dialog-buttons ui-draggable ui-resizable" style="display: none; position: fixed;" tabindex="-1" role="dialog" aria-describedby="dialog-fenpei" aria-labelledby="ui-id-12">
			<div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"><span id="ui-id-12" class="ui-dialog-title">客户分配</span><button class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only ui-dialog-titlebar-close" role="button" aria-disabled="false" title="关闭"><span class="ui-button-icon-primary ui-icon ui-icon-closethick"></span><span class="ui-button-text">关闭</span></button></div>
			<div style="" id="dialog-fenpei" class="ui-dialog-content ui-widget-content">
				<div class="spiner-example">
					<div class="sk-spinner sk-spinner-three-bounce">
						<div class="sk-bounce1"></div>
						<div class="sk-bounce2"></div>
						<div class="sk-bounce3"></div>
					</div>
				</div>
			</div>
			<div class="ui-dialog-buttonpane ui-widget-content ui-helper-clearfix">
				<div class="ui-dialog-buttonset"><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">确定</span></button><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">取消</span></button></div>
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
		<div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-front ui-dialog-buttons ui-draggable ui-resizable" style="display: none; position: fixed;" tabindex="-1" role="dialog" aria-describedby="dialog-remind" aria-labelledby="ui-id-13">
			<div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"><span id="ui-id-13" class="ui-dialog-title">提醒</span><button class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only ui-dialog-titlebar-close" role="button" aria-disabled="false" title="关闭"><span class="ui-button-icon-primary ui-icon ui-icon-closethick"></span><span class="ui-button-text">关闭</span></button></div>
			<div style="" id="dialog-remind" class="ui-dialog-content ui-widget-content">
				<div class="spiner-example">
					<div class="sk-spinner sk-spinner-three-bounce">
						<div class="sk-bounce1"></div>
						<div class="sk-bounce2"></div>
						<div class="sk-bounce3"></div>
					</div>
				</div>
			</div>
			<div class="ui-dialog-buttonpane ui-widget-content ui-helper-clearfix">
				<div class="ui-dialog-buttonset"><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">确定</span></button><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">取消</span></button></div>
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
		<div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-front ui-dialog-buttons ui-draggable ui-resizable" style="display: none; position: fixed;" tabindex="-1" role="dialog" aria-describedby="dialog-remind_view" aria-labelledby="ui-id-14">
			<div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"><span id="ui-id-14" class="ui-dialog-title">提醒内容</span><button class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only ui-dialog-titlebar-close" role="button" aria-disabled="false" title="关闭"><span class="ui-button-icon-primary ui-icon ui-icon-closethick"></span><span class="ui-button-text">关闭</span></button></div>
			<div style="" id="dialog-remind_view" class="ui-dialog-content ui-widget-content">
				<div class="spiner-example">
					<div class="sk-spinner sk-spinner-three-bounce">
						<div class="sk-bounce1"></div>
						<div class="sk-bounce2"></div>
						<div class="sk-bounce3"></div>
					</div>
				</div>
			</div>
			<div class="ui-dialog-buttonpane ui-widget-content ui-helper-clearfix">
				<div class="ui-dialog-buttonset"><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">删除</span></button><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">取消</span></button></div>
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
		<div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-front ui-dialog-buttons ui-draggable ui-resizable" style="display: none; position: fixed;" tabindex="-1" role="dialog" aria-describedby="dialog-assign" aria-labelledby="ui-id-15">
			<div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"><span id="ui-id-15" class="ui-dialog-title">客户分配</span><button class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only ui-dialog-titlebar-close" role="button" aria-disabled="false" title="关闭"><span class="ui-button-icon-primary ui-icon ui-icon-closethick"></span><span class="ui-button-text">关闭</span></button></div>
			<div style="" id="dialog-assign" class="ui-dialog-content ui-widget-content">
				<div class="spiner-example">
					<div class="sk-spinner sk-spinner-three-bounce">
						<div class="sk-bounce1"></div>
						<div class="sk-bounce2"></div>
						<div class="sk-bounce3"></div>
					</div>
				</div>
			</div>
			<div class="ui-dialog-buttonpane ui-widget-content ui-helper-clearfix">
				<div class="ui-dialog-buttonset"><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">确定</span></button><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">取消</span></button></div>
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
		<div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-front ui-dialog-buttons ui-draggable ui-resizable" style="display: none; position: fixed;" tabindex="-1" role="dialog" aria-describedby="dialog-addbusiness" aria-labelledby="ui-id-16">
			<div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"><span id="ui-id-16" class="ui-dialog-title">添加商机</span><button class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only ui-dialog-titlebar-close" role="button" aria-disabled="false" title="关闭"><span class="ui-button-icon-primary ui-icon ui-icon-closethick"></span><span class="ui-button-text">关闭</span></button></div>
			<div style="" id="dialog-addbusiness" class="ui-dialog-content ui-widget-content">
				<div class="spiner-example">
					<div class="sk-spinner sk-spinner-three-bounce">
						<div class="sk-bounce1"></div>
						<div class="sk-bounce2"></div>
						<div class="sk-bounce3"></div>
					</div>
				</div>
			</div>
			<div class="ui-dialog-buttonpane ui-widget-content ui-helper-clearfix">
				<div class="ui-dialog-buttonset"><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">确定</span></button><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">取消</span></button></div>
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
		<div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-front ui-dialog-buttons ui-draggable ui-resizable" style="display: none; position: fixed;" tabindex="-1" role="dialog" aria-describedby="dialog-addproduct" aria-labelledby="ui-id-17">
			<div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"><span id="ui-id-17" class="ui-dialog-title">添加商机</span><button class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only ui-dialog-titlebar-close" role="button" aria-disabled="false" title="关闭"><span class="ui-button-icon-primary ui-icon ui-icon-closethick"></span><span class="ui-button-text">关闭</span></button></div>
			<div style="" id="dialog-addproduct" class="ui-dialog-content ui-widget-content">
				<div class="spiner-example">
					<div class="sk-spinner sk-spinner-three-bounce">
						<div class="sk-bounce1"></div>
						<div class="sk-bounce2"></div>
						<div class="sk-bounce3"></div>
					</div>
				</div>
			</div>
			<div class="ui-dialog-buttonpane ui-widget-content ui-helper-clearfix">
				<div class="ui-dialog-buttonset"><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">确定</span></button><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">取消</span></button></div>
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
		<div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-front ui-dialog-buttons ui-draggable ui-resizable" style="display: none; position: fixed;" tabindex="-1" role="dialog" aria-describedby="dialog-excelexport" aria-labelledby="ui-id-18">
			<div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"><span id="ui-id-18" class="ui-dialog-title">导出客户</span><button class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only ui-dialog-titlebar-close" role="button" aria-disabled="false" title="关闭"><span class="ui-button-icon-primary ui-icon ui-icon-closethick"></span><span class="ui-button-text">关闭</span></button></div>
			<div style="" id="dialog-excelexport" class="ui-dialog-content ui-widget-content">
				<div class="spiner-example">
					<div class="sk-spinner sk-spinner-three-bounce">
						<div class="sk-bounce1"></div>
						<div class="sk-bounce2"></div>
						<div class="sk-bounce3"></div>
					</div>
				</div>
			</div>
			<div class="ui-dialog-buttonpane ui-widget-content ui-helper-clearfix">
				<div class="ui-dialog-buttonset"><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">确定</span></button><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">取消</span></button></div>
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
		<script src="js/jquery_002.js" type="text/javascript"></script>
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
			<div id="ascrail2001" class="nicescroll-rails nicescroll-rails-vr" style="width: 10px; z-index: 100; background: rgb(243, 243, 245) none repeat scroll 0% 0%; cursor: default; position: absolute; top: 0px; left: -10px; height: 355px; opacity: 0.4; display: none;">
				<div style="position: relative; top: 0px; float: right; width: 10px; height: 0px; background-color: rgb(153, 153, 153); border: 0px none; background-clip: padding-box; border-radius: 3px;" class="nicescroll-cursors"></div>
			</div>
			<div id="ascrail2001-hr" class="nicescroll-rails nicescroll-rails-hr" style="height: 10px; z-index: 100; background: rgb(243, 243, 245) none repeat scroll 0% 0%; top: 345px; left: 0px; position: absolute; opacity: 0.4; cursor: default; display: none;">
				<div style="position: absolute; top: 0px; height: 10px; width: 0px; background-color: rgb(153, 153, 153); border: 0px none; background-clip: padding-box; border-radius: 3px;" class="nicescroll-cursors"></div>
			</div>
		</div>
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
								temp += '<img alt="头像" style="height:38px;width:38px" class="img-circle" src="img/avatar_default.png" />';
							}
							temp += '<small class="chat-date"></small>\
                        </div>\
                            <div class="chat-message right_chat-message">' + question + '</div>\
                        </div>';
							$.each(data.data, function(k, v) {
								temp += '<div class="left">\
                                    <div class="author-name">\
                                        <img alt="头像" style="height:32px;width:32px" class="img-circle" src="img/wukong.png">\
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
								temp += '<img alt="头像" style="height:38px;width:38px" class="img-circle" src="img/avatar_default.png" />';
							}
							temp += '<small class="chat-date"></small>\
                        </div>\
                            <div class="chat-message right_chat-message">' + question + '</div>\
                        </div>';
							temp += '<div class="left">\
                        <div class="author-name">\
                            <img alt="头像" style="height:32px;width:32px" class="img-circle" src="img/wukong.png">\
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
							temp += '<img alt="头像" style="height:38px;width:38px" class="img-circle" src="img/avatar_default.png" />';
						}
						temp += '<small class="chat-date"></small>\
                    </div>\
                        <div class="chat-message right_chat-message">' + question + '</div>\
                    </div>';
						temp += '<div class="left">\
                    <div class="author-name">\
                        <img alt="头像" style="height:32px;width:32px" class="img-circle" src="img/wukong.png">\
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
		<div class="modal inmodal fade" id="call_list" aria-hidden="true" aria-labelledby="call_list" role="dialog" tabindex="-1" style="overflow:auto; border:1px solid #000000;">
			<div class="modal-dialog">
				<div class="modal-content" id="call_modal">
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
						<iframe id="NoPermissioniframe" width="100%" height="100%" frameborder="0"></iframe>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关  闭</button>
					</div>
				</div>
			</div>
		</div>
		<div id="ascrail2000" class="nicescroll-rails nicescroll-rails-vr" style="width: 10px; z-index: 100; background: rgb(243, 243, 245) none repeat scroll 0% 0%; cursor: default; position: absolute; top: 137.617px; left: 1499.8px; height: 577px; opacity: 0.4; display: block;">
			<div style="position: relative; top: 0px; float: right; width: 10px; height: 462px; background-color: rgb(153, 153, 153); border: 0px none; background-clip: padding-box; border-radius: 3px;" class="nicescroll-cursors"></div>
		</div>
		<div id="ascrail2000-hr" class="nicescroll-rails nicescroll-rails-hr" style="height: 10px; z-index: 100; background: rgb(243, 243, 245) none repeat scroll 0% 0%; top: 704.617px; left: 95.8px; position: absolute; opacity: 0.4; cursor: default; display: block; width: 1404px;">
			<div style="position: absolute; top: 0px; height: 10px; width: 1199px; background-color: rgb(153, 153, 153); border: 0px none; background-clip: padding-box; border-radius: 3px; left: 0px;" class="nicescroll-cursors"></div>
		</div>
	</body>

</html>