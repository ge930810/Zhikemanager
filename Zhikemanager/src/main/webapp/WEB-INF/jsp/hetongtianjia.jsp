<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<title>合同添加</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="author" content="悟空CRM"/>
	<!-- 360浏览器默认使用Webkit内核 -->
	<meta name="renderer" content="webkit">
	<script src="js/jquery-2.1.1.js"></script>
	<link type="text/css" href="css/jquery-ui-1.10.0.custom.css" rel="stylesheet" />
	<link type="text/css" href="css/bootstrap-responsive.min.css" rel="stylesheet">
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/font-awesome.css" rel="stylesheet">
	<link href="css/font-awesome.min.css" rel="stylesheet">
	<link type="text/css" href="css/hovershow.css" rel="stylesheet"/>
	<!-- animate -->
	<link rel='stylesheet' href='css/animate.min.css'>
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
	<link href="css/toastr.min.css" rel="stylesheet">
	<!-- Sweet Alert -->
	<link href="css/sweetalert.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet">
    <link href="css/awesome-bootstrap-checkbox.css" rel="stylesheet">
	<!-- Mainly scripts -->
	<script src="js/bootstrap.min.js"></script>
	<script src="js/moment.min.js"></script>
	<script src="js/jquery.form.js" type="text/javascript"></script>
	<!-- <script src="style/js/plugins/metisMenu/jquery.metisMenu.js"></script> -->
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
	<script src="js/select2.js"></script>
</head>
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
		<div id="page-wrapper" class="gray-bg" style="background:#e6e9f0">
    		<div class="row border-bottom white-bg" style="box-shadow: 0px 4px 13px -8px #5A5A5A;z-index: 102;">
				<nav class="navbar navbar-default nav-head navbar-static-top" role="navigation" style="margin-bottom: 0">
										<ul class="nav navbar-nav navbar-left navbar-form-custom" style="min-width:60%;">
													<li class="active"><a href="/index.php?m=contract&a=index"><span class="fa fa-list-alt" style="display:inline"></span>&nbsp;&nbsp;合同</a></li>
											</ul>
					<ul class="nav navbar-top-links navbar-right" style="margin-right:0px;">
												<li class="dropdown" style="">
		                    <a class="dropdown-toggle count-info" id="todo_url"  data-toggle="dropdown" href="#" title="待办事项">
		                        <img src="img/remain.png" alt="" /><div class="label label-info" style="background-color: #FA7252;" id="todo_num"></div>
		                    </a>
	                   		<ul class="dropdown-menu dropdown-alerts folder-list m-b-md" style="width:250px;">
	                   				                   						            			<li style="border-bottom:1px dashed #e7eaec !important;"><a href="/index.php?m=contract&a=index&contract_checked=1&by=all"><i class="fa fa-list-alt"></i>&nbsp;&nbsp;待审核的合同<span class="label label-info pull-right" style="background-color: #FA7252;" id="header_check_contract_num"></span></a></li>
			            													            			<li style="border-bottom:1px dashed #e7eaec !important;"><a href="/index.php?m=finance&a=index&t=receivingorder&status[value]=0&by=all"><i class="fa fa-money"></i>&nbsp;&nbsp;待审核的回款<span class="label label-info pull-right" style="background-color: #FA7252;" id="header_receivables_num"></span></a></li>
			            													            			<li style="border-bottom:1px dashed #e7eaec !important;"><a href="/index.php?m=examine&a=index&by=me_examine&examining=1"><i class="fa fa-check-square-o"></i>&nbsp;&nbsp;待处理的审批流<span class="label label-info pull-right" style="background-color: #FA7252;" id="header_examine_num"></span></a></li>
																									<li style="border-bottom:1px dashed #e7eaec !important;"><a href="/index.php?m=contract&a=index&by=dqcontact"><i class="fa fa-user"></i>&nbsp;&nbsp;合同到期提醒<span class="label label-info pull-right" style="background-color: #FA7252;" id="header_dqcontact_num"></span></a></li>
											            		
											            			<li style="border-bottom:1px dashed #e7eaec !important;"><a href="/index.php?m=finance&a=index&t=receivables&r_status=1&by=me"><i class="fa fa-money"></i>&nbsp;&nbsp;应收款提醒<span class="label label-info pull-right" style="background-color: #FA7252;" id="receivables_num"></span></a></li>
			            					            					            			<li style="border-bottom:1px dashed #e7eaec !important;"><a href="/index.php?m=customer&a=index&by=todaycontact"><i class="fa fa-user"></i>&nbsp;&nbsp;今日需跟进客户<span class="label label-info pull-right" style="background-color: #FA7252;" id="header_follow_customer_num"></span></a></li>
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
								<li><a href="/index.php?m=user&a=edit">个人资料</a></li>
                                <li><a href="/index.php?m=setting&a=lockscreen">一键锁屏</a></li>
								<li class="divider"></li>
								<li><a href="javascript:void(0);" id="authorize" >版本及授权信息</a></li>								<li><a class="logout" href="javascript:void(0);">退出</a></li>
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
			<div class="modal inmodal fade" id="Modal_login" tabindex="-1"  style=" overflow:auto; border:1px solid #000000;" role="dialog" >
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
						    <div class="form-horizontal m-t" >
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
		                        <img src="img/wukong.png" title="悟空小助手"> 您有<strong>'+data.data['message_num']+'</strong>条消息待查看\
		                        <span class="pull-right text-muted small" style="line-height:30px;">'+data.data['message_time']+'前</span>\
		                    </div>\
		                </a>';
			}

			if(data.data['message_announcement_count'] != 0 && data.data['message_announcement_count'] != ''){
				message_html += '<a href="/index.php?m=message&a=index&by=announcement" style="width:100%;color:#676a6c;padding:5px !important;border-bottom:1px dashed #ddd;float:left;margin-bottom:5px;">\
		                    <div style="padding:0 10px;">\
		                        <img src="img/announcement.png" title="系统公告"> 您有<strong>'+data.data['message_announcement_count']+'</strong>条公告信息待查看\
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
<script type="text/javascript" src="js/PCASClass.js" ></script>
<style type="text/css">
.add_body >div >.full-height-scroll{
   	border-right:1px dotted #ccc
}
.add_body_title{
	margin:20px 0 0 10px;
	padding-left: 14px;
}
.add_body_form>form>.form-group{
	margin-bottom: 25px;
}
body{overflow-y:hidden;}
.product_thead>tr>td{
	background-color:#FFFFFF;padding:1px;font-size:13px;color:#999;
}
/*附件样式*/
.test_div {
    width: 98.8%;
    background-color: #f9f9f9;
    height: 30px;
    position: relative;
    top: -31px;
    right: -1px;
}
.test_div>.addfile{
	display: inline-block;
    line-height: 30px;
    margin-left: 18px;
    cursor: pointer;
}
#filecontent{
	width: 95%;
    border: 1px dashed #d8e3ef;
}
.showfile{
	padding:6px;
}
#filecontent .tishiinfo{
	margin-top: 10px;
    margin-bottom: 10px;
    display: block;
    margin-left: 10px;
}
#filecontent .fujian{
	margin-left: 8px;
	color: #646464;
}
#addfilediv{
	color: #cccccc;
    margin-left: 6px;
    padding-top: 8px;
    display: block;
    margin-bottom: 6px;
}
</style>
<script>
$(function(){
	$(".add_body").height(window.innerHeight-$("#add_body").offset().top-$("#tfoot_div").height()-40);
	$(window).resize(function(){
		$(".add_body").height(window.innerHeight-$("#add_body").offset().top-$("#tfoot_div").height()-40);
	})
})
</script>
<div class="wrapper wrapper-content animated fadeIn">
		<form class="form-horizontal" id="form" role="form" action="/index.php?m=contract&a=add" method="post" enctype="multipart/form-data">
		<input type="hidden" name="refer_url" value="http://demo2.5kcrm.net/index.php?m=contract&a=index" />
		<input type="hidden" name="total_amount_val" id="total_amount" value="0" />
		<input type="hidden" name="renew_contract_id" value="">
		<input type="hidden" name="renew_parent_id" value="">
		<div class="ibox-content add_body" id="add_body" >
			<div class="row">
				<div class="col-md-6 add_body" style="padding-right: 0px;">
					<div class="full-height-scroll">
						<div class="row">
							<div class="col-md-12 add_body_title" >
								<div class="all-inline">
									<span class="sq-tag"></span>
									<div class="text-tag">
										<span>基础信息</span>
									</div>
								</div>
							</div>
							<div class="col-md-11 add_body_form" style="margin:20px 0 0 20px;">
																		<div class="form-group">
											<label class="col-md-4 control-label">知识产权：</label>
																							<div class="col-md-6">
													&nbsp;&nbsp;&nbsp; &nbsp; <div class='radio radio-info radio-inline'><input type='radio' name='crm_tckzts' id='crm_tckzts' value='甲方'/><label for='crm_tckzts'>甲方</label></div> &nbsp; <div class='radio radio-info radio-inline'><input type='radio' name='crm_tckzts' id='crm_tckzts1' value='乙方' checked="checked"/><label for='crm_tckzts1'>乙方</label></div> &nbsp; <div class='radio radio-info radio-inline'><input type='radio' name='crm_tckzts' id='crm_tckzts2' value='双方共有'/><label for='crm_tckzts2'>双方共有</label></div><span id="crm_tckztsTip" style="float: left;line-height: 32px;margin-left: 5%;color:red;"></span> &nbsp; <span style="color:#999;float:left;margin-top:5px;">(注:知识产权)</span>												</div>
																									<div class="col-md-2"></div>																					</div>										<div class="form-group">
											<label class="col-md-4 control-label">合同编号：</label>
											<div class="col-md-6">
												<div class="input-daterange input-group">
													<span class="input-group-addon" style="background-color:#ccc;">aaaa</span>
													<input type="text" id="number" name="number" rel="require" class="form-control checkit" value="20180315-0303"/>
													<input type="hidden" id="prefixion" name="prefixion" value="aaaa"/>
												</div>
											</div>
											<div class="col-md-2"><span style="color:red">*</span></div>
										</div>
										<div class="form-group">
											<label class="col-md-4 control-label">合同名称：</label>
											<div class="col-md-6">
												<input class="form-control required" aria-required="true" type="text" name="contract_name" value="" id="contract_name" />
											</div>
											<div class="col-md-2"><span style="color:red">*</span></div>
										</div>
										<div class="form-group">
											<label class="col-md-4 control-label">合同签约人：</label>
											<div class="col-md-6">
												<input type="hidden" name="owner_role_id" id="owner_id" value="1"/>
												<input class="form-control required" aria-required="true" type="text" name="owner_role_name" id="owner_name" value="邹总" readonly="true" style="cursor:pointer;" title="请点击选择"/>
											</div>
											<div class="col-md-2"><span style="color:red">*</span></div>
										</div>
									<div class="form-group">
											<label class="col-md-4 control-label">来源客户：</label>
											<div class="col-md-6">
												<input type="hidden" name="customer_id" id="customer_id" value="" />
												<input class="form-control required" aria-required="true" placeholder="请点击选择" type="text" name="customer_name" id="customer_name" value="" readonly="true" style="cursor:pointer;" title="请点击选择"/>
											</div>
											<div class="col-md-2"><span style="color:red">*</span></div>
										</div>
																														<div class="form-group">
												<label class="col-md-4 control-label">来源商机：</label>
												<div class="col-md-6">
													<input type="hidden" name="business_id" id="business_id" value=""/>
													<input class="form-control" placeholder="请点击选择" type="text" name="business_name" id="business_name" value="" readonly="true" style="cursor:pointer;" title="请点击选择"/>
												</div>
												<div class="col-md-2"></div>
											</div>																			<div class="form-group">
											<label class="col-md-4 control-label">合同金额(元)：</label>
											<div class="col-md-6">
												<input class="form-control required" type="text" id="contract_price" name="price" value="" placeholder="0.00" onblur="bu(this)" 0" onblur="bu(this)" onkeyup="final_price_sum('contract_price');"/>
											</div>
											<div class="col-md-2"><span style="color:red">*</span></div>
										</div>
																			<div class="form-group">
											<label class="col-md-4 control-label">签约时间：</label>
																							<div class="col-md-6">
													<input class="form-control Wdate" input_type="time" onFocus="WdatePicker({dateFmt:'yyyy-MM-dd'})" name="due_time" id="due_time" type="text" value=""/><span id="due_timeTip" style="float: left;line-height: 32px;margin-left: 5%;color:red;"></span>												</div>
												<div class="col-md-2"><span style="color: red;line-height: 32px;margin-left: 10px;">*</span></div>
																						</div>										<div class="form-group">
											<label class="col-md-4 control-label">合同生效时间：</label>
											<div class="col-md-6">
												<input class="form-control required Wdate" aria-required="true" type="text" id="start_date" name="start_date" onFocus="WdatePicker({dateFmt:'yyyy-MM-dd', maxDate:&quot;#F{$dp.$D('end_date')||'2038-01-01'}&quot;})" value="2018-03-15" />
											</div>
											<div class="col-md-2"><span style="color:red">*</span></div>
										</div>
																			<div class="form-group">
											<label class="col-md-4 control-label">合同到期时间：</label>
											<div class="col-md-6">
												<input class="form-control required Wdate" aria-required="true" type="text" id="end_date" onFocus="WdatePicker({dateFmt:'yyyy-MM-dd', minDate:&quot;#F{$dp.$D('start_date')}&quot;,maxDate:'2038-01-01'})" name="end_date" />
											</div>
											<div class="col-md-2"><span style="color:red">*</span></div>
										</div>
																			<div class="form-group">
											<label class="col-md-4 control-label">合同描述：</label>
																								<div class="col-md-8">
														<textarea class="form-control" rows="5"></textarea>
													</div>																					</div>							</div>
														<div class="col-md-11 add_body_form" style="margin:20px 0 0 20px;">
															</div>
							<div class="col-md-1 pull-right">
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6 add_body" style="padding-left: 0px;">
					<div class="full-height-scroll">
						<div class="col-md-12 add_body_title" >
							<div class="pull-left">
								<div class="all-inline">
									<span class="sq-tag"></span>
									<div class="text-tag">
										<span>产品信息</span>
									</div>
								</div>
							</div>
							<div class="pull-right">
								<a href="javascript:void(0);" style="padding-top:10px;" id="choseProduct" class="addproduct" >请选择产品</a>
							</div>
						</div>
						<div class="col-md-12 ibox-content" style="border:0px;">
							<div class="panel-body" style="padding:0px;">
								<table class="table table-bordered" id="no-input-border" width="95%" border="0" cellspacing="1" cellpadding="0">
									<thead class="product_thead">
										<tr style="background-color:#FFFFFF;text-align:center;">
											<td>&nbsp;</td>
											<td >产品名称</td>
											<td >价格(元)</td>
											<td >折扣(%)</td>
											<td >销售单价(元)</td>
											<td >数量</td>
											<td >单位</td>
											<td >小计</td>
										</tr>
									</thead>
																												<tbody id="view_row">
											<tr ><td colspan="10" style="color:#999;text-align:center"><span >暂无产品信息，请添加产品！</span></td></tr>
										</tbody>									<tbody id="add_products">
									</tbody>
								</table>
								<div class="ibox" style="overflow-x: hidden;margin: 10px 5px 0px;">
									<div class="row" style="margin: 10px 5px 0px;">
										<div class="col-md-4" style="padding-top:9px">
											产品合计(元):&nbsp; 
											<span id="total_subtotal_val"></span>
											<input type="hidden" value="" id="prime_price" name="prime_price">
										</div>
										<div class="col-md-4">整单折扣(%):&nbsp;
											<input style="display: inline-block; width: 60px; padding: 1px;" type="text" id="final_discount_rate" name="final_discount_rate" class="form-control" onkeyup="final_price_sum('rate');" value="" />
										</div>
										<div class="col-md-4">合同金额(元):&nbsp;
											<input style="display: inline-block; width: 100px; padding: 1px;" type="text" name="final_price" id="final_price" class="form-control" placeholder="0.00" onkeyup="final_price_sum('price');" value="" onblur="bu(this)" />
											<input type="hidden" id="total_amount_val" value="" name="total_amount">
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-12 add_body_title" >
							<div class="pull-left">
								<div class="all-inline">
									<span class="sq-tag"></span>
									<div class="text-tag">
										<span>附件信息</span>
									</div>
								</div>
							</div>
							<div class="pull-right">
								<a href="javascript:void(0);" style="padding-top:10px;" class="addfile" >请选择附件</a>
							</div>
						</div>
						<div class="col-md-12 ibox-content" style="border:0px;">
							<div id="filecontent" class="hide">
								<span class="tishiinfo"><img src="img/addFile.png"/><span class="fujian">附件</span></span>
								<span id="addfilediv">本次共添加了<span id="file_num"></span>文件,总大小<span id="file_size"></span>KB&nbsp;<a href="javascript:;" style="color: #5a8ee2;" onclick="delall();">全部删除</a></span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="tfoot_div" class="clearfix">
			<div class="clearfix" id="tfoot_page">
				<div class="ibox-content" style="border-top: none;">
					<div class="col-sm-offset-2"><button type="submit" id="save_submit" class="btn btn-primary">保存合同</button></div>
				</div>
			</div>
		</div>
	</form>
</div>
<div class="" style="display:none;" id="dialog-validate" title="TEST_RESULTS">
	HAVE_THE_FOLLOWING_PRODUCTS_ARE_SIMILAR_TO_THE_PRODUCT_NAME	<div id="search_content"></div>
</div>
<div style="display:none;"  id="dialog-customer" title="选择商机">
	<div class="spiner-example">
		<div class="sk-spinner sk-spinner-three-bounce">
			<div class="sk-bounce1"></div>
			<div class="sk-bounce2"></div>
			<div class="sk-bounce3"></div>
		</div>
	</div>
</div>
<div style="display:none;"  id="dialog-customer-list" title="选择客户">
	<div class="spiner-example">
		<div class="sk-spinner sk-spinner-three-bounce">
			<div class="sk-bounce1"></div>
			<div class="sk-bounce2"></div>
			<div class="sk-bounce3"></div>
		</div>
	</div>
</div>
<div style="display:none;"  id="dialog-role-list2" title="选择负责人">
	<div class="spiner-example">
		<div class="sk-spinner sk-spinner-three-bounce">
			<div class="sk-bounce1"></div>
			<div class="sk-bounce2"></div>
			<div class="sk-bounce3"></div>
		</div>
	</div>
</div>
<div style="display:none" id="dialog-product-list" title="添加产品">
	<div class="spiner-example">
		<div class="sk-spinner sk-spinner-three-bounce">
			<div class="sk-bounce1"></div>
			<div class="sk-bounce2"></div>
			<div class="sk-bounce3"></div>
		</div>
	</div>
</div>
<div style="display:none;" id="dialog-file" title="添加文件">
	<div class="spiner-example">
		<div class="sk-spinner sk-spinner-three-bounce">
			<div class="sk-bounce1"></div>
			<div class="sk-bounce2"></div>
			<div class="sk-bounce3"></div>
		</div>
	</div>
</div>
<script type="text/javascript">
	$('#number').blur(function(){
		var number = $(this).val();
		var prefixion = $('#prefixion').val();
		var contract_id = "";
		$.ajax({
			type: "post",
			async:false,
			url: "/index.php?m=contract&a=yanchong", 
			data: {number:number,contract_id:contract_id,prefixion:prefixion},
			dataType: "json",
			success : function(result){
				if(result.status != 1){
					swal('合同编号不能重复！','',"error");
					return false;
				}else{
					return true;
				}
			}
		});
	});
	$(document).ready(function(){
		$('#save_submit').prop('disabled',false);
		/*form表单验证*/
		$("#form").validate({
			submitHandler:function(form){
	            $('#save_submit').click(function(){
					$('#save_submit').prop('disabled',true);
				});
	            form.submit();
	        }    
		});
	});
	$(function(){
		$(document).on('click','#business_name',function () {
			var customer_id = $('#customer_id').val();
			$('#dialog-customer').dialog('open');
			$('#dialog-customer').load('/index.php?m=customer&a=clistDialog&customer_id='+customer_id);
		});
		$('#owner_name').click(function () {
			$('#dialog-role-list2').dialog('open');
			$('#dialog-role-list2').load('/index.php?m=user&a=listDialog');
			return false;
		});
		$(document).on('click','#customer_name',function () {
			$('#dialog-customer-list').dialog('open');
			$('#dialog-customer-list').load('/index.php?m=customer&a=listDialog');
		});
	});
	$("#dialog-role-list2").dialog({
		autoOpen: false,
		modal: true,
		width: 800,
		maxHeight: 400,
		buttons: { 
			"确定": function () {
				var item = $('input:radio[name="owner"]:checked').val();
				var name = $('input:radio[name="owner"]:checked').attr('rel');
				$('#owner_id').val(item);
				$('#owner_name').val(name);
				$(this).dialog("close"); 
			},
			"取消": function () {
				$(this).dialog("close");
			}
		},
		position: ["center", 100],
		close:function(){
			$(this).html('');
		}
	});
	
	$("#dialog-customer").dialog({
		autoOpen: false,
		modal: true,
		width: 800,
		maxHeight: 400,
		buttons: { 
			"确定": function () {
				var item = $('input:radio[name="customer"]:checked').val();
				var name = $('input:radio[name="customer"]:checked').parent().parent().next().html();
				var business_id = $('input:radio[name="customer"]:checked').parent().next().attr('value');
				var business_name = $('input:radio[name="customer"]:checked').parent().next().next().next().next().attr('value');
				$('#customer_id').val(item);
				$('#customer_name').val(name);
				$('#business_id').val(business_id);
				$('#business_name').val(business_name);
				
				//清空产品信息
				$('#add_products').html("");
				now_rows = 0;
				//追加产品信息
				$(".se_product_"+business_id).each(function(){
					now_rows += 1;
					var product_name = $(this).children("input:first-child").val();
					$('#view_row').remove();
					var product_id = $(this).attr('rel');
					var muns = 0;
					if(muns == 0){
						var ori_price = $(this).children("input:first-child").next().val();
						var discount_rate = $(this).children("input:first-child").next().next().val();
						var unit_price = $(this).children("input:first-child").next().next().next().val();
						var amount = $(this).children("input:first-child").next().next().next().next().val();
						var unit = $(this).children("input:first-child").next().next().next().next().next().val();
						var category_name = $(this).children("input:first-child").next().next().next().next().next().next().val();
						if(product_id != null){
							$('#product_name_'+now_rows).val(product_name);
							$('#add_products').append("<tr id='row_"+now_rows+"'><td style='text-align:center;'><a href='javascript:void(0);' class='reduce_one'><i class='icon-minus'></i></a></td><td><input type='hidden' name='business[product]["+now_rows+"][product_id]' id='product_id_"+now_rows+"' class='cproduct_id' value='"+product_id+"' /><input type='text' class='form-control' readonly='true' id='product_name_"+now_rows+"' style='border:none;!important' readonly='readonly' value='"+product_name+"'/></td><td><input type='text' id='product_ori_price_"+now_rows+"' name='business[product]["+now_rows+"][ori_price]' class='form-control' style='border:none;!important' readonly='readonly'  value='"+ori_price+"' /></td><td><input type='text' class='form-control product_discount_rate' name='business[product]["+now_rows+"][discount_rate]' id='product_discount_rate_"+now_rows+"' onkeyup='calculate("+now_rows+",1)' value='"+discount_rate+"'/></td><td><input type='text' class='form-control' name='business[product]["+now_rows+"][unit_price]' id='product_unit_price_"+now_rows+"' onkeyup='calculate("+now_rows+")' value='"+unit_price+"' /></td><td><input type='text' class='form-control amount' name='business[product]["+now_rows+"][amount]' id='product_amount_"+now_rows+"' onkeyup='calculate("+now_rows+")' value='"+amount+"'/></td><td><input type='text' style='border:none;!important' name='business[product]["+now_rows+"][unit]' readonly='readonly' class='form-control' value='"+unit+"'/></td><td><input type='text' class='form-control subtotal' name='business[product]["+now_rows+"][subtotal]' id='product_subtotal_"+now_rows+"' style='border:none;!important' readonly='readonly' rel='"+now_rows+"'/></td></tr>");
							calculate(now_rows);
						}
					}
				});
				$(this).dialog("close"); 
			},
			"取消": function () {
				$(this).dialog("close");
			}
		},
		position: ["center", 100],
		close:function(){
			$(this).html('');
		}
	});

	$("#dialog-customer-list").dialog({
		autoOpen: false,
		modal: true,
		width: 800,
		maxHeight: 400,
		position: ["center", 100],
		buttons: { 
			"确定": function () {
				var item = $('input:radio[name="customer"]:checked').val();
				var name = $('input:radio[name="customer"]:checked').parent().next().html();
				$('#customer_id').val(item);
				$('#customer_name').val(name);
				$('#business_id').val('');
				$('#business_name').val('');
				$(this).dialog("close"); 
			},
			"取消": function () {
				$(this).dialog("close");
			}
		},
		close:function(){
			$(this).html('');
		}
	});
</script>
<script type="text/javascript">
	var now_rows = 1;
	var total_row_id = 1;
	//减少一条信息
	$(document).on('click','.reduce_one',function(){
		var row_id = $(this).parent().parent().attr('id');
		row_val = row_id.substr(4);
		if($('#product_id_'+row_val).val() == ''){
			$('#'+row_id).remove();
			calculate(total_row_id);
		}else{
			swal({
				title: "温馨提示",
				text: "您确定要移除该商品吗?",
				type: "warning",
				showCancelButton: true,
				confirmButtonColor: "#DD6B55",
				confirmButtonText: "是的，我要移除！",
	       		cancelButtonText:'让我再考虑一下…',
				closeOnConfirm:false,
	        	closeOnCancel:false
	        }, 
	        function(isConfirm){
				if (isConfirm) {
					$('#'+row_id).remove();
					calculate(total_row_id);
					swal("移除成功！", "您已经移除了该商品信息！", "success");
				} else {
					// return false;
					swal("已取消","您取消了移除操作！","error");
				} 
			});
		}
		// now_rows --;
	});

	$(".addproduct").click(function(){
    	$('#dialog-product-list').dialog('open');
        $('#dialog-product-list').load('/index.php?m=product&a=mutildialog'); 
    });
	//商品浮动层
	$("#dialog-product-list").dialog({
		autoOpen: false,
		modal: true,
		width: 850,
		maxHeight: 500,
		position: ["center",100],
		buttons:{
			'保存':function(){
				$(".se_product").each(function(){
					now_rows += 1;
					var product_name = $(this).text();
					$('#view_row').remove();
					var product_id = $(this).attr('rel');
					var muns = 0;
					$('.cproduct_id').each(function(k, v){
						if($(v).val() == product_id){
							alert_crm('此产品已经存在，如需添加请直接修改数量!');
							muns += 1;
						}
					});
					if(muns == 0){
						var unit_price = $(this).children("input:first-child").val();
						var category_name = $(this).children("input:first-child").next().next().next().val();
						var standard = $(this).children("input:first-child").next().val();
						if(product_id != null){
							$('#product_name_'+now_rows).val(product_name);
							$('#add_products').append("<tr id='row_"+now_rows+"'><td style='text-align:center;'><a href='javascript:void(0);' class='reduce_one'><i class='icon-minus'></i></a></td><td><input type='hidden' name='business[product]["+now_rows+"][product_id]' id='product_id_"+now_rows+"' class='cproduct_id' value='"+product_id+"' /><input type='text' class='form-control' readonly='true' id='product_name_"+now_rows+"' style='border:none;!important' readonly='readonly' value='"+product_name+"'/></td><td><input type='text' id='product_ori_price_"+now_rows+"' name='business[product]["+now_rows+"][ori_price]' class='form-control' style='border:none;!important' readonly='readonly'  value='"+unit_price+"' /></td><td><input type='text' class='form-control product_discount_rate' name='business[product]["+now_rows+"][discount_rate]' id='product_discount_rate_"+now_rows+"' onkeyup='calculate("+now_rows+",1)' value='0.00'/></td><td><input type='text' class='form-control' name='business[product]["+now_rows+"][unit_price]' id='product_unit_price_"+now_rows+"' onkeyup='calculate("+now_rows+")' style='' value='"+unit_price+"' /></td><td><input type='text' class='form-control amount' name='business[product]["+now_rows+"][amount]' id='product_amount_"+now_rows+"' onkeyup='calculate("+now_rows+")' value='1'/></td><td><input type='text' style='border:none;!important' name='business[product]["+now_rows+"][unit]' readonly='readonly' class='form-control' value='"+standard+"'/></td><td><input type='text' class='form-control subtotal' name='business[product]["+now_rows+"][subtotal]' id='product_subtotal_"+now_rows+"' style='border:none;!important' readonly='readonly' rel='"+now_rows+"'/></td></tr>");
							calculate(now_rows);
						}
					}
				});
				$(this).dialog('close');
			},
			'取消':function(){
				$(this).dialog('close');
			}
		},
		close:function(){
			$(this).html('');
		}
	});
	//根据选项计算价格
	function calculate(param,par){
		par = par || 0;
		if($('#product_id_'+param).val() != '' && $('#product_id_'+param).val() != '0'){

			//先对当前Row进行计算
			var amount = $('#product_amount_'+param).val();//数量
			if (typeof(amount) != 'undefined' ) {
				//过滤数量
				amount = amount.replace(/\D/g,''); //清除"数字"和"."以外的字符
			}
			
			$('#product_amount_'+param).val(amount);

			//产品单价
			var ori_price = $('#product_ori_price_'+param).val();

			//产品售价
			var unit_price = $('#product_unit_price_'+param).val();
			if (typeof(unit_price) != 'undefined' ) {
				//过滤售价
				unit_price = unit_price.replace(/[^\d.]/g,""); //清除"数字"和"."以外的字符
				unit_price = unit_price.replace(/^\./g,""); //验证第一个字符是数字
				unit_price = unit_price.replace(/\.{2,}/g,"."); //只保留第一个, 清除多余的
				unit_price = unit_price.replace(".","$#$").replace(/\./g,"").replace("$#$",".");
				unit_price = unit_price.replace(/^(\-)*(\d+)\.(\d\d).*$/,'$1$2.$3'); //只能输入两个小数
			}
			$('#product_unit_price_'+param).val(unit_price);

			//产品折扣
			var discount = $('#product_discount_rate_'+param).val();
			if (typeof(discount) != 'undefined' ) {
				//过滤折扣
				discount = discount.replace(/[^\d.]/g,""); //清除"数字"和"."以外的字符
				discount = discount.replace(/^\./g,""); //验证第一个字符是数字
				discount = discount.replace(/\.{2,}/g,"."); //只保留第一个, 清除多余的
				discount = discount.replace(".","$#$").replace(/\./g,"").replace("$#$",".");
				discount = discount.replace(/^(\-)*(\d+)\.(\d\d).*$/,'$1$2.$3'); //只能输入两个小数
			}
			$('#product_discount_rate_'+param).val(discount);

			if( discount != 0){
				var discount_rate = $('#product_discount_rate_'+param).val();
			}else{
				var discount_rate = $('#discount_rate').val();
			}
			discount_rate = new Number(discount_rate);
			var product_discount = cal_discount_money(unit_price, amount);//折扣额	
			var unit_val = 0.00;
			if(par == 0){
				if(ori_price == 0 || ori_price == 0.00){
					discount_rate = '0.00';
				}else{
					discount_rate = parseFloat((ori_price-unit_price)/ori_price*100).toFixed(2);
					if(unit_price == 0 || unit_price == 0.00){
						discount_rate = '100.00';
					}
				}
				unit_val = unit_price;
				$('#product_discount_rate_'+param).val(discount_rate);
				var subtotal = parseFloat(unit_val*amount).toFixed(2); //小计
			}else{
				if(discount_rate > 0){
					discount_rate = parseFloat(discount_rate/100).toFixed(2);
					var unit_val = parseFloat(ori_price*(1-discount_rate)).toFixed(2);
				}else{
					var unit_val = parseFloat(ori_price).toFixed(2);
				}
				$('#product_unit_price_'+param).val(unit_val);
				var subtotal = parseFloat(unit_val*amount).toFixed(2); //小计
			}
			$('#product_subtotal_'+param).val(subtotal);
			$('#product_discount_'+param).val(product_discount);
			//合计数量
			var total_amount = 0;
			$('.amount').each(function(k, v){
				if($(v).val() != '' ||  $(v).val() != '0'){
					total_amount += new Number($(v).val());
				}
			});
			$('#total_amount_val').html(total_amount);
			$('#total_amount').val(total_amount);
			
			//合计小计
			var total_subtotal = 0.00;
			$('.subtotal').each(function(k, v){
				if($(v).val() != '' ||  $(v).val() != '0'){
					total_subtotal += new Number($(v).val());
				}
			});
			//alert(total_subtotal);
			$('#total_subtotal_val').text(total_subtotal.toFixed(2));
			$("#prime_price").val(total_subtotal.toFixed(2));
			$('#total_subtotal').val(total_subtotal.toFixed(2));
			$('#contract_price').val(total_subtotal.toFixed(2));
			$('#final_price').val(total_subtotal.toFixed(2));

			final_price_sum('rate');
		}else{
			return false;
		}
	}
	//根据选项计算价格 END
	/**
	 *计算销售价格
	 */
	function cal_discount_money(unit_price, amount, discount_rate){
		var product_discount = 0;
		if(discount_rate == 0){
			product_discount = 0;
		}else{
			product_discount = (unit_price * amount) * (discount_rate/100);
		}
		return parseFloat(product_discount).toFixed(2);
	}
	function final_price_sum(status){
		//产品合计
		var total_subtotal_val = $('#prime_price').val();
		//整单折扣
		var final_discount_rate = $('#final_discount_rate').val();
		if (status == 'contract_price') {
			//订单金额
			var final_price = $('#contract_price').val();
		} else {
			//订单金额
			var final_price = $('#final_price').val();
		}

		if (status == 'rate') {
			//过滤
			final_discount_rate = final_discount_rate.replace(/[^\d.]/g,""); //清除"数字"和"."以外的字符
			final_discount_rate = final_discount_rate.replace(/^\./g,""); //验证第一个字符是数字
			final_discount_rate = final_discount_rate.replace(/\.{2,}/g,"."); //只保留第一个, 清除多余的
			final_discount_rate = final_discount_rate.replace(".","$#$").replace(/\./g,"").replace("$#$",".");
			final_discount_rate = final_discount_rate.replace(/^(\-)*(\d+)\.(\d\d).*$/,'$1$2.$3'); //只能输入两个小数
			$('#final_discount_rate').val(final_discount_rate);

			if (final_discount_rate > 100) {
				$('#final_discount_rate').val('0.00');
				$('#final_discount_rate').focus();
				final_price_sum('rate');
				alert_crm('整单折扣不能大于100');
				return false;
			}

			final_price = parseFloat(total_subtotal_val*(1-final_discount_rate/100)).toFixed(2);
			$('#final_price').val(final_price);
		} else {
			//过滤
			final_price = final_price.replace(/[^\d.]/g,""); //清除"数字"和"."以外的字符
			final_price = final_price.replace(/^\./g,""); //验证第一个字符是数字
			final_price = final_price.replace(/\.{2,}/g,"."); //只保留第一个, 清除多余的
			final_price = final_price.replace(".","$#$").replace(/\./g,"").replace("$#$",".");
			final_price = final_price.replace(/^(\-)*(\d+)\.(\d\d).*$/,'$1$2.$3'); //只能输入两个小数

			//整单折扣
			if(final_price == 0 || final_price == 0.00 || total_subtotal_val == 0 || total_subtotal_val == 0.00){
				final_discount_rate = '0.00';
			}else{
				final_discount_rate = parseFloat((total_subtotal_val-final_price)/total_subtotal_val*100).toFixed(2);
			}

			$('#final_discount_rate').val(final_discount_rate);
		}
		$('#contract_price').val(final_price);
		$('#final_price').val(final_price);
	}
</script>
<script type="text/javascript">
$("#dialog-file").dialog({
    autoOpen: false,
    modal: true,
	width: 800,
	maxHeight: 400,
	position: ["center",100],
	buttons: {
		"确定": function () {
		   $.ajax({
                cache: true,
                type: "POST",
                url:'/index.php?m=file&a=getfiles',
                data:$('#uploadForm').serialize(),
                async: false,
                success: function(data) {
                   var result = data.data.file_list;
                   $('#filecontent').removeAttr('class');
                   var temp = '';
                   if(result){
                   		 $.each(result,function(k,v){
                   		 	temp += '<div class="showfile" id="del_'+v.file_id+'"><input type="hidden" name="file[]" value="'+v.file_id+'"/><img src="productImg/'+v.pic+'">&nbsp;<span style="color:#646464;">'+v.name+'&nbsp;(&nbsp;'+v.size+'KB&nbsp;)</span>&nbsp;&nbsp;<a href="javascript:;" rel="'+v.file_id+'" onclick="del_file(this);"><img src="img/delfile.png"/></a></div>';
                  		 });
                  		 $('#addfilediv').before(temp);
                  		 var old_file_num = Number($('#file_num').html());
                  		 var old_file_size = Number($('#file_size').html());
                  		 var new_file_num = old_file_num+data.data.file_num;
                  		 var new_file_size = old_file_size+data.data.file_size;
                  		 $('#file_num').html(new_file_num);
                  		 $('#file_size').html(new_file_size);
                   }
                  
                }
            });
		   $(this).dialog("close");
		},
		"取消": function () {
			 $(this).dialog("close");
		}
	}
});

$(".addfile").click(function(){
	$('#dialog-file').dialog('open');
	$('#dialog-file').load('/index.php?m=file&a=addlogfile');
});

//删除 函数
function del_obj(id){
    var module = 'contract';
    $.post("/index.php?m=file&a=filedel",{file_id:id,module:module},function(data){
		if(data.status == 1){
			$('#del_'+id).remove();
			swal("删除成功！", "你的文件被删除了", "success");
			if($('.showfile').length > 0){
				return true;
			}else{
				$('#filecontent').addClass('hide');
			}
		}else{
		 	swal({
				title: "提示",
				text: data.info,
				type: "error"
			});
		}
		},"json"
	);
}
//删除
function del_file(obj){
	var id = $(obj).attr('rel');
	swal({
		title: "您确定要删除附件信息吗？",
		text: "删除后将无法恢复，请谨慎操作！",
		type: "warning",
		showCancelButton: true,
		confirmButtonColor: "#DD6B55",
		confirmButtonText: "删除",
		cancelButtonText: "取消",
		closeOnConfirm: false
	},
	function(isConfirm){
		if (isConfirm) {
			del_obj(id);
		}else{
			return false;
		}
	});
}
//全部删除 函数
function delall(){
	swal({
		title: "您确定要删除附件信息吗？",
		text: "删除后将无法恢复，请谨慎操作！",
		type: "warning",
		showCancelButton: true,
		confirmButtonColor: "#DD6B55",
		confirmButtonText: "删除",
		cancelButtonText: "取消",
		closeOnConfirm: false
	},
	function(isConfirm){
		if (isConfirm) {
			$('.showfile').each(function(){
				var id = $(this).find('input[type="hidden"]').val();
				del_obj(id);		
			});
		}else{
			return false;
		}
	});
}
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
			list += "<li class='($vo['type']}'>"+t_name+"<a href='/index.php?m=contract&a=view&id=302'>1111111111111111111的合同</a></li>";var t_type = "contract";
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
			list += "<li class='($vo['type']}'>"+t_name+"<a href='/index.php?m=business&a=view&id=318'>M_20171205-0318</a></li>";var t_type = "customer";
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
			list += "<li class='($vo['type']}'>"+t_name+"<a href='/index.php?m=customer&a=view&id=739'>美的集团股份有限公司</a></li>";var t_type = "customer";
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
			list += "<li class='($vo['type']}'>"+t_name+"<a href='/index.php?m=customer&a=view&id=470'>郑州职业技术学院</a></li>"; 	      $(document.body).prepend("<div style='position:fixed;left:0;top:35%;z-index:1000;'><div id='recordBtn' style='display:none;position:absolute;left:0px;top:0px;width:27px; height:27px;cursor: pointer;background: url(Public/img/record.png) left top no-repeat;'></div><div class='recordBox' style='z-index: 1000;display:block; position:absolute;left:-222px;top:26px;width:220px;min-height:30px; max-height:550px; background:#fff; border:1px solid #ccc'><span class='recordClose' style='position:absolute;right:15px; top:10px; display:block;width:9px; height:9px;cursor: pointer;  background:url(Public/img/record.png) -3px -29px;z-index:998;'></span><span class='fixed'></span><div class='title'><i></i>最近访问</div><ul style='list-style:none'>"+list+"</ul></div></div>");
 
     
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
</div>
<!-- nice-scroll -->
<script src="style/js/plugins/nice-scroll/jquery.nicescroll.min.js" type="text/javascript"></script>
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
<div class="small-chat-box fadeInRight animated" id="feedback_div" style="z-index:1001;width:385px;height:500px;background-color: #f9f9f9;border-color:#ccc;" >
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
</div>
<div id="down_url" style="display:none;width:120px;height:120px;background-color: #000;z-index: 1009;position: fixed;bottom:65px;right:160px;text-align: center;">
	<img src="img/download.jpg" style="width:120px;height:120px;"/>
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
                             temp += '<img alt="头像" style="height:38px;width:38px" class="img-circle" src="img/avatar_default.png" />';
                        }
                        temp += '<small class="chat-date"></small>\
                        </div>\
                            <div class="chat-message right_chat-message">'+question+'</div>\
                        </div>';
                    $.each(data.data, function(k, v){
                        temp += '<div class="left">\
                                    <div class="author-name">\
                                        <img alt="头像" style="height:32px;width:32px" class="img-circle" src="img/wukong.png">\
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
                         temp += '<img alt="头像" style="height:38px;width:38px" class="img-circle" src="img/avatar_default.png" />';
                    }
                    temp += '<small class="chat-date"></small>\
                        </div>\
                            <div class="chat-message right_chat-message">'+question+'</div>\
                        </div>';
                    temp += '<div class="left">\
                        <div class="author-name">\
                            <img alt="头像" style="height:32px;width:32px" class="img-circle" src="img/wukong.png">\
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
                     temp += '<img alt="头像" style="height:38px;width:38px" class="img-circle" src="img/avatar_default.png" />';
                }
                temp += '<small class="chat-date"></small>\
                    </div>\
                        <div class="chat-message right_chat-message">'+question+'</div>\
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
<script type='text/javascript'>

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
</body>
</html>