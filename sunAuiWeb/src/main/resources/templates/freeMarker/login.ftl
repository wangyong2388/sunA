<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户登录</title>
<link rel="stylesheet" href="/bootstrap/css/bootstrap-theme.min.css" type="text/css" />
<link rel="stylesheet" href="/bootstrap/css/cover.css" type="text/css" />
<link rel="stylesheet" href="/bootstrap/css/ie10-viewport-bug-workaround.css" type="text/css" />
<link rel="stylesheet" href="/bootstrap/css/signin.css" type="text/css" />
<link rel="stylesheet" href="/css/core.css" type="text/css" />
<script type="text/javascript" src="/js/jquery/jquery-2.1.3.js"></script>
<script type="text/javascript" src="/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/js/jquery.bootstrap.min.js"></script>
<script type="text/javascript" src="/js/plugins/jquery-validation/jquery.validate.js"></script>
<script type="text/javascript" src="/js/plugins/jquery-validation/localization/messages_zh.js"></script>
<script type="text/javascript" src="/js/plugins/jquery.form.js"></script>

<style type="text/css">
	.el-login-form{
		width:600px; 
		margin-left:auto;
		margin-right:auto;
		margin-top: 20px;
	}
	.el-login-form .form-control{
		width: 220px;
		display: inline;
	}
</style>
<script type="text/javascript">
	 function login() {
			 var remFlag=$("#remFlag").val();
			var password=$("[name='password']").val();
			var username=$("[name='username']").val();
				 if(username == ''){
			            document.getElementById('tip').innerHTML = "用户名不能为空";
			        }else if(password == ''){
						 document.getElementById('tip').innerHTML = "密码不能为空";
					 }else{
						 $.ajax({
								url:"/loginn",
								data:{
									"password":password,
									"username":username,
									"remFlag":remFlag
								},
								type:"post",
								dataType:"text",
								success:function(data){
									if(data == "1"){
										location.href="/successLogin.do";
									}else if(data == "2"){
										confirm("账号或密码不正确,请重新输入")
									}else{
										confirm("账号不存在,请重新输入")
									}	
								},
								 error:function(e){
					                    alert("错误！！");
					                    window.clearInterval(timer);
					                }
							});
					 }
	 }
	 $(document).ready(function(){
	        //记住密码功能
	        var str = getCookie("loginInfo");
	        str = str.substring(1,str.length-1);
	        var username = str.split(",")[0];
	        var password = str.split(",")[1];
	        //自动填充用户名和密码
	        $("[name='username']").val(username);
	        $("[name='password']").val(password);
	});
	//获取cookie
	 function getCookie(cname) {
		    var name = cname + "=";
		    var ca = document.cookie.split(';');
		    for(var i=0; i<ca.length; i++) {
		        var c = ca[i];
		        while (c.charAt(0)==' ') c = c.substring(1);
		        if (c.indexOf(name) != -1) return c.substring(name.length, c.length);
		    }
		    return "";
		}
	//记住密码功能
	 function remember(){
		    var remFlag = $("input[type='checkbox']").is(':checked');
		    if(remFlag==true){ //如果选中设置remFlag为1
		        //cookie存用户名和密码,回显的是真实的用户名和密码,存在安全问题.
		        var conFlag = confirm("记录密码功能不宜在公共场所(如网吧等)使用,以防密码泄露.您确定要使用此功能吗?");
		        if(conFlag){ //确认标志
		            $("#remFlag").val("1");
		        }else{
		            $("input[type='checkbox']").removeAttr('checked');
		            $("#remFlag").val("");
		        }
		    }else{ //如果没选中设置remFlag为""
		        $("#remFlag").val("");
		    }
		}
	</script>
</head>


<body>
    <div class="site-wrapper">

      <div class="site-wrapper-inner">

        <div class="cover-container">

          <div class="masthead clearfix">
            <div class="inner">
              <h3 class="masthead-brand">浮夸吗</h3>
              <nav>
                <ul class="nav masthead-nav">
                  <li class="active"><a href="#">首页</a></li>
                  <li><a href="#">Features</a></li>
                  <li><a href="#">Contact</a></li>
                </ul>
              </nav>
            </div>
          </div>

         	<div class="container">

      <form class="form-signin">
        <h2 class="form-signin-heading">用户登录</h2>
         <br><br>
         <span id="tip"></span>
         <br>
        <label for="inputEmail" class="sr-only">用户名 :</label>
        <input type="text" class="form-control" placeholder="" required autofocus name="username">
        <br><br>
        <label for="inputPassword" class="sr-only">密&nbsp;&nbsp;&nbsp;码&nbsp;:</label>
        <input type="password"  class="form-control" placeholder="" required   name="password">
        <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <button class="btn btn-lg btn-primary btn-block" type="button" onclick="login()">登陆</button>
         <label>
            <input type="checkbox" value="remember-me" id="remFlag" onclick="remember()"> 记住密码
          </label>
        <div class="checkbox">
         
        </div>
        
      </form>

    </div> <!-- /container -->

          <div class="mastfoot">
            <div class="inner">
              <p>Cover template for <a href="http://getbootstrap.com">Bootstrap</a>, by <a href="https://twitter.com/mdo">@mdo</a>.</p>
            </div>
          </div>

        </div>

      </div>

    </div>

  </body>
</html>