<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta charset="utf-8">
	<title>登录</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<meta name="description" content=""/>
	<meta name="author" content="悟空CRM"/>
	<link rel="shortcut icon" href="/Public/ico/favicon.png"/>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link type="text/css" href="css/bootstrap-responsive.min.css" rel="stylesheet">
    <link href="css/toastr.min.css" rel="stylesheet">
	<link rel="stylesheet" href="css/baseuser.css"/> 
	<script src="js/jquery-2.1.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- <script src="js/icheck.min.js"></script> -->
    <script src="js/toastr.min.js"></script>
    <script src="js/jquery.base64.js"></script>
	<script src="js/jquery.md5.js"></script>
    <!-- ladda -->
	<script src="js/spin.min.js"></script>
	<script src="js/ladda.min.js"></script>
	<script src="js/ladda.jquery.min.js"></script>
	<link href="css/ladda-themeless.min.css" rel="stylesheet">
</head>
<style>
	.errorInput {border:1px solid red;}
</style>
<body>
<div class="content-login">
    <div class="imgdefault" style="background: #00a7f2">
	    <div class="bancontent">
	   		<a target="_blank" href="http://www.crm.cc"><img src="img/default.png" title="告别繁琐 让工作更加'轻' '薄'" border="0"/></a>
	    </div>
    </div>
    <div class="logininfo">
	    <div class="logininfowidth">
	        <div class="loginrq ">
	            <a href="javascript:;">
	               	<img src= "img/5a93b960bbfc61815.png" style="width: 234px;height:72px;" />
	            </a>
	        </div>
		    <form action="" class="formtheme" method="post" id="login_form">
			    <div class="logininputList logininputListUser">
			        <input type="text" class="inputinfo" name="name" id="name" placeholder="账号" value="admin" autofocus="autofocus">
			     </div>
			    <div class="logininputList logininputListPwd">
			 		<input type="password" class="inputinfo" name="password" id="password" value="123456" placeholder="密码">
			    </div>
			    <div class="logininputList" style="margin-top:-12px;margin-bottom: 10px;">
					<button class="ladda-button loginBtninfo" id="loginsub" data-style="zoom-in" type="submit">
						<span class="ladda-label">登 录</span><span class="ladda-spinner"></span>
					</button>
			    </div>
			    <p class="logininputList" style="padding-top: 30px;"><a style="margin-right: 15px;" href="/index.php?m=user&a=lostpw">忘记密码?</a></p>
		    </form>
		    <p style="text-align: center;top:180px;position: relative;">
		    	<a href="http://www.crm.cc" target="_blank"><small>&copy;2018 悟空CRM</small></a>
		 	</p>
	    </div>     
    </div>
</div>
</body>
<script type="text/javascript">
	// $('body').keydown(function(event){
	//     if(event.keyCode == "13"){
	//         $('#loginsub').click();
	//     }
	// });
	$('#loginsub').click(function() {
		$.base64.utf8encode = true;
		if($('#name').val() == ''){
			$('#name').focus();
			return false;
		}
		if($('#password').val() == ''){
			$('#password').focus();
			return false;
		}
		if($('#password').val()){
			$('#password').val($.md5($.trim($('#password').val())));
		}
	});
	//保存按钮loading
	$( '.ladda-button' ).ladda( 'bind', { timeout: 2000 } );
</script>
</html>