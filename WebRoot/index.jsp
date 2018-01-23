<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>束手就擒</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="束手就擒">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
  </head>
  
  <body>
  	手机号:<input type="text" id="phone" /><input type="button" value="发送验证码" id="btn"><br/><br />
  	验证码:<input type="text" id="sms" /> <input type="button" value="登录" id="login"/>
  	<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
  	<script type="text/javascript">
  	var code = "";
  		//获取到输入的手机号
  		$("#btn").click(function(){
  			//利用ajax将获取到的手机号发送给后台
  			var phone = $("#phone").val();
  			$.ajax({
  				//发送的地址
  				url:"sendSMS",
  				//发送的方式
  				type:"post",
  				//发送的参数
  				data:{"phone":phone},
  				//返回结果
  				success: function(result){
  					code = result;
  				}
  				
  			});
  		});
  		$("#login").click(function(){
  			//验证验证码
  			var sms = $("#sms").val();
  			if(sms == ""){
  				alert("请输入验证码");
  			}else{
  					if(code == sms){
  						alert("登录成功");
  					}else{
  						alert("验证码错误");
  					}
  			}
  		});
  	</script>
  	
  	
  </body>
</html>
