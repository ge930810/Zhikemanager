<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="utf-8">
		<title>致客科技_人员管理</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="author" content="悟空CRM" />
		<!-- 360浏览器默认使用Webkit内核 -->
		<meta name="renderer" content="webkit">
		<script src="js/jquery-2.1.1.js"></script>
		<link type="text/css" href="css/jquery-ui-1.10.0.custom.css" rel="stylesheet" />
		<link type="text/css" href="css/bootstrap-responsive.min.css" rel="stylesheet">
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link href="css/font-awesome.css" rel="stylesheet">
		<link href="css/font-awesome.min.css" rel="stylesheet">
		<link type="text/css" href="css/hovershow.css" rel="stylesheet" />
		<!-- animate -->
		<link rel='stylesheet' href='css/animate.min.css'>
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
		<!-- Sweet alert -->
		<script src="js/sweetalert.min.js"></script>
		<!-- Jquery Validate -->
		<script src="js/jquery.validate.min.js"></script>
		<script src="js/messages_zh.min.js"></script>
		<script src="js/bootstrap-tooltip.js"></script>
		<!-- 下拉筛选 -->
		<link rel="stylesheet" href="css/bootstrap-select.css">
		<script type="text/javascript" src="js/bootstrap-select.js" charset="UTF-8"></script>
		<!-- select2 -->
		<link href="css/select2.min.css" rel="stylesheet">
		<script src="js/select2.full.min.js"></script>
	</head>
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
	<!-- <body class="navbar fixed-sidebar"> -->

	<body class="navbar">
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
							<a data-toggle="tooltip" data-placement="right" data-original-title="通讯录" class="active" href="renyuanguanli.htm"><i class="fa fa-phone-square"></i></a>
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
			<div id="page-wrapper" class="gray-bg" style="background:#e6e9f0">
				<div class="row border-bottom white-bg" style="box-shadow: 0px 4px 13px -8px #5A5A5A;z-index: 102;">
					<nav class="navbar navbar-default nav-head navbar-static-top" role="navigation" style="margin-bottom: 0">
						<ul class="nav navbar-nav navbar-left navbar-form-custom" style="min-width:60%;">
							<li class="active">
								<a href="/index.php?m=user&a=contacts"><span class="fa fa-phone-square" style="display:inline"></span>&nbsp;&nbsp;通讯录</a>
							</li>
						</ul>
						<ul class="nav navbar-top-links navbar-right" style="margin-right:0px;">
							<li class="dropdown" style="">
								<a class="dropdown-toggle count-info" id="todo_url" data-toggle="dropdown" href="#" title="待办事项">
									<img src="img/remain.png" alt="" />
									<div class="label label-info" style="background-color: #FA7252;" id="todo_num"></div>
								</a>
								<ul class="dropdown-menu dropdown-alerts folder-list m-b-md" style="width:250px;">
									<li style="border-bottom:1px dashed #e7eaec !important;">
										<a href="/index.php?m=contract&a=index&contract_checked=1&by=all"><i class="fa fa-list-alt"></i>&nbsp;&nbsp;待审核的合同<span class="label label-info pull-right" style="background-color: #FA7252;" id="header_check_contract_num"></span></a>
									</li>
									<li style="border-bottom:1px dashed #e7eaec !important;">
										<a href="/index.php?m=finance&a=index&t=receivingorder&status[value]=0&by=all"><i class="fa fa-money"></i>&nbsp;&nbsp;待审核的回款<span class="label label-info pull-right" style="background-color: #FA7252;" id="header_receivables_num"></span></a>
									</li>
									<li style="border-bottom:1px dashed #e7eaec !important;">
										<a href="/index.php?m=examine&a=index&by=me_examine&examining=1"><i class="fa fa-check-square-o"></i>&nbsp;&nbsp;待处理的审批流<span class="label label-info pull-right" style="background-color: #FA7252;" id="header_examine_num"></span></a>
									</li>
									<li style="border-bottom:1px dashed #e7eaec !important;">
										<a href="/index.php?m=contract&a=index&by=dqcontact"><i class="fa fa-user"></i>&nbsp;&nbsp;合同到期提醒<span class="label label-info pull-right" style="background-color: #FA7252;" id="header_dqcontact_num"></span></a>
									</li>

									<li style="border-bottom:1px dashed #e7eaec !important;">
										<a href="/index.php?m=finance&a=index&t=receivables&r_status=1&by=me"><i class="fa fa-money"></i>&nbsp;&nbsp;应收款提醒<span class="label label-info pull-right" style="background-color: #FA7252;" id="receivables_num"></span></a>
									</li>
									<li style="border-bottom:1px dashed #e7eaec !important;">
										<a href="/index.php?m=customer&a=index&by=todaycontact"><i class="fa fa-user"></i>&nbsp;&nbsp;今日需跟进客户<span class="label label-info pull-right" style="background-color: #FA7252;" id="header_follow_customer_num"></span></a>
									</li>
								</ul>
							</li>
							<li class="dropdown" style="">
								<a class="dropdown-toggle count-info" id="event_url" data-toggle="dropdown" href="#" title="今日日程">
									<img src="img/event.png" alt="" /><span class="label label-warning" id="event_num"></span>
								</a>
								<ul class="dropdown-menu dropdown-alerts">
									<li class="list-group" role="presentation" id="event_group" style="height:220px;display:none;">
										<div class="full-height-scroll" id="event_list" data-height="220px" data-plugin="slimScroll" style="overflow: hidden; width: auto;">
										</div>
									</li>
									<li>
										<div class="text-center link-block">
											<a href="/index.php?m=event&a=index">
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
									<img src="img/bell.png" alt="" /><span class="label label-primary" id="message_num"></span>
								</a>
								<ul class="dropdown-menu dropdown-alerts" style="width:365px;">
									<li class="list-group" role="presentation" id="message_group" style="height:220px;display:none;">
										<div class="full-height-scroll" id="message_list" data-height="220px" data-plugin="slimScroll" style="overflow: hidden; width: auto;">
										</div>
									</li>
									<li>
										<div class="text-center link-block">
											<a href="/index.php?m=message&a=index">
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
									<img alt="头像" style="height:38px;width:38px" class="img-circle" src="img/thumb_5aa5ec505c63c2291.png" />
								</a>
								<ul class="dropdown-menu">
									<li>
										<a href="/index.php?m=user&a=edit">个人资料</a>
									</li>
									<li>
										<a href="/index.php?m=setting&a=lockscreen">一键锁屏</a>
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
				<div class="modal inmodal" id="Profile" tabindex="-1" role="dialog" aria-hidden="true">
					<div class="modal-dialog modal-lg">
						<div class="modal-content animated bounceInRight">

						</div>
					</div>
				</div>
				<!-- 模态框 -->
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
								<button type="button" class="close" style="font-size:34px;font-weight:400;color:#fff;" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
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
											<a target="_blank" href="http://help.crm.cc/index.php?m=help&a=view&help_id=128&help_menu_id=3" title="点击查看如何增加授权人数">增加授权人数</a>
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
				<script type="text/javascript" src="/Public/style/js/TableFreeze.js"></script>
				<style>
					#page-wrapper {
						background-color: #fff;
					}
					
					.contact-box {
						border: 1px solid #ddd;
					}
					
					.select2-container .select2-selection--single {
						height: 32px;
						line-height: 32px;
					}
					
					.select2-container--default .select2-selection--single .select2-selection__rendered {
						color: #999;
					}
					
					#oDivH_tab_Test3 {
						left: 16px;
					}
					/*body{overflow-y: hidden;}*/
				</style>
				<script>
					$(function() {
						var scroll_width = 5;
						$("#table_div").height(window.innerHeight - $("#table_div").offset().top - $("#tfoot_div").height() - parseInt($("#table_container").css("padding-bottom").replace("px", "")) - 10);
						$(window).resize(function() {
							$("#table_div").height(window.innerHeight - $("#table_div").offset().top - $("#tfoot_div").height() - parseInt($("#table_container").css("padding-bottom").replace("px", "")) - 10);
							$("#oDivL_tab_Test3").height($("#table_div").height() - scroll_width - 1).width($("#oTableLH_tab_Test3").width());
							$("#oDivH_tab_Test3").height($("#oTableLH_tab_Test3").height()).width($("#table_div").width() - scroll_width);
						})
						$("#tab_Test3").FrozenTable(1, 0, 3);
						$("#oDivL_tab_Test3").height($("#table_div").height() - scroll_width).width($("#oTableLH_tab_Test3").width());
						$("#oDivH_tab_Test3").height($("#oTableLH_tab_Test3").height()).width($("#table_div").width() - scroll_width);
						$("#oDivH_tab_Test3").css({
							'left': '16px',
							'top': '1px'
						});
					})
				</script>
				<div class="wrapper wrapper-content ">
					<div class="row">
						<div class="col-sm-12">
							<div class="ibox float-e-margins" style="margin-bottom: 0px;">
								<div class="title-bar">
									<div class="row ">
										<form class="form-inline" id="searchForm" onsubmit="return checkSearchForm();" action="" method="get">
											<ul class="breadcrum pull-right" style="margin-bottom: 0px">
												<li>
													搜索：
													<div class="input-group">
														<input type="hidden" name="m" value="user" />
														<input type="hidden" name="a" value="contacts" />
														<input id="short_search" type="text" style="width:160px;" placeholder="请输入员工名称" onkeydown='if(event.keyCode==13) {$("#short_search_btn").trigger("click");return false;}' class="form-control input-sm" name="search" value="" />
														<span class="input-group-btn">
                                                <button class="btn btn-default btn-search" id="short_search_btn" type="submit"><i class="fa fa-search"></i></button>
                                            </span>
													</div>
												</li>
												<li>
													<a href="/index.php?m=user&a=contacts" class="btn btn-white btn-bitbucket" title="按员工查看"><i class="fa fa-user" style="color: ##23527c;"></i></a>
													<a href="/index.php?m=user&a=contacts&type=1" class="btn btn-white btn-bitbucket" title="按部门查看"><i class="fa fa-th-large" style="color: #D8E3EF;"></i></a>
												</li>
											</ul>
										</form>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12">
										<div class="ibox float-e-margins">
											<div class="ibox-content" style="padding:0px;">
												<div class="ibox-content clearfix" id="table_container" style="padding:0px;border: none;">
													<div id="table_div" class="full-height-scroll" style="left:0px;top:0px;">
														<table class="table table-hover table-striped table_thead_fixed" id="tab_Test3">
															<tr colspan="5" class="tabTh">
																<td style="width:170px;"><span style="margin-left:30px;">员工</span></td>
																<td>手机号</td>
																<td>邮箱</td>
																<td>部门</td>
																<td>职位</td>
															</tr>
															<tr>
																<td style="padding-left: 20px;">
																	<a href="yuangongxiangqing.htm">
																		<img class="img-circle" style="width:32px;height:32px;" src="img/thumb_5aa5ec505c63c2291.png" /> 邹总 <span><img src="img/admin.png" /></span>
																	</a>
																</td>
																<td></td>
																<td></td>
																<td>总经理</td>
																<td>董事长</td>
															</tr>
															<tr>
																<td style="padding-left: 20px;">
																	<a href="yuangongxiangqing.htm">
																		<img class="img-circle" style="width:32px;height:32px;" src="img/thumb_5966dec13c7666466.png" /> 李鸿雁 <span style="width:11px;display: inline-block;"></span> </a>
																</td>
																<td>15589745215</td>
																<td>17895412568@qq.com</td>
																<td>行政部</td>
																<td>行政经理</td>
															</tr>
															<tr>
																<td style="padding-left: 20px;">
																	<a href="yuangongxiangqing.htm">
																		<img class="img-circle" style="width:32px;height:32px;" src="/Public/img/avatar_default.png" /> 张佑康 <span style="width:11px;display: inline-block;"></span> </a>
																</td>
																<td>15874589652</td>
																<td></td>
																<td></td>
																<td></td>
															</tr>
															<tr>
																<td style="padding-left: 20px;">
																	<a href="yuangongxiangqing.htm">
																		<img class="img-circle" style="width:32px;height:32px;" src="img/thumb_5a8e6fdb26d2f9343.png" /> 李慧亚 <span style="width:11px;display: inline-block;"></span> </a>
																</td>
																<td>13956485216</td>
																<td>4856325415@qq.com</td>
																<td>销售部3</td>
																<td>销售总监</td>
															</tr>
															<tr>
																<td style="padding-left: 20px;">
																	<a href="yuangongxiangqing.htm">
																		<img class="img-circle" style="width:32px;height:32px;" src="img/thumb_5966dedd4bcf65503.png" /> 张默然 <span style="width:11px;display: inline-block;"></span> </a>
																</td>
																<td>15896541256</td>
																<td>65464645645@qq.com</td>
																<td>销售部3</td>
																<td>销售经理</td>
															</tr>
															<tr>
																<td style="padding-left: 20px;">
																	<a href="yuangongxiangqing.htm">
																		<img class="img-circle" style="width:32px;height:32px;" src="img/thumb_5966deeb1bce63828.png" /> 赵云长 <span style="width:11px;display: inline-block;"></span> </a>
																</td>
																<td>17798564126</td>
																<td>65656563@qq.com</td>
																<td>市场部</td>
																<td>市场部经理</td>
															</tr>
															<tr>
																<td style="padding-left: 20px;">
																	<a href="yuangongxiangqing.htm">
																		<img class="img-circle" style="width:32px;height:32px;" src="img/thumb_5966def87926f3511.png" /> 张倩茹 <span style="width:11px;display: inline-block;"></span> </a>
																</td>
																<td>15365895478</td>
																<td>389909199@qq.com</td>
																<td>市场部</td>
																<td>市场专员</td>
															</tr>
															<tr>
																<td style="padding-left: 20px;">
																	<a href="yuangongxiangqing.htm">
																		<img class="img-circle" style="width:32px;height:32px;" src="img/thumb_5a3a3285cef274352.png" /> 李娜 <span style="width:11px;display: inline-block;"></span> </a>
																</td>
																<td>15798564123</td>
																<td></td>
																<td>市场部</td>
																<td>市场专员</td>
															</tr>
															<tr>
																<td style="padding-left: 20px;">
																	<a href="yuangongxiangqing.htm">
																		<img class="img-circle" style="width:32px;height:32px;" src="img/thumb_5966df17aa5066869.png" /> 张淼 <span style="width:11px;display: inline-block;"></span> </a>
																</td>
																<td>15648975468</td>
																<td>zhangmiao@163.com</td>
																<td>销售部3</td>
																<td>销售经理</td>
															</tr>
															<tr>
																<td style="padding-left: 20px;">
																	<a href="yuangongxiangqing.htm">
																		<img class="img-circle" style="width:32px;height:32px;" src="img/thumb_5aa282fc3dd019096.jpg" /> 爱牛宝宝 <span style="width:11px;display: inline-block;"></span> </a>
																</td>
																<td>15129902511</td>
																<td></td>
																<td>市场部</td>
																<td>市场部经理</td>
															</tr>
															<tr>
																<td style="padding-left: 20px;">
																	<a href="yuangongxiangqing.htm">
																		<img class="img-circle" style="width:32px;height:32px;" src="img/thumb_5966df46a87c62526.png" /> 韩生 <span style="width:11px;display: inline-block;"></span> </a>
																</td>
																<td>15118880375</td>
																<td>5294360@qq.com</td>
																<td>销售部3</td>
																<td>副总裁</td>
															</tr>
															<tr>
																<td style="padding-left: 20px;">
																	<a href="yuangongxiangqing.htm">
																		<img class="img-circle" style="width:32px;height:32px;" src="img/thumb_5966df737db009289.png" /> 刘德华 <span style="width:11px;display: inline-block;"></span> </a>
																</td>
																<td>15036119821</td>
																<td>8889999@qq.com</td>
																<td>销售部3</td>
																<td>销售经理</td>
															</tr>
															<tr>
																<td style="padding-left: 20px;">
																	<a href="yuangongxiangqing.htm">
																		<img class="img-circle" style="width:32px;height:32px;" src="img/thumb_5979b8e6a01f12600.png" /> 张天航 <span style="width:11px;display: inline-block;"></span> </a>
																</td>
																<td>13944921033</td>
																<td>171889042@qq.com</td>
																<td>销售部3</td>
																<td>销售总监</td>
															</tr>
															<tr>
																<td style="padding-left: 20px;">
																	<a href="yuangongxiangqing.htm">
																		<img class="img-circle" style="width:32px;height:32px;" src="/Public/img/avatar_default.png" /> 1 <span style="width:11px;display: inline-block;"></span> </a>
																</td>
																<td>13111111121</td>
																<td>1255647750@qq.com</td>
																<td>欧盟推广</td>
																<td>市场总监</td>
															</tr>
															<tr>
																<td style="padding-left: 20px;">
																	<a href="yuangongxiangqing.htm">
																		<img class="img-circle" style="width:32px;height:32px;" src="/Public/img/avatar_default.png" /> 牛爱花 <span style="width:11px;display: inline-block;"></span> </a>
																</td>
																<td>18538560335</td>
																<td>5647678@qq.com</td>
																<td>市场部</td>
																<td>市场部经理</td>
															</tr>
														</table>
													</div>
													<div id="tfoot_div" class="clearfix">
														<tr>
															<div class="clearfix" id="tfoot_page">
																<div style="margin: 10px auto;">
																	<div style="width:auto;float:right;margin-left:15px;line-height: 30px;">
																		<select style="width:auto;display:inline-block;" id="go_page" class="form-control input-sm" name="p" onchange="go_pagep(this.value)">
																			<option value="/index.php?m=user&a=contacts&p=1" selected="selected">1</option>
																			<option value="/index.php?m=user&a=contacts&p=2">2</option>
																			<option value="/index.php?m=user&a=contacts&p=3">3</option>
																		</select>
																		<script type="text/javascript">
																			function changeURLArg(url, arg, arg_val) {
																				var pattern = arg + "=([^&]*)";
																				var replaceText = arg + "=" + arg_val;
																				if(url.match(pattern)) {
																					var tmp = "/(" + arg + "=)([^&]*)/gi";
																					tmp = url.replace(eval(tmp), replaceText);
																					return tmp;
																				} else {
																					if(url.match("[\?]")) {
																						return url + "&" + replaceText;
																					} else {
																						return url + "?" + replaceText;
																					}
																				}
																				return url + "\n" + arg + "\n" + arg_val;
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
																				<li><span>&laquo; </span></li>
																				<li><span class='current btn-default active'>1</span>
																					<a href='/index.php?m=user&a=contacts&p=2'>2</a>
																					<a href='/index.php?m=user&a=contacts&p=3'>3</a>
																				</li>
																				<li>
																					<a href='/index.php?m=user&a=contacts&p=2'> &raquo;</a>
																				</li>
																			</ul>
																		</div>
																	</div>
																	<div style="width:auto;float:right;margin-top:7px;margin-left:35px">共41 条 1/3 页</div>
																</div>
																<div class="pull-right" style="width:auto;">
																	<select style="width:auto;display:inline-block;" id="listrows" name="listrows" rel="15" class="form-control input-sm">
																		<option value="10">10</option>
																		<option value="15" checked="true">15</option>
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
																	function changeURLArg(url, arg, arg_val) {
																		var pattern = arg + '=([^&]*)';
																		var replaceText = arg + '=' + arg_val;
																		if(url.match(pattern)) {
																			var tmp = '/(' + arg + '=)([^&]*)/gi';
																			tmp = url.replace(eval(tmp), replaceText);
																			return tmp;
																		} else {
																			if(url.match('[?]')) {
																				return url + '&' + replaceText;
																			} else {
																				return url + '?' + replaceText;
																			}
																		}
																		return url + 'n' + arg + 'n' + arg_val;
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
														</tr>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- <script src="js/plugins/metisMenu/jquery.metisMenu.js"></script> -->
				<!-- Custom and plugin javascript -->
				<script>
					// 放大效果 
					// $(document).ready(function(){$(".contact-box").each(function(){animationHover(this,"pulse")})});
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
						list += "<li class='($vo['type']}'>" + t_name + "<a href='/index.php?m=contract&a=view&id=298'>点点滴滴</a></li>";
						var t_type = "business";
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
						list += "<li class='($vo['type']}'>" + t_name + "<a href='/index.php?m=business&a=view&id=408'>M_20180124-0408</a></li>";
						var t_type = "customer";
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
						list += "<li class='($vo['type']}'>" + t_name + "<a href='/index.php?m=customer&a=view&id=738'>测试</a></li>";
						var t_type = "customer";
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
						list += "<li class='($vo['type']}'>" + t_name + "<a href='/index.php?m=customer&a=view&id=320'>武帝时代</a></li>";
						var t_type = "business";
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
						list += "<li class='($vo['type']}'>" + t_name + "<a href='/index.php?m=business&a=view&id=318'>M_20171205-0318</a></li>";
						var t_type = "customer";
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
						list += "<li class='($vo['type']}'>" + t_name + "<a href='/index.php?m=customer&a=view&id=739'>美的集团股份有限公司</a></li>";
						var t_type = "customer";
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
						list += "<li class='($vo['type']}'>" + t_name + "<a href='/index.php?m=customer&a=view&id=470'>郑州职业技术学院</a></li>";
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
							'background': 'url(img/record.png) left bottom no-repeat',
							'left': '5px',
							'top': '7px'
						});
						$('.fixed').css({
							'display': 'block',
							'width': '16px',
							'height': '16px',
							'background': 'url(img/record.png) left -50px no-repeat',
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
							<img alt="头像" style="height:32px;width:32px" class="img-circle" src="/Public/img/wukong.png">
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
		</div>
		<div id="down_url" style="display:none;width:120px;height:120px;background-color: #000;z-index: 1009;position: fixed;bottom:65px;right:160px;text-align: center;">
			<img src="img/download.jpg" style="width:120px;height:120px;" />
		</div>
		<div id="small-chat" style="z-index:1001;">
			<span class="badge badge-warning pull-right"></span>
			<a class="open-small-chat" title="悟空小助手">
				<i class="fa fa-comments"></i>
			</a>
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
				var img = "img/thumb_5aa5ec505c63c2291.png";
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
							temp += '<img alt="头像" style="height:38px;width:38px" class="img-circle" src="img/avatar_default.png" />';
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
		<script type='text/javascript'>
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
	</body>

</html>