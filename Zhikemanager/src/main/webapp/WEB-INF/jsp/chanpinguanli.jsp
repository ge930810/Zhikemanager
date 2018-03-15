<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

		<title>致客科技_产品</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="author" content="悟空CRM">
		<!-- 360浏览器默认使用Webkit内核 -->
		<meta name="renderer" content="webkit">
		<script src="js/jquery-2.1.1.js"></script>
		<link type="text/css" href="${pageContext.request.contextPath}/statics/css/jquery-ui-1.10.0.custom.css" rel="stylesheet">
		<link type="text/css" href="${pageContext.request.contextPath}/statics/css/bootstrap-responsive.min.css" rel="stylesheet">
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
		<link href="${pageContext.request.contextPath}/statics/css/toastr.min.css" rel="stylesheet">
		<!-- Sweet Alert -->
		<link href="${pageContext.request.contextPath}/statics/css/sweetalert.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/statics/css/style.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/statics/css/awesome-bootstrap-checkbox.css" rel="stylesheet">
		<!-- Mainly scripts -->
		<script src="${pageContext.request.contextPath}/statics/js/bootstrap.min.js"></script>
		<script src="${pageContext.request.contextPath}/statics/js/moment.min.js"></script>
		<script src="${pageContext.request.contextPath}/statics/js/jquery.form.js" type="text/javascript"></script>
		<!-- <script src=" style/js/plugins/metisMenu/jquery.metisMenu.js"></script> -->
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
		<script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/bootstrap-select.js" charset="UTF-8"></script>
		<!-- select2 -->
		<link href="${pageContext.request.contextPath}/statics/css/select2.min.css" rel="stylesheet">
		<script src="${pageContext.request.contextPath}/statics/js/select2.js"></script>
		<link href="http://demo2.5kcrm.net css/new.css">
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
		<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/layer.css" id="layuicss-layer">
	</head>

	<!-- <body class="navbar fixed-sidebar"> -->

	<body class="navbar  pace-done">
		<div style="position:fixed;left:0;top:35%;z-index:1000;">
			<div id="recordBtn" style="display:none;position:absolute;left:0px;top:0px;width:27px; height:27px;cursor: pointer;background: url(img/record.png) left top no-repeat;"></div>
			<div class="recordBox" style="z-index: 1000;display:block; position:absolute;left:-222px;top:26px;width:220px;min-height:30px; max-height:550px; background:#fff; border:1px solid #ccc"><span class="recordClose" style="position:absolute;right:15px; top:10px; display:block;width:9px; height:9px;cursor: pointer;  background:url(Public/img/record.png) -3px -29px;z-index:998;"></span><span class="fixed" style="display: block; width: 16px; height: 16px; background: url(&quot;Public/img/record.png&quot;) left -50px no-repeat; position: absolute; right: 8px; top: 6px; cursor: pointer; z-index: 999;"></span>
				<div class="title" style="position: relative; font-size: 14px; font-family: 微软雅黑; height: 30px; line-height: 30px; border-bottom: 1px solid rgb(204, 204, 204); background: rgb(230, 230, 230); text-indent: 25px;"><i style="position: absolute; display: block; width: 15px; height: 15px; background: url(&quot;Public/img/record.png&quot;) left bottom no-repeat; left: 5px; top: 7px;"></i>最近访问</div>
				<ul style="list-style: none; padding: 10px;">
					<li class="($vo[" type ']}'="" style="line-height: 18px; display: block; margin-bottom: 8px;"><i style="display: inline-block; float: left; width: 18px; height: 18px; text-align: center; border: 1px solid rgb(204, 204, 204); border-radius: 100%; font-size: 12px; font-style: normal; line-height: 18px; margin-right: 8px; color: rgb(255, 255, 255); background: rgb(0, 136, 204);">财</i>
						<a href="http://demo2.5kcrm.net/index.php?m=finance&amp;a=view&amp;id=334">M_20180312-0334</a>
					</li>
					<li class="($vo[" type ']}'="" style="line-height: 18px; display: block; margin-bottom: 8px;"><i style="display: inline-block; float: left; width: 18px; height: 18px; text-align: center; border: 1px solid rgb(204, 204, 204); border-radius: 100%; font-size: 12px; font-style: normal; line-height: 18px; margin-right: 8px; color: rgb(255, 255, 255); background: rgb(0, 136, 204);">客</i>
						<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=320">武帝时代</a>
					</li>
					<li class="($vo[" type ']}'="" style="line-height: 18px; display: block; margin-bottom: 8px;"><i style="display: inline-block; float: left; width: 18px; height: 18px; text-align: center; border: 1px solid rgb(204, 204, 204); border-radius: 100%; font-size: 12px; font-style: normal; line-height: 18px; margin-right: 8px; color: rgb(255, 255, 255); background: rgb(0, 136, 204);">客</i>
						<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=309">3123123</a>
					</li>
					<li class="($vo[" type ']}'="" style="line-height: 18px; display: block; margin-bottom: 8px;"><i style="display: inline-block; float: left; width: 18px; height: 18px; text-align: center; border: 1px solid rgb(204, 204, 204); border-radius: 100%; font-size: 12px; font-style: normal; line-height: 18px; margin-right: 8px; color: rgb(255, 255, 255); background: rgb(0, 136, 204);">商</i>
						<a href="http://demo2.5kcrm.net/index.php?m=business&amp;a=view&amp;id=318">M_20171205-0318</a>
					</li>
					<li class="($vo[" type ']}'="" style="line-height: 18px; display: block; margin-bottom: 8px;"><i style="display: inline-block; float: left; width: 18px; height: 18px; text-align: center; border: 1px solid rgb(204, 204, 204); border-radius: 100%; font-size: 12px; font-style: normal; line-height: 18px; margin-right: 8px; color: rgb(255, 255, 255); background: rgb(0, 136, 204);">商</i>
						<a href="http://demo2.5kcrm.net/index.php?m=business&amp;a=view&amp;id=478">波音787</a>
					</li>
					<li class="($vo[" type ']}'="" style="line-height: 18px; display: block; margin-bottom: 8px;"><i style="display: inline-block; float: left; width: 18px; height: 18px; text-align: center; border: 1px solid rgb(204, 204, 204); border-radius: 100%; font-size: 12px; font-style: normal; line-height: 18px; margin-right: 8px; color: rgb(255, 255, 255); background: rgb(0, 136, 204);">合</i>
						<a href="http://demo2.5kcrm.net/index.php?m=contract&amp;a=view&amp;id=296">福特试驾会</a>
					</li>
					<li class="($vo[" type ']}'="" style="line-height: 18px; display: block; margin-bottom: 8px;"><i style="display: inline-block; float: left; width: 18px; height: 18px; text-align: center; border: 1px solid rgb(204, 204, 204); border-radius: 100%; font-size: 12px; font-style: normal; line-height: 18px; margin-right: 8px; color: rgb(255, 255, 255); background: rgb(0, 136, 204);">客</i>
						<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=738">测试</a>
					</li>
					<li class="($vo[" type ']}'="" style="line-height: 18px; display: block; margin-bottom: 8px;"><i style="display: inline-block; float: left; width: 18px; height: 18px; text-align: center; border: 1px solid rgb(204, 204, 204); border-radius: 100%; font-size: 12px; font-style: normal; line-height: 18px; margin-right: 8px; color: rgb(255, 255, 255); background: rgb(0, 136, 204);">客</i>
						<a href="http://demo2.5kcrm.net/index.php?m=customer&amp;a=view&amp;id=307">阿萨德</a>
					</li>
				</ul>
			</div>
		</div>
		<div class="pace  pace-inactive">
			<div class="pace-progress" data-progress-text="100%" data-progress="99" style="transform: translate3d(100%, 0px, 0px);">
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
							<a data-toggle="tooltip" data-placement="right" data-original-title="首页" href=""><i class="fa fa-home"></i></a>
						</li>

						<li>
							<a data-toggle="tooltip" data-placement="right" data-original-title="客户管理" href="kehuguanli.htm"><i class="fa fa-user"></i></a>
						</li>
						<li>
							<a data-toggle="tooltip" data-placement="right" data-original-title="商机管理" href="shangjiguanli.htm"><i class="fa fa-suitcase"></i></a>
						</li>
						<li>
							<a data-toggle="tooltip" data-placement="right" data-original-title="产品管理" class="active" href="chanpinguanli.htm"><i class="fa fa-inbox"></i></a>
						</li>
						<li>
							<a data-toggle="tooltip" data-placement="right" data-original-title="合同订单" href="hetong.htm"><i class="fa fa-file-text"></i></a>
						</li>
						<!--<li>
							<a data-toggle="tooltip" data-placement="right" data-original-title="财务管理" href=""><i class="fa fa-credit-card"></i></a>
						</li>
						<li>
							<a data-toggle="tooltip" data-placement="right" data-original-title="数据分析" href=""><i class="fa fa-area-chart"></i></a>
						</li>
						<li>
							<a data-toggle="tooltip" data-placement="right" data-original-title="办公" href=""><i class="fa fa-desktop"></i></a>
						</li>-->
						<li>
							<a data-toggle="tooltip" data-placement="right" data-original-title="通讯录" href="renyuanguanli.htm"><i class="fa fa-phone-square"></i></a>
						</li>
						<!--<li>
							<a data-toggle="tooltip" data-placement="right" data-original-title="营销" href=""><i class="fa fa-envelope"></i></a>
						</li>
						<li>
							<a data-toggle="tooltip" data-placement="right" data-original-title="系统设置" href=""><i class="fa fa-cog"></i></a>
						</li>-->
					</ul>
				</div>
			</nav>
			<div id="page-wrapper" class="gray-bg" style="background: rgb(230, 233, 240); min-height: 574px;">
				<div class="row border-bottom white-bg" style="box-shadow: 0px 4px 13px -8px #5A5A5A;z-index: 102;">
					<nav class="navbar navbar-default nav-head navbar-static-top" role="navigation" style="margin-bottom: 0">
						<ul class="nav navbar-nav navbar-left navbar-form-custom" style="min-width:60%;">
							<li class="active">
								<a href="http://demo2.5kcrm.net/index.php?m=product&amp;a=index"><span class="fa fa-inbox" style="display:inline"></span>&nbsp;&nbsp;产品</a>
							</li>
						</ul>
						<ul class="nav navbar-top-links navbar-right" style="margin-right:0px;">
							<li style="padding-left: 30px;">
								<a href="http://demo2.5kcrm.net/index.php?m=product&amp;a=index#" class="dropdown-toggle" data-toggle="dropdown" style="padding: 2px;">
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
				<script src="js/jquery.nicescroll.min.js" type="text/javascript"></script>
				<script type="text/javascript" src="js/TableFreeze.js"></script>
				<script src="js/5kcrm_more.js" type="text/javascript"></script>
				<!-- Select2 -->
				<script src="js/jstree.min.js"></script>
				<link href="css/style.min.css" rel="stylesheet">
				<style>
					body {
						overflow-y: hidden;
					}
					
					.option {
						padding-left: -30px;
					}
					
					#oDivL_tab_Test3 {
						background-color: #fff;
					}
				</style>
				<script>
					$(function() {
						var scroll_width = 10;
						$("#table_div").height(window.innerHeight - $("#table_div").offset().top - $("#tfoot_div").height() - parseInt($("#table_container").css("padding-bottom").replace("px", "")) - 10);
						$(window).resize(function() {
							$("#table_div").height(window.innerHeight - $("#table_div").offset().top - $("#tfoot_div").height() - parseInt($("#table_container").css("padding-bottom").replace("px", "")) - 10);
							$("#oDivL_tab_Test3").height($("#table_div").height() - 1).width($("#oTableLH_tab_Test3").width());
							$("#oDivH_tab_Test3").height($("#oTableLH_tab_Test3").height()).width($("#table_div").width());
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
						$("#tab_Test3").FrozenTable(1, 0, 3);
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

						$("#left_list").height(window.innerHeight - $("#left_list").offset().top - 30);
						$(window).resize(function() {
							$("#left_list").height(window.innerHeight - $("#left_list").offset().top - 30);
						})
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
												<a href="javascript:void(0)" id="edit_product"><i class="fa fa-pencil"></i>&nbsp;编辑</a>
											</li>
											<li>
												<a href="javascript:void(0);" class="link excelExport"><i class="fa fa-download"></i>&nbsp;导出</a>
											</li>
											<li>
												<span id="to_product"><a id="delete" href="javascript:void(0)"><i class="fa fa-times"></i>&nbsp;下架</a></span>
											</li>
											<li class="last_li"><big><a class="fa fa-times pull-right" id="back-show"></a></big></li>
										</ul>
									</div>
									<div class="row " id="title-show">
										<ul class="nav pull-left" style="margin:2px 0 0 15px;">
											<a href="chanpintianjia.htm" class="btn btn-primary btn-sm pull-left" style="margin-right:8px"><i class="fa fa-plus-circle"></i>&nbsp; 添加产品</a>
										</ul>
										<form class="form-inline" action="http://demo2.5kcrm.net/index.php?m=product&amp;a=index" method="get">
											<ul class="breadcrum pull-right" style="margin-bottom: 0px">
												<li>
													搜索：
													<div class="input-group">
														<input type="hidden" name="m" value="product">
														<input type="hidden" name="a" value="index">
														<input type="hidden" name="field" value="name">
														<input type="hidden" name="condition" value="contains">
														<!-- <input id="short_search" type="text" style="width:160px;" placeholder="请输入产品名称/编码" onkeydown="if(event.keyCode==13) {$(&quot;#short_search_btn&quot;).trigger(&quot;click&quot;);return false;}" class="form-control input-sm" name="search">
														 --><span class="input-group-btn">
										<button class="btn btn-default btn-search" id="short_search_btn" type="submit"><i class="fa fa-search"></i></button>
									</span>
													</div>
													&nbsp;&nbsp;
													<a title="高级搜索" href="javascript:void(0)" id="search_type" class="btn btn-white btn-bitbucket"><i class="fa fa-filter" style="color: #D8E3EF;"></i></a>
												</li>&nbsp;&nbsp;
											</ul>
										</form>
										<ul class="breadcrum pull-right" style="margin-bottom: 0px">
											<li>
												<div class="input-group">
													<!-- <select class="form-control" onchange="window.open(this.options[this.selectedIndex].value,target=&#39;_self&#39;)" style="margin-bottom:5px;">
														<option value="/index.php?m=product&amp;a=index&amp;listrows=15" selected="selected">已上架</option>
														<option value="/index.php?m=product&amp;a=index&amp;by=deleted&amp;listrows=15">已下架
														</option>
													</select> -->
												</div>
											</li>
										</ul>
									</div>
								</div>
									<div class="pull-right" style="width:72.7%">
										<div class="ibox-content clearfix" id="table_container" style="z-index: 1;">
											<form id="form1" action="http://demo2.5kcrm.net/index.php?m=product&amp;a=index" method="Post" style="position:relative;">
												<div id="table_div" class="nicescroll" tabindex="0" style="height: 378px; overflow: hidden; outline: none;">
													<table class="table table-hover table-striped table_thead_fixed" id="tab_Test3">
														<tbody>
															<tr id="childNodes_num" class="tabTh">
																<td style="max-width: 60px;width:74px;padding:0 10px 0 7px;" nowrap="nowrap">
																	<div class="checkbox checkbox-primary">
																		<input type="checkbox" class="check_all">
																		<label for=""></label>
																	</div>
																</td>
																<td style="width:10%;line-height: 2.42857;" nowrap="nowrap">图片</td>
																<td nowrap="nowrap">备注</td>
																<td nowrap="nowrap">商品名称</td>
																<td nowrap="nowrap">建议售价</td>
																<td nowrap="nowrap">产品编号</td>
																<td nowrap="nowrap">商品描述</td>
															</tr>
														</tbody>
														<tbody>
															<tr class="controls_tr">
																<td nowrap="nowrap">
																	<div class="checkbox checkbox-primary">
																		<input name="product_id[]" class="check_list" type="checkbox" value="93" rel1="0">
																		<label for=""></label>
																	</div>
																</td>
																<td nowrap="nowrap">
																	<img src="js/default_img.png" style="width: 40px;height: 40px"> </td>
																<td style="color:#" nowrap="nowrap">
																	<span>
																																																</span>
																</td>
																<td style="color:#021012" nowrap="nowrap">
																	<a href="chakanchanpinxinxi.htm"> <span>
																																白																</span>
																	</a>
																</td>
																<td style="color:#" nowrap="nowrap">
																	<span>
																																16880.00																</span>
																</td>
																<td style="color:#333333" nowrap="nowrap">
																	<span>
																																ht001																</span>
																</td>
																<td style="color:#333333" nowrap="nowrap">
																	<span>
																																																</span>
																</td>
															</tr>
															<tr class="controls_tr">
																<td nowrap="nowrap">
																	<div class="checkbox checkbox-primary">
																		<input name="product_id[]" class="check_list" type="checkbox" value="92" rel1="0">
																		<label for=""></label>
																	</div>
																</td>
																<td nowrap="nowrap">
																	<img src="js/default_img.png" style="width: 40px;height: 40px"> </td>
																<td style="color:#" nowrap="nowrap">
																	<span>
																																																</span>
																</td>
																<td style="color:#021012" nowrap="nowrap">
																	<a href="chakanchanpinxinxi.htm"> <span>
																																da的地位																</span>
																	</a>
																</td>
																<td style="color:#" nowrap="nowrap">
																	<span>
																																0.00																</span>
																</td>
																<td style="color:#333333" nowrap="nowrap">
																	<span>
																																																</span>
																</td>
																<td style="color:#333333" nowrap="nowrap">
																	<span>
																																																</span>
																</td>
															</tr>
														</tbody>
														<tbody> </tbody>
													</table>
												</div>
												<div id="tfoot_div" class="clearfix">
													<div class="clearfix" id="tfoot_page">
														<div style="margin: 10px auto;">
															<div style="width:auto;float:right;margin-left:15px;line-height: 30px;">
																<select style="width:auto;display:inline-block;" id="go_page" class="form-control input-sm" name="p" onchange="go_pagep(this.value)">
																	<option value="/index.php?m=product&amp;a=index&amp;listrows=15&amp;p=1" selected="selected">1</option>
																	<option value="/index.php?m=product&amp;a=index&amp;listrows=15&amp;p=2">2</option>
																	<option value="/index.php?m=product&amp;a=index&amp;listrows=15&amp;p=3">3</option>
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
																			<a href="http://demo2.5kcrm.net/index.php?m=product&amp;a=index&amp;listrows=15&amp;p=2">2</a>
																			<a href="http://demo2.5kcrm.net/index.php?m=product&amp;a=index&amp;listrows=15&amp;p=3">3</a>
																		</li>
																		<li>
																			<a href="http://demo2.5kcrm.net/index.php?m=product&amp;a=index&amp;listrows=15&amp;p=2"> »</a>
																		</li>
																	</ul>
																</div>
															</div>
															<div style="width:auto;float:right;margin-top:7px;margin-left:35px">共35 条 1/3 页</div>
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
												<div id="oDivH_tab_Test3" style="overflow: hidden; width: 895px; position: absolute; z-index: 9; left: 0px; top: 0px;">
													<table class="table table-hover table-striped table_thead_fixed" style="width: 905px; height: 46px;">
														<tbody>
															<tr class="tabTh">
																<td style="max-width: 60px; width: 74px; padding: 0px 10px 0px 7px; height: 46px;" nowrap="nowrap">
																	<div class="checkbox checkbox-primary">
																		<input type="checkbox" class="check_all">
																		<label for=""></label>
																	</div>
																</td>
																<td style="width: 90px; line-height: 2.42857; height: 46px;" nowrap="nowrap">图片</td>
																<td nowrap="nowrap" style="height: 46px; width: 90px;">备注</td>
																<td nowrap="nowrap" style="height: 46px; width: 223px;">商品名称</td>
																<td nowrap="nowrap" style="height: 46px; width: 138px;">建议售价</td>
																<td nowrap="nowrap" style="height: 46px; width: 154px;">产品编号</td>
																<td nowrap="nowrap" style="height: 46px; width: 136px;">商品描述</td>
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
					</div>
				</div>

				<script src="${pageContext.request.contextPath}/statics/js/images-loaded.min.js" type="text/javascript"></script>
				<script src="${pageContext.request.contextPath}/statics/js/litebox.min.js" type="text/javascript"></script>
				<link href="${pageContext.request.contextPath}/statics/css/litebox.css" rel="stylesheet">
				<script type="text/javascript">
					/*让复选框默认取消选择*/
					$(':checkbox').prop('checked', false);
					$(document).ready(function() {
						$('#knowledge-tree').jstree({
							'core': {
								'check_callback': true
							},
							'plugins': ['types', 'dnd'],
							'types': {
								'default': {
									'icon': ' img/kai.png' //fa fa-folder
								}

							}
						});
						//$('.jstree-children .fa-folder-open').css('color', '#FFC873');
						$('.jstree-anchor').click(function() {
							window.location.href = $(this).attr('href');
						});
						$("#edit_product").click(function() {
							window.location.href = "/index.php?m=product&a=edit&p=&id=" + $(this).attr('rel');
						})

					});

					$(".controls_tr").mouseenter(function() {
						$(this).find(".controls").show();
					}).mouseleave(function() {
						$(this).find(".controls").hide();
					});
					var url = "/index.php?m=product&a=getcurrentstatus";
					var limit_size = 1000;
					var count = '35';

					var ii = 1;

					function remainTime() {
						if(ii == -1) {
							ii = 1;
						}
						var id_array = new Array();
						$(".check_list:checked").each(function() {
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
									$("#searchForm").submit();
									setTimeout("remainTime()", 1000);
									ii++;
								} else {
									swal("数据导出成功！", "", "success");
									//alert('导出完毕!');
									ii = 1;
								}
							} else {
								setTimeout("remainTime()", 1000);
							}
						}, 'json');
					}
					//初始化图片查看插件
					$('.litebox').liteBox({  
						revealSpeed:  400,
						  background:   'rgba(0,0,0,.8)',
						  overlayClose:  true,
						  escKey:  true,
						  navKey:  true,
						  errorMessage:   '图片加载失败.'
					});

					if("" == "1") {
						width = $('.container').width() * 0.9;
					} else {
						width = 800;
					}

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
						// buttons: {
						// 	"确定": function () {
						// 		$('#excelimport_dialog').submit();
						// 		$(this).dialog("close");
						// 	},
						// 	"取消": function () {
						// 		$(this).dialog("close");
						// 	}
						// }
					});

					function changeContent() {
						a = $("#select1  option:selected").val();
						window.location.href = "/index.php?m=product&a=index&by=" + a;
					}
					/*添加筛选条件*/
					var m = 1;
					$('#add_btn').click(function() {
						m += 1;
						$('#search_add').append('<div id="con_search_' + m + '" style="float:left;width:650px;padding-top:10px;margin:0px 10px 0 10px;"><div  id="rem_' + m + '" class="pull-left" style="line-height:30px;"><a href="javascript:void(0);" class="rem_search" rel="' + m + '" title="移除"><span class="fa fa-times-circle"></span></a></div>&nbsp;<ul class="nav pull-left" style="margin:0px 0 0 5px;width:620px"><li class="pull-left"><select id="field_' + m + '"  style="width:auto" class="form-control input-sm field_name new-select" onchange="changeCondition(' + m + ')" name=""><option class="" value="name">--请选择筛选条件--</option><option class="box" value="standard" rel="product" >服务种类</option><option class="product_category" value="category_id" rel="product" >产品类别</option><option class="text" value="name" rel="product" >商品名称</option><option class="floatnumber" value="suggested_price" rel="product" >建议售价</option><option class="text" value="product_num" rel="product" >产品编号</option><option class="floatnumber" value="cost_price" rel="product" >成本价</option><option class="text" value="sketch" rel="product" >商品描述</option><option class="role" value="owner_role_id">负责人</option><option class="date" value="create_time">创建时间</option><option class="date" value="update_time">修改时间</option></select>&nbsp;&nbsp;</li><li class="pull-left" id="conditionContent_' + m + '"><select id="condition_' + m + '" style="width:auto" class="form-control input-sm new-select" name="condition" onchange="changeSearch()"><option value="contains">包含</option><option value="not_contain">不包括</option><option value="is">是</option><option value="isnot">否</option><option value="start_with">开始字符</option><option value="end_with">结束字符</option><option value="is_empty">为空</option><option value="is_not_empty">不为空</option></select>&nbsp;&nbsp;</li><li class="pull-left" id="searchContent_' + m + '"><input id="search_' + m + '" type="text" style="width:160px;" class="input-medium form-control input-sm search-query" name="search"/>&nbsp;&nbsp;</li></ul></div>');
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
									text: data.info,
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

					$("#dialog-field-search").dialog({
						autoOpen: false,
						modal: true,
						width: 750,
						height: 500,
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
					$("#search_type").click(function() {
						$("#dialog-field-search").dialog('open');
					});

					$(function() {
						$("#check_all").click(function() {
							$("input[class='check_list']").prop('checked', $(this).prop("checked"));
						});
						$('#delete').click(function() {
							swal({
									title: "确定要下架该产品吗？",
									type: "warning",
									showCancelButton: true,
									confirmButtonColor: "#DD6B55",
									confirmButtonText: "确定",
									closeOnConfirm: false
								},
								function() {
									$("#form1").attr('action', '/index.php?m=product&a=delete');
									$("#form1").submit();
								});
						});
						$('#revert').click(function() {
							swal({
									title: "确定要上架该产品吗？",
									type: "warning",
									showCancelButton: true,
									confirmButtonColor: "#DD6B55",
									confirmButtonText: "确定",
									closeOnConfirm: false
								},
								function() {
									$("#form1").attr('action', '/index.php?m=product&a=revert');
									$("#form1").submit();
								});
						});

						$(".excelExport").click(function() {
							if(count > limit_size) {
								swal({
										title: "导出量过大，将分几次导出是否继续?",
										type: "warning",
										showCancelButton: true,
										confirmButtonColor: "#DD6B55",
										confirmButtonText: "确定",
										closeOnConfirm: false,
										animation: "slide-from-top",
										showLoaderOnConfirm: true
									},
									function() {
										remainTime();
									});
							} else {
								var id_array = new Array();
								$(".check_list:checked").each(function() {
									id_array.push($(this).val());
								});
								if(id_array != '') {
									swal({
										title: "确定导出选中产品?",
										text: "",
										type: "warning",
										showCancelButton: true,
										confirmButtonText: "确定",
										closeOnConfirm: false,
										animation: "slide-from-top",
										showLoaderOnConfirm: true
									}, function() {
										remainTime();
										// setTimeout(function(){ 
										// 	swal("数据导出成功！");   
										// }, 2000); 
									});
								} else {
									swal({
											title: "确定要导出全部吗？",
											type: "warning",
											showCancelButton: true,
											confirmButtonColor: "#DD6B55",
											confirmButtonText: "确定",
											closeOnConfirm: false,
											animation: "slide-from-top",
											showLoaderOnConfirm: true
										},
										function() {
											remainTime();
										});
								}
							}
						})

						$("#dosearch").click(function() {
							result = checkSearchForm();
							if(result) {
								$("#act").val('search');
								$("#searchForm").submit();
							}
						});

						$("#import_excel").click(function() {
							$('#dialog-import').dialog('open');
							$('#dialog-import').load('/index.php?m=product&a=excelimport');
						});
						$(".role_info").click(function() {
							$role_id = $(this).attr('rel');
							$('#dialog-role-info').dialog('open');
							$('#dialog-role-info').load('/index.php?m=user&a=dialoginfo&id=' + $role_id);
						});
					});
				</script>
				
	</body>

</html>