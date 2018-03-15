<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<title>合同查看</title>
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
				<ul style="list-style: outside none none; padding: 10px;">
					<li class="($vo[" type ']}'="" style="line-height: 18px; display: block; margin-bottom: 8px;"><i style="display: inline-block; float: left; width: 18px; height: 18px; text-align: center; border: 1px solid rgb(204, 204, 204); border-radius: 100%; font-size: 12px; font-style: normal; line-height: 18px; margin-right: 8px; color: rgb(255, 255, 255); background: rgb(0, 136, 204) none repeat scroll 0% 0%;">合</i>
						<a href="http://demo2.5kcrm.net/index.php?m=contract&amp;a=view&amp;id=300">测试合同1111</a>
					</li>
				</ul>
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
							<a data-toggle="tooltip" data-placement="right" data-original-title="客户管理" href="kehuguanli.htm"><i class="fa fa-user"></i></a>
						</li>
						<li>
							<a data-toggle="tooltip" data-placement="right" data-original-title="商机管理" href="shangjiguanli.htm"><i class="fa fa-suitcase"></i></a>
						</li>
						<li>
							<a data-toggle="tooltip" data-placement="right" data-original-title="产品管理" href="chanpinguanli.htm"><i class="fa fa-inbox"></i></a>
						</li>
						<li>
							<a data-toggle="tooltip" data-placement="right" data-original-title="合同订单" class="active" href="hetong.htm"><i class="fa fa-file-text"></i></a>
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
							<li class="active">
								<a href="http://demo2.5kcrm.net/index.php?m=contract&amp;a=index"><span class="fa fa-list-alt" style="display:inline"></span>&nbsp;&nbsp;合同</a>
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
									<img src="img/bell.png" alt=""><span class="label label-primary" id="message_num">26</span>
								</a>
								<ul class="dropdown-menu dropdown-alerts" style="width:365px;">
									<li class="list-group" role="presentation" id="message_group" style="height: 220px;">
										<div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 100%;">
											<div class="full-height-scroll" id="message_list" data-height="220px" data-plugin="slimScroll" style="overflow: hidden; width: auto; height: 100%;">
												<a href="http://demo2.5kcrm.net/index.php?m=message&amp;a=index" style="width:100%;color:#676a6c;padding:5px !important;border-bottom:1px dashed #ddd;float:left;margin-bottom:5px;">
													<div style="padding:0 10px;"> <img src="img/wukong.png" title="悟空小助手"> 您有<strong>26</strong>条消息待查看 <span class="pull-right text-muted small" style="line-height:30px;">1分钟7秒前</span> </div>
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
				<div class="wrapper wrapper-content animated fadeIn">
					<div class="row">
						<div class="col-lg-12">
							<div class="title-bar">
								<div class="row " id="title-show">
									<ul class="nav pull-left" style="margin:0px 10px 0px 20px;">
										<span>
							<img src="img/contract_view_icon.png" style="margin-bottom:9px;" alt="">
						</span>
										<span style="font-size:21px;margin-left:5px">&nbsp;&nbsp;&nbsp;aaaa20180314-0300</span>&nbsp;&nbsp;
										<span class="badge badge-success check_badge" style="padding:5px 20px;margin-top:-8px;background:#8BC34A;color:#fff;">通过</span>&nbsp;
									</ul>

									<a href="javascript:void(0);" id="recheck_contract" style="margin-right:15px;" rel="300" class="btn btn-primary pull-right">撤销</a>
								</div>
							</div>
							<div class="tabs-container">
								<div class="pull-left" style="width:62%;">
									<div class="ibox-content" style="padding: 15px 0px 0px 20px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; min-height: 492.48px;" id="left-content">
										<ul class="nav nav-tabs" id="left_list" style="height:40px;">
											<li class="active">
												<a href="#tab1" data-toggle="tab" type="tab1">基本信息</a>
											</li>
											<li>
												<a href="#tab2" data-toggle="tab" type="tab2">产品信息</a>
											</li>
											<li>
												<a href="#tab3" data-toggle="tab" type="tab3">合同附件</a>
											</li>
											<li>
												<a href="#tab4" data-toggle="tab" type="tab4">发票信息</a>
											</li>
											<li>
												<a href="#tab5" data-toggle="tab" type="tab5">沟通日志</a>
											</li>
											<li>
												<a href="#tab6" data-toggle="tab" type="tab6">签约历史</a>
											</li>
										</ul>
										<div class="tab-content ">
											<div class="tab-pane in active" id="tab1">
												<div class="panel-body">
													<div style="font-size:13px;font-weight:700;margin:15px auto;">
														<span style="border-left:5px solid #19AA8D;padding-left:10px;height:10px;"></span>基本信息
													</div>
													<div class="form-horizontal view-group ">
														<div class="form-group">
															<label class="col-lg-2 control-label">合同编号</label>
															<div class="col-lg-4">
																<p class="form-p">
																	aaaa20180314-0300 </p>
															</div>
															<label class="col-lg-2 control-label">合同名称</label>
															<div class="col-lg-4">
																<p class="form-p">
																	测试合同1111
																</p>
															</div>
														</div>
														<div class="form-group">
															<label class="col-lg-2 control-label">签约时间</label>
															<div class="col-lg-4">
																<p class="form-p">
																	2018-03-14 </p>
															</div>
															<label class="col-lg-2 control-label">合同签约人</label>
															<div class="col-lg-4">
																<p class="form-p">
																	<a href="javascript:void(0)" rel="1" class="role_info">邹总</a>
																</p>
															</div>
														</div>
														<div class="form-group">
															<label class="col-lg-2 control-label">创建时间</label>
															<div class="col-lg-4">
																<p class="form-p">
																	2018-03-14 </p>
															</div>
															<label class="col-lg-2 control-label">合同创建人</label>
															<div class="col-lg-4">
																<p class="form-p">
																	<a href="javascript:void(0)" rel="1" class="role_info">邹总</a>
																</p>
															</div>
														</div>
														<div class="form-group"> <label class="col-sm-2 control-label">知识产权</label>
															<div class="col-sm-4">
																<p class="form-p">
																	<span style="color:#333333">
					                                        					                      
                      乙方					                                    </span>
																</p>
															</div>

															<label class="col-sm-2 control-label">客户</label>
															<div class="col-sm-4">
																<p class="form-p">
																	<span style="color:#">
					                                        					                                            <a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=738">测试</a>
					                                        					                                    </span>
																</p>
															</div>
														</div>
														<div class="form-group"> <label class="col-sm-2 control-label">商机</label>
															<div class="col-sm-4">
																<p class="form-p">
																	<span style="color:#">
					                                        					                                            <a href="http://demo2.5kcrm.net/index.php?m=business&amp;a=view&amp;id=0"></a>
					                                        					                                    </span>
																</p>
															</div>

															<label class="col-sm-2 control-label">合同金额(元)</label>
															<div class="col-sm-4">
																<p class="form-p">
																	<span style="color:#">
					                                        					                      
                      500.00					                                    </span>
																</p>
															</div>
														</div>
														<div class="form-group"> <label class="col-sm-2 control-label">合同生效时间</label>
															<div class="col-sm-4">
																<p class="form-p">
																	<span style="color:#">
					                                        2018-03-14					            
                            					                                    </span>
																</p>
															</div>

															<label class="col-sm-2 control-label">合同到期时间</label>
															<div class="col-sm-4">
																<p class="form-p">
																	<span style="color:#">
					                                        2019-03-14					            
                            					                                    </span>
																</p>
															</div>
														</div>
														<div class="form-group">
															<label class="col-sm-2 control-label">合同描述</label>
															<div class="col-sm-10">
																<p class="form-p color-a-edit">
																	<span style="color:#333333"></span>
																</p>
															</div>
														</div>
													</div>
													<div style="font-size:13px;font-weight:700;margin-top:20px;margin-bottom:15px;">
														<span style="border-left:5px solid #19AA8D;padding-left:10px;height:10px;"></span>审核信息
													</div>
													<div>
														<div class="pull-left">
															<img src="img/thumb_5aa5ec505c63c2291.png" style="width:45px;height:45px;margin:10px 0 0 10px;border-radius:50px;">
														</div>
														<div class="pull-left" style="margin:10px 0 0 10px;">
															<div class="control-label" style="margin-top:2px;font-size:14px;color:#B4B1C2">
																<a href="javascript:void(0)" rel="1" class="role_info" style="color: #B4B1C2;">邹总</a>
															</div>
															<div class="control-label" style="margin-top:2px;font-size:13px;">2018-03-14 18:21</div>
														</div>

														<div class="pull-left" style="margin-left:10px;margin-top:25px;">
															<span class="fa fa-circle" style="color:#B4B1C2;font-size:12px;"></span>
															<span class="fa fa-circle" style="color:#B4B1C2;font-size:12px;"></span>
															<span class="fa fa-circle" style="color:#B4B1C2;font-size:12px;"></span>
														</div>
														<div class="pull-left" style="margin-left:10px;">
															<img src="img/thumb_5979b8e6a01f12600.png" style="width:45px;height:45px;margin:10px 0 0 10px;border-radius:50px;">
														</div>
														<div class="pull-left" style="margin:10px 0 0 10px;">
															<div class="control-label" style="margin-top:2px;font-size:14px;color:#B4B1C2">
																<a href="javascript:void(0)" rel="14" class="role_info" style="color: #B4B1C2;">张天航</a>
															</div>
															<div class="control-label check_badge" style="margin-top:2px;font-size:13px;">
																<span style="color:#19AA8D">通过</span>
															</div>
														</div>
														<div class="pull-left" style="margin-left:10px;margin-top:25px;">
															<span class="fa fa-circle" style="color:#B4B1C2;font-size:12px;"></span>
															<span class="fa fa-circle" style="color:#B4B1C2;font-size:12px;"></span>
															<span class="fa fa-circle" style="color:#B4B1C2;font-size:12px;"></span>
														</div>
														<div class="pull-left" style="margin-left:10px;">
															<img src="img/thumb_5966df46a87c62526.png" style="width:45px;height:45px;margin:10px 0 0 10px;border-radius:50px;">
														</div>
														<div class="pull-left" style="margin:10px 0 0 10px;">
															<div class="control-label" style="margin-top:2px;font-size:14px;color:#B4B1C2">
																<a href="javascript:void(0)" rel="11" class="role_info" style="color: #B4B1C2;">韩生</a>
															</div>
															<div class="control-label check_badge" style="margin-top:2px;font-size:13px;">
																<span style="color:#19AA8D">通过</span>
															</div>
														</div>
														<div class="pull-left" style="margin-left:10px;margin-top:25px;">
															<span class="fa fa-circle" style="color:#B4B1C2;font-size:12px;"></span>
															<span class="fa fa-circle" style="color:#B4B1C2;font-size:12px;"></span>
															<span class="fa fa-circle" style="color:#B4B1C2;font-size:12px;"></span>
														</div>
														<div class="pull-left" style="margin-left:10px;">
															<img src="img/thumb_5966df737db009289.png" style="width:45px;height:45px;margin:10px 0 0 10px;border-radius:50px;">
														</div>
														<div class="pull-left" style="margin:10px 0 0 10px;">
															<div class="control-label" style="margin-top:2px;font-size:14px;color:#B4B1C2">
																<a href="javascript:void(0)" rel="12" class="role_info" style="color: #B4B1C2;">刘德华</a>
															</div>
															<div class="control-label check_badge" style="margin-top:2px;font-size:13px;">
																<span style="color:#19AA8D">通过</span>
															</div>
														</div>
														<div style="clear:both"></div>
													</div>
													<div style="margin-top:20px;margin-left:15px;">
														<a href="javascript:void(0);" id="check_list"><i class="fa fa-history"></i>&nbsp;&nbsp;查看合同审核历史</a>
													</div>
												</div>
											</div>
											<div class="tab-pane" id="tab2">
												<div class="panel-body" style="padding-left:0px;">
													<table class="table table-bordered" id="no-input-border" width="95%" cellspacing="1" cellpadding="0" border="0">
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
														</tbody>
													</table>
													<div style="text-align:center;margin-top:10px;">
														<div class="pull-right">销售订单金额(元) :<span style="color:#FF9900;">&nbsp;500.00</span></div>&nbsp;&nbsp;
														<div class="pull-right">整单折扣(%) :<span style="color:#999;">&nbsp;0.00&nbsp;&nbsp;&nbsp;&nbsp;</span></div>
														<div class="pull-right">产品合计(元) :<span style="color:#999;">&nbsp;500.00&nbsp;&nbsp;&nbsp;&nbsp;</span></div>&nbsp;&nbsp;
														<div class="pull-right"><i class="fa fa-bookmark" style="color: #19aa8d;"></i>&nbsp;相关商机:<span style="color:#999;">&nbsp;&nbsp;</span></div>&nbsp;&nbsp;
													</div>
												</div>
											</div>
											<div class="tab-pane" id="tab3">
												<div class="panel-body">
													<div class="header1">
														<div class="pull-right">
															<a href="javascript:void(0);" type="button" class="add_file btn btn-primary"><i class="fa fa-upload"></i>&nbsp;&nbsp;上传</a>
														</div>
														<div style="clear:both;"></div>
													</div>
													<div style="text-align:center;color:#E4E4E4;font-size:22px;font-weight:700;padding-top:15px;">
														<img src="img/exclamation_mark.png" style="margin-top:-3px;">&nbsp;&nbsp;暂无数据
													</div>
												</div>
											</div>
											<div class="tab-pane" id="tab4">
												<div class="panel-body" style="padding-left:0px;">
													<div class="header1">
														<div class="pull-right">
															<a href="http://demo2.5kcrm.net/index.php?m=invoice&amp;a=add&amp;contract_id=300" class="btn btn-primary"><i class="fa fa-plus-circle"></i>&nbsp;&nbsp;添加发票</a>
														</div>
														<div style="clear:both;"></div>
													</div>
												</div>
											</div>
											<div class="tab-pane" id="tab5">
												<div class="panel-body">
													<div id="form-div">
														<form id="add-form" action="/index.php?m=log&amp;a=add" method="post">
															<input name="r" value="rContractLog" type="hidden">
															<input name="module" value="contract" type="hidden">
															<input name="id" value="300" type="hidden">
															<textarea name="content" placeholder="添加跟进记录" id="log-text" style="resize:none;" class="form-control" cols="30" rows="1"></textarea>
															<div>
																<div class="text-right" id="log-btn" style="padding-top:8px;display:none;">
																	<button class="btn btn-primary" id="add_log" type="button">添加</button>&nbsp;
																</div>
																<br>
															</div>
														</form>
													</div>
													<div id="log-list">
														<div class="ibox-content gray-log" log-rel="932">
															<div class="social-feed-separated clearfix">
																<div class="social-feed-box">
																	<div class="pull-right social-action dropdown">
																		<span data-toggle="dropdown" class="dropdown-toggle">
							                                    <i style="font-size:20px;cursor:pointer" class="fa fa-angle-down"></i>
							                                </span>
																		<ul class="dropdown-menu m-t-xs">
																			<li>
																				<a rel="932" href="javascript:void(0);" type="rContractLog" onclick="del_confirm(this);">删除</a>
																			</li>
																		</ul>
																	</div>
																	<div class="social-avatar">
																		<img alt="image" style="width:35px;height:35px;" class="img-circle" src="img/thumb_5aa5ec505c63c2291.png">
																		<a class="role_info name-colors" rel="1" href="javascript:void(0);">邹总</a>&nbsp;&nbsp;
																		<span class="text-muted">发布了一条快速记录</span>&nbsp;&nbsp;&nbsp;
																		<span class="text-muted">2018-03-14  18:23&nbsp;&nbsp;<a title="沟通类型" href="javascript:void(0);"></a></span>
																	</div>
																	<div class="social-body">
																		<span style="word-wrap:break-word;line-height: 21px;color: #000;">沟通2</span>
																	</div>
																</div>
															</div>
														</div>
														<div class="ibox-content gray-log" log-rel="931">
															<div class="social-feed-separated clearfix">
																<div class="social-feed-box">
																	<div class="pull-right social-action dropdown">
																		<span data-toggle="dropdown" class="dropdown-toggle">
							                                    <i style="font-size:20px;cursor:pointer" class="fa fa-angle-down"></i>
							                                </span>
																		<ul class="dropdown-menu m-t-xs">
																			<li>
																				<a rel="931" href="javascript:void(0);" type="rContractLog" onclick="del_confirm(this);">删除</a>
																			</li>
																		</ul>
																	</div>
																	<div class="social-avatar">
																		<img alt="image" style="width:35px;height:35px;" class="img-circle" src="img/thumb_5aa5ec505c63c2291.png">
																		<a class="role_info name-colors" rel="1" href="javascript:void(0);">邹总</a>&nbsp;&nbsp;
																		<span class="text-muted">发布了一条快速记录</span>&nbsp;&nbsp;&nbsp;
																		<span class="text-muted">2018-03-14  18:22&nbsp;&nbsp;<a title="沟通类型" href="javascript:void(0);"></a></span>
																	</div>
																	<div class="social-body">
																		<span style="word-wrap:break-word;line-height: 21px;color: #000;">沟通1</span>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="tab-pane" id="tab6">
												<div class="panel-body" style="padding-left:0px;">
													<div class="header1">
														<div class="pull-right">
															<a href="http://demo2.5kcrm.net/index.php?m=contract&amp;a=add&amp;old_contract_id=300" class="btn btn-primary"><i class="fa fa-plus-circle"></i>&nbsp;&nbsp;续约</a>
														</div>
														<div style="clear:both;"></div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="pull-right" style="width:37%;margin-left:0px;margin-bottom: 10px;">
									<div class="back_box bg_border ibox-content" id="right-content" style="padding: 10px; background: rgb(255, 255, 255) none repeat scroll 0% 0%; margin-bottom: 10px; width: 100%; min-height: 492.48px;">
										<div style="border-bottom: 1px solid #e7eaec;padding-bottom:10px;">
											<i style="font-size:18px;padding-left:10px;margin-top:2px;color:#B4B1C2" class="fa fa-cny"></i>
											<span style="padding:10px 20px 5px 10px;font-size:16px;">应收款</span>
											<a href="javascript:void(0);" class="pull-right" id="add_yingshou" title="添加应收款" style="padding-right:10px;margin-top:5px;">
												<i class="fa fa-plus" style="font-size:20px;color:#B4B1C2"></i>
											</a>
										</div>
										<div style="font-size:16px;margin:10px 5px;">合计：500.00&nbsp;元 / <span style="color:#FB8C57">未收款:  0.00&nbsp;元</span></div>
										<div style="border-top:1px dashed #ccc;width:100%;margin-top:10px;">
											<a style="color:#000;font-size:13px;width:92%;float:left;" href="http://demo2.5kcrm.net/index.php?m=finance&amp;a=view&amp;t=receivables&amp;id=339">
												<div class="pull-left" style="margin:10px 3px 10px 5px;width:35%;">
													<span style="border-left:5px solid #19AA8D;padding-right:8px;height:10px;"></span>应收 :&nbsp;500.00&nbsp;元
												</div>
												<div class="pull-left" style="margin:10px 0px;width:35%;">实际 :&nbsp;500&nbsp;元</div>
												<div class="pull-left" style="margin:10px 0px;width:20%;color:#b5b5b5">&nbsp;2018-03-14</div>
											</a>
											<a href="javascript:void(0);" class="pull-right add_receivingorder" rel="339" title="添加回款" style="padding-right:10px;margin-top:10px;"><i class="fa fa-plus" style="font-size:16px;color:#B4B1C2"></i>
											</a>
											<div style="clear:both;"></div>
											<div style="padding-bottom:8px;margin: 10px 0 0 15px;margin-left:1px;width:100%;">
												<div class="pull-left" style="width:35%;color:#000">
													<span style="margin-left:20px;">2018/03/14</span>
												</div>
												<div class="pull-left" style="width:35%;color:#000">
													收款 : 500.00&nbsp;元
												</div>
												<div class="pull-left" style="width:20%;">
													<span style="color:green">已通过</span>
												</div>
												<div class="pull-left" style="width:10%;margin-top:-10px;">
													<span class="dropdown">
													<span class="dropdown-toggle fa-stack fa-lg" data-toggle="dropdown" style="cursor:pointer;height:3rem;color:#8FA1B2">
														<i class="fa fa-angle-down" style="margin-left:12px;"></i>
													</span>
													<ul class="dropdown-menu">
														<li>
															<a href="http://demo2.5kcrm.net/index.php?m=finance&amp;a=view&amp;t=receivingorder&amp;id=297">详情</a>
														</li>
														<li>
															<a href="http://demo2.5kcrm.net/index.php?m=finance&amp;a=edit&amp;t=receivingorder&amp;id=297">编辑</a>
														</li>
														<li>
															<a href="javascript:void(0);" rel="297" class="not_rel_contacts">删除</a>
														</li>
													</ul>
													</span>
												</div>
												<div style="clear:both;"></div>
											</div>
										</div>
									</div>
								</div>
								<div style="clear:both;"></div>
							</div>
						</div>
					</div>
				</div>

				<link href="css/litebox.css" rel="stylesheet" type="text/css">
				<script src="js/litebox.js" type="text/javascript"></script>
				<script src="js/images-loaded.js" type="text/javascript"></script>
				<script type="text/javascript" src="contract-read_files/api"></script>
				<script type="text/javascript" src="contract-read_files/getscript"></script>
				<script type="text/javascript">
					// 页面加载时执行Tab start
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
						var contract_id = "300";;
						var url = "/index.php?m=contract&a=view&id=" + contract_id + maodian;
						window.history.replaceState({}, 0, 'http://' + window.location.host + url);
					}

					var is_receivables = '1';
					$('#is_agree').change(function() {
						var agree_id = $(this).val();
						if(agree_id == 1) {
							$('.is_show').show();
							if(is_receivables == 0 || is_receivables == '') {
								$('#pay_times').hide();
							}
						} else {
							$('.is_show').hide();
						}
					});
					$('.openrecycle').click(function() {
						var is_receivables = $("input[name='is_receivables']:checked").val();
						if(is_receivables == 1) {
							$('#pay_times').show();
						} else {
							$('#pay_times').hide();
						}
					});
					//审核合同
					$("#check_contract").click(function() {
						var id = $(this).attr('rel');
						$('#dialog-check-contract').dialog('open');
						$('#dialog-check-contract').load('/index.php?m=contract&a=check&contract_id=' + id);
					});
					$("#dialog-check-contract").dialog({
						autoOpen: false,
						modal: true,
						width: 444,
						maxHeight: 450,
						position: ["center", 100],
						buttons: {
							"确定": function() {
								var is_agree = $('#is_agree').val();
								var openrecycle2 = $('#openrecycle2:checked').val();
								var examine_role_id = $('#examine_role_id').val();
								if(is_agree == 1 && openrecycle2 == 1) {
									if(examine_role_id == '') {
										alert_crm('请选择下一审批人！');
										return false;
									}
								}
								$('#contract_dialog').submit();
								$(this).dialog("close");
							},
							"取消": function() {
								$(this).dialog("close");
							}
						}
					});
					//撤销审核
					$("#recheck_contract").click(function() {
						var id = $(this).attr('rel');
						swal({
								title: "确定要撤销审核吗？",
								type: "warning",
								showCancelButton: true,
								confirmButtonColor: "#DD6B55",
								confirmButtonText: "确定",
								closeOnConfirm: false
							},
							function() {
								window.location.href = "/index.php?m=contract&a=revokeCheck&id=" + id;
							});
					});

					/**
					 * 如果是图片时 双击可查看大图
					 */
					$('.litebox_file').liteBox({
						revealSpeed:  400,
						background:   'rgba(0,0,0,.8)',
						overlayClose:  true,
						escKey:  true,
						navKey:  true,
						errorMessage:   '图片加载失败.'
					});
					var pm_heigth = window.screen.height * 0.57;
					var right_heigth = window.screen.height * 0.57;
					$('#left-content').css('min-height', pm_heigth + 'px');
					$('#right-content').css('min-height', right_heigth + 'px');
					$(".check_badge").hover(function() {
						$(this).find('.control').toggle();
					});

					$("#dialog-receivables_plan").dialog({
						autoOpen: false,
						modal: true,
						width: 700,
						maxHeight: 500,
						position: ["center", 100],
					});
					$("#dialog-return-sales").dialog({
						autoOpen: false,
						modal: true,
						width: 800,
						maxHeight: 500,
						position: ["center", 100],
					});
					$("#dialog-check-list").dialog({
						autoOpen: false,
						modal: true,
						width: 600,
						maxHeight: 400,
						position: ["center", 100],
					});
					$(function() {
						$("#check_list").click(function() {
							$('#dialog-check-list').dialog('open');
							$('#dialog-check-list').load('/index.php?m=contract&a=check_list&id=300');
						});
					});
					//删除回款单
					$('.not_rel_contacts').click(function() {
						var receivingorder_id = $(this).attr('rel');
						if(receivingorder_id == 0) {
							alert_crm('您没有选择任何回款单！');
							return false;
						}
						swal({
								title: "您确定要删除这条信息吗？",
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
										url: "/index.php?m=finance&a=delete&t=receivingorder",
										data: {
											id: receivingorder_id,
											t: 'receivingorder'
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

					/*跟进记录*/
					function btnHide() {
						$('#log-text').attr('rows', 1);
						$('#log-btn').hide();
						$('#product-radio').hide();
						$('#log-text').val('');
					}
					$('#log-text').focus(function() {
						$(this).attr('rows', 4);
						$('#log-btn').show();
						$('#product-radio').show();
						$('#add_log').prop('disabled', false);
					});
					$('#log-text').focusout(function() {
						var code_id = $("input[name='id']:checked").val();
						if($(this).val() == '' && code_id == '') {
							btnHide();
						}
					});
					$('#quxiao').click(function() {
						btnHide();
						return false;
					});
					/*ajax 提交记录*/
					$('#add_log').click(function() {
						var log_type = 'rContractLog';
						$(this).prop('disabled', true);
						$.post("/index.php?m=log&a=add", $("#add-form").serialize(), function(data) {
							if(data.status == 1) {
								var content = $('#log-text').val().replace('&nbsp', '&NBSP');
								var log_html = "<div class='ibox-content gray-bg' log-rel='" + data.data.log_id + "' style='margin-bottom: 18px'><div class='social-feed-separated clearfix'><div class='social-feed-box'><div class='pull-right social-action dropdown'><span data-toggle='dropdown' class='dropdown-toggle'><i style='font-size:20px;cursor:pointer' class='fa fa-angle-down'></i></span><ul class='dropdown-menu m-t-xs' ><li><a  rel='" + data.data.log_id + "' href='javascript:void(0);' type='" + log_type + "' onclick='del_confirm(this);'>删除</a></li></ul></div><div class='social-avatar'><img alt='image' style='width:35px;height:35px;' class='img-circle' src='" + data.data.owner.thumb_path + "'><a class='role_info name-colors'  rel='" + data.data.owner.role_id + "' href='javascript:void(0)'>" + data.data.owner.full_name + "</a>&nbsp;&nbsp;<span class='text-muted'>添加了一条快快速记录</span>&nbsp;&nbsp;<span class='text-muted' >" + data.data.date + "</span></div><div class='social-body'><span style='word-wrap:break-word;line-height: 21px;color: #000;'>" + content + "</span></div></div></div></div>";
								$('#log-list').prepend(log_html);
								btnHide();
							} else {
								alert_crm('添加失败, 请重试');
							}
						});
					});
					/*删除日志*/
					function del_confirm(e) {
						swal({
								title: "确定要删除沟通日志吗？",
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
									var log_id = $(e).attr('rel');
									var type = $(e).attr('type');
									$.get("/index.php?m=log&a=delete", {
										r: type,
										id: log_id
									}, function(data) {
										if(data != 0) {
											swal({
												title: "删除成功！",
												text: "",
												type: "success"
											});
											$("[log-rel='" + log_id + "']").remove();
										} else {
											swal({
												title: "操作失败！",
												text: data.info,
												type: "error"
											})
											return false;
										}
									});
								} else {
									swal("已取消", "您取消了删除操作！", "error");
								}
							});
					};
				</script>
				<script>
					if("" == "1") {
						width = $('.container').width() * 0.9;
					} else {
						width = 800;
					}

					$("#dialog-role-info").dialog({
						autoOpen: false,
						modal: true,
						width: 650,
						maxHeight: 600,
						position: ["center", 100]
					});
					$("#dialog-receivables").dialog({
						autoOpen: false,
						modal: true,
						width: width,
						maxHeight: 400,
						position: ["center", 100]
					});
					$("#dialog-payables").dialog({
						autoOpen: false,
						modal: true,
						width: width,
						maxHeight: 400,
						position: ["center", 100]
					});
					$("#dialog-file").dialog({
						autoOpen: false,
						modal: true,
						width: width,
						maxHeight: 400,
						position: ["center", 100],
						buttons: {
							"确认": function() {
								location.reload();
							},
							"取消": function() {
								$(this).dialog("close");
							}
						}
					});
					$("#dialog-check-info").dialog({
						autoOpen: false,
						modal: true,
						width: 432,
						maxHeight: 400,
						position: ["center", 100],
					});
					$("#dialog-rececheck-info").dialog({
						autoOpen: false,
						modal: true,
						width: 450,
						maxHeight: 400,
						position: ["center", 100]
					});
					$("#dialog-map").dialog({
						autoOpen: false,
						modal: true,
						width: 800,
						minHeight: 450,
						position: ["center", 100]
					});

					$(function() {
						$(".role_info").click(function() {
							$role_id = $(this).attr('rel');
							$('#dialog-role-info').dialog('open');
							$('#dialog-role-info').load('/index.php?m=user&a=dialoginfo&id=' + $role_id);
						});
						$(".add_file").click(function() {
							$('#dialog-file').dialog('open');
							$('#dialog-file').load('/index.php?m=file&a=add&r=RContractFile&module=contract&id=300');
						});
						$(".add_receivingorder").click(function() {
							var receivables_id = $(this).attr('rel');
							$('#dialog-receivingorder').dialog('open');
							$('#dialog-receivingorder').load('/index.php?m=finance&a=adddialog&t=receivingorder&contract_id=300&receivables_id=' + receivables_id);
						});
						$("#add_yingshou").click(function() {
							$('#dialog-yingshou').dialog('open');
							$('#dialog-yingshou').load('/index.php?m=finance&a=adddialog&t=receivables&contract_id=300');
						});
						$("#dialog-yingshou").dialog({
							autoOpen: false,
							modal: true,
							width: 540,
							maxHeight: 600,
							position: ["center", 100],
							buttons: {
								"确定": function() {
									$('#form_receivables').submit();
									$(this).dialog("close");
								},
								"取消": function() {
									$(this).dialog("close");
								}
							}
						});
						$("#dialog-receivingorder").dialog({
							autoOpen: false,
							modal: true,
							width: 540,
							maxHeight: 600,
							position: ["center", 100],
							buttons: {
								"确定": function() {
									var money = $('#money').val();
									if(0 >= money) {
										alert_crm('金额不能为空！请重新填写收款金额！');
									} else {
										$('#receivingorder_dialog').submit();
										$(this).dialog("close");
									}
								},
								"取消": function() {
									$(this).dialog("close");
								}
							}
						});
						$(".receivingorder_check").click(function() {
							var order_id = $(this).attr('rel');
							var order_name = $(this).attr('rel2');
							$("#dialog_check_order_no").text(order_name);
							$("#dialog_check_order_no").attr('href', '/index.php?m=finance&a=view&t=receivingorder&id=' + order_id);
							$("#dialog_order_id").val(order_id);
							$("#dialog_description").focus();
							$('#dialog-rececheck-info').dialog('open');
						});
						$(".checkbtn").click(function() {
							$('#dialog-check-info').dialog('open');
							$("#dialog_description").focus();
						});
						$(".getMap").click(function() {
							var map = $(this).attr('rel');
							$('#dialog-map').dialog('open');
							$('#dialog-map').load('/index.php?m=setting&a=mapdialog&map=' + map);
						});
					});
					$('.del_file').click(function() {
						var file_id = $(this).attr('rel');
						swal({
								title: "您确定要删除这个附件吗？",
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
										type: 'get',
										url: "/index.php?m=file&a=delete&r=RContractFile&id=" + file_id,
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
				</script>
				<script>
					// spacer.gif

					$(document).ready(function() {
						// 固定按钮

						var list = '';
						var t_type = "contract";
						var t_name = '';
						if(t_type == "leads") {
							t_name = '<i>线</i>';
						}
						if(t_type == "customer") {
							t_name = '<i>客</i>';
						}
						if(t_type == "business") {
							t_name = '<i>商</i>';
						}
						if(t_type == "contract") {
							t_name = '<i>合</i>';
						}
						if(t_type == "examine") {
							t_name = '<i>审</i>';
						}
						if(t_type == "finance") {
							t_name = '<i>财</i>';
						}
						list += "<li class='($vo['type']}'>" + t_name + "<a href='/index.php?m=contract&a=view&id=300'>测试合同1111</a></li>";
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
		<div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-front ui-dialog-buttons ui-draggable ui-resizable" style="display: none; position: fixed;" tabindex="-1" role="dialog" aria-describedby="dialog-check-contract" aria-labelledby="ui-id-1">
			<div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"><span id="ui-id-1" class="ui-dialog-title">合同审核</span><button class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only ui-dialog-titlebar-close" role="button" aria-disabled="false" title="关闭"><span class="ui-button-icon-primary ui-icon ui-icon-closethick"></span><span class="ui-button-text">关闭</span></button></div>
			<div style="" id="dialog-check-contract" class="ui-dialog-content ui-widget-content">
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
		<div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-front ui-draggable ui-resizable" style="display: none; position: fixed;" tabindex="-1" role="dialog" aria-describedby="dialog-return-sales" aria-labelledby="ui-id-2">
			<div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"><span id="ui-id-2" class="ui-dialog-title">添加退货单</span><button class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only ui-dialog-titlebar-close" role="button" aria-disabled="false" title="关闭"><span class="ui-button-icon-primary ui-icon ui-icon-closethick"></span><span class="ui-button-text">关闭</span></button></div>
			<div style="" id="dialog-return-sales" class="ui-dialog-content ui-widget-content">
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
		<div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-front ui-draggable ui-resizable" style="display: none; position: fixed;" tabindex="-1" role="dialog" aria-describedby="dialog-check-list" aria-labelledby="ui-id-3">
			<div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"><span id="ui-id-3" class="ui-dialog-title">审核记录</span><button class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only ui-dialog-titlebar-close" role="button" aria-disabled="false" title="关闭"><span class="ui-button-icon-primary ui-icon ui-icon-closethick"></span><span class="ui-button-text">关闭</span></button></div>
			<div style="" id="dialog-check-list" class="ui-dialog-content ui-widget-content">
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
		<div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-front ui-draggable ui-resizable" style="display: none; position: fixed;" tabindex="-1" role="dialog" aria-describedby="dialog-role-info" aria-labelledby="ui-id-4">
			<div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"><span id="ui-id-4" class="ui-dialog-title">员工信息</span><button class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only ui-dialog-titlebar-close" role="button" aria-disabled="false" title="关闭"><span class="ui-button-icon-primary ui-icon ui-icon-closethick"></span><span class="ui-button-text">关闭</span></button></div>
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
		<div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-front ui-draggable ui-resizable" style="display: none; position: fixed;" tabindex="-1" role="dialog" aria-describedby="dialog-receivables" aria-labelledby="ui-id-5">
			<div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"><span id="ui-id-5" class="ui-dialog-title">添加应收款</span><button class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only ui-dialog-titlebar-close" role="button" aria-disabled="false" title="关闭"><span class="ui-button-icon-primary ui-icon ui-icon-closethick"></span><span class="ui-button-text">关闭</span></button></div>
			<div style="" id="dialog-receivables" class="ui-dialog-content ui-widget-content">
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
		<div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-front ui-draggable ui-resizable" style="display: none; position: fixed;" tabindex="-1" role="dialog" aria-describedby="dialog-payables" aria-labelledby="ui-id-6">
			<div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"><span id="ui-id-6" class="ui-dialog-title">添加应收款</span><button class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only ui-dialog-titlebar-close" role="button" aria-disabled="false" title="关闭"><span class="ui-button-icon-primary ui-icon ui-icon-closethick"></span><span class="ui-button-text">关闭</span></button></div>
			<div style="" id="dialog-payables" class="ui-dialog-content ui-widget-content">
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
		<div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-front ui-dialog-buttons ui-draggable ui-resizable" style="display: none; position: fixed;" tabindex="-1" role="dialog" aria-describedby="dialog-file" aria-labelledby="ui-id-7">
			<div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"><span id="ui-id-7" class="ui-dialog-title">添加附件</span><button class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only ui-dialog-titlebar-close" role="button" aria-disabled="false" title="关闭"><span class="ui-button-icon-primary ui-icon ui-icon-closethick"></span><span class="ui-button-text">关闭</span></button></div>
			<div style="" id="dialog-file" class="ui-dialog-content ui-widget-content">
				<div class="spiner-example">
					<div class="sk-spinner sk-spinner-three-bounce">
						<div class="sk-bounce1"></div>
						<div class="sk-bounce2"></div>
						<div class="sk-bounce3"></div>
					</div>
				</div>
			</div>
			<div class="ui-dialog-buttonpane ui-widget-content ui-helper-clearfix">
				<div class="ui-dialog-buttonset"><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">确认</span></button><button type="button" class="ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" role="button" aria-disabled="false"><span class="ui-button-text">取消</span></button></div>
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
		<div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-front ui-draggable ui-resizable" style="display: none; position: fixed;" tabindex="-1" role="dialog" aria-describedby="dialog-check-info" aria-labelledby="ui-id-8">
			<div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"><span id="ui-id-8" class="ui-dialog-title">销售合同审核</span><button class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only ui-dialog-titlebar-close" role="button" aria-disabled="false" title="关闭"><span class="ui-button-icon-primary ui-icon ui-icon-closethick"></span><span class="ui-button-text">关闭</span></button></div>
			<div style="" id="dialog-check-info" class="ui-dialog-content ui-widget-content">
				<form action="/index.php?m=contract&amp;a=check" id="deny_form" method="post">
					<input name="contract_id" value="300" type="hidden">
					<textarea style="width:400px;height:200px;" name="description" placeholder="填写理由(必填)"></textarea>
					<div style="margin-top:10px;margin-right:5px;">
						<a href="javascript:void(0);" onclick="javascript:$('#dialog-check-info').dialog('close');" class="pull-right btn btn-primary">取消</a>
						<button type="submit" name="submit1" value="deny" class="pull-right btn btn-primary" style="margin-right:10px;padding:6px 13px;">确认拒绝</button>&nbsp;&nbsp;
					</div>
				</form>
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
		<div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-front ui-draggable ui-resizable" style="display: none; position: fixed;" tabindex="-1" role="dialog" aria-describedby="dialog-rececheck-info" aria-labelledby="ui-id-9">
			<div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"><span id="ui-id-9" class="ui-dialog-title">收款单审核</span><button class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only ui-dialog-titlebar-close" role="button" aria-disabled="false" title="关闭"><span class="ui-button-icon-primary ui-icon ui-icon-closethick"></span><span class="ui-button-text">关闭</span></button></div>
			<div style="" id="dialog-rececheck-info" class="ui-dialog-content ui-widget-content">
				<form action="/index.php?m=finance&amp;a=check&amp;t=receivingorder" method="post">
					<input id="dialog_order_id" name="receivingorder_id" value="" type="hidden">
					<input name="t" value="receivingorder" type="hidden">
					<table class="table">
						<tbody>
							<tr>
								<td>
									收款单号：
									<a href="javascript:;" target="_blank" id="dialog_check_order_no"></a>
									<br>
									<br>
									<textarea tabindex="0" style="width:400px;height:200px;" class="form-control" id="dialog_description" name="description" placeholder="填写理由(非必填)"></textarea>
								</td>
							</tr>
							<tr>
								<td style="text-align:center;">
									<button type="submit" name="submit1" value="agree" class="btn btn-primary btn-sm">同意</button> &nbsp; &nbsp;
									<button type="submit" name="submit1" value="deny" class="btn btn-warning btn-sm">拒绝</button>
								</td>
							</tr>
						</tbody>
					</table>
				</form>
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
		<div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-front ui-draggable ui-resizable" style="display: none; position: fixed;" tabindex="-1" role="dialog" aria-describedby="dialog-map" aria-labelledby="ui-id-10">
			<div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"><span id="ui-id-10" class="ui-dialog-title">地图</span><button class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only ui-dialog-titlebar-close" role="button" aria-disabled="false" title="关闭"><span class="ui-button-icon-primary ui-icon ui-icon-closethick"></span><span class="ui-button-text">关闭</span></button></div>
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
			<div id="ascrail2000" class="nicescroll-rails nicescroll-rails-vr" style="width: 5px; z-index: 100; background: rgb(243, 243, 245) none repeat scroll 0% 0%; cursor: default; position: absolute; top: 0px; left: -5px; height: 355px; opacity: 0.5; display: none;">
				<div style="position: relative; top: 0px; float: right; width: 5px; height: 0px; background-color: rgb(204, 204, 204); border: 0px none; background-clip: padding-box; border-radius: 5px;" class="nicescroll-cursors"></div>
			</div>
			<div id="ascrail2000-hr" class="nicescroll-rails nicescroll-rails-hr" style="height: 5px; z-index: 100; background: rgb(243, 243, 245) none repeat scroll 0% 0%; top: 350px; left: 0px; position: absolute; opacity: 0.5; cursor: default; display: none;">
				<div style="position: absolute; top: 0px; height: 5px; width: 0px; background-color: rgb(204, 204, 204); border: 0px none; background-clip: padding-box; border-radius: 5px;" class="nicescroll-cursors"></div>
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
						<iframe id="NoPermissioniframe" width="100%" height="100%" frameborder="0"></iframe>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关  闭</button>
					</div>
				</div>
			</div>
		</div>
		<div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-front ui-dialog-buttons ui-draggable ui-resizable" style="display: none; position: fixed;" tabindex="-1" role="dialog" aria-describedby="dialog-yingshou" aria-labelledby="ui-id-11">
			<div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"><span id="ui-id-11" class="ui-dialog-title">添加应收款</span><button class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only ui-dialog-titlebar-close" role="button" aria-disabled="false" title="关闭"><span class="ui-button-icon-primary ui-icon ui-icon-closethick"></span><span class="ui-button-text">关闭</span></button></div>
			<div style="" id="dialog-yingshou" class="ui-dialog-content ui-widget-content">
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
		<div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-front ui-dialog-buttons ui-draggable ui-resizable" style="display: none; position: fixed;" tabindex="-1" role="dialog" aria-describedby="dialog-receivingorder" aria-labelledby="ui-id-12">
			<div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"><span id="ui-id-12" class="ui-dialog-title">添加回款单</span><button class="ui-button ui-widget ui-state-default ui-corner-all ui-button-icon-only ui-dialog-titlebar-close" role="button" aria-disabled="false" title="关闭"><span class="ui-button-icon-primary ui-icon ui-icon-closethick"></span><span class="ui-button-text">关闭</span></button></div>
			<div style="" id="dialog-receivingorder" class="ui-dialog-content ui-widget-content">
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
	</body>

</html>