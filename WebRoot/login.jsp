<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    if (session.getAttribute("currentUser") != null) {
        out.println("<script>alert('您已登录！');window.location.href='main.jsp';</script>");
    }
%>
<!DOCTYPE html PUBLIC "-//W3C//Dtd HTML 4.01 Transitional//EN">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>登录</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <style type=text/css>
        body {
            text-align: center;
            padding-bottom: 0px;
            background-color: #ddeef2;
            margin: 0px;
            padding-left: 0px;
            padding-right: 0px;
            padding-top: 0px
        }

        A:link {
            COLOR: #000000;
            text-decoration: none
        }

        A:visited {
            COLOR: #000000;
            text-decoration: none
        }

        A:hover {
            COLOR: #ff0000;
            text-decoration: underline
        }

        A:active {
            text-decoration: none
        }

        .input {
            border-bottom: #ccc 1px solid;
            border-left: #ccc 1px solid;
            line-height: 20px;
            width: 182px;
            height: 20px;
            border-top: #ccc 1px solid;
            border-right: #ccc 1px solid
        }

        .input1 {
            border-bottom: #ccc 1px solid;
            border-left: #ccc 1px solid;
            line-height: 20px;
            width: 120px;
            height: 20px;
            border-top: #ccc 1px solid;
            border-right: #ccc 1px solid;
        }
    </style>
    <script type="text/javascript">
        function login() {
            var userName = $("#userName").val();
            var password = $("#password").val();
            var roleName = $("#roleName").val();
            if (userName == null || userName == "") {
                alert("用户名不能为空！");
                return;
            }
            if (password == null || password == "") {
                alert("密码不能为空！");
                return;
            }
            $("#adminlogin").submit();

        }
    </script>
</head>
<style>
* {
	margin: 0;
	padding: 0;
}

#login {
	height: 100vh;
	background: linear-gradient(#f2f9fd, #b0dcec);
	position: relative;
}

.login-bg {
	width: -webkit-fill-available;
	width: -moz-fill-available;
	width: -moz-available; /* FireFox目前这个生效 */
	position: absolute;
	bottom: 0;
	width: fill-available;
	height: 428px;
	background: url("./images/login-bg.png") no-repeat;
	background-size: cover;
}

.login-box {
	position: fixed;
	top: 10%;
	left: 0px;
	right: 0px;
	z-index: 999;
	width: 620px;
	margin: 0 auto 0;
}

.login-box .login-title {
	text-align: center;
	margin-bottom: 50px;
}

.login-title span {
	font-size: 36px;
	color: #2b96e2;
	letter-spacing: 0;
	line-height: 32px;
}

.login-main {
	width: 460px;
	padding: 0 80px;
	height: 460px;
	background: #ffffff;
	box-shadow: 0 15px 30px 0 rgba(111, 169, 228, 0.33);
	border-radius: 10px;
	text-align: center;
}

.login-main .title {
	font-size: 24px;
	color: #303030;
	letter-spacing: 0;
	line-height: 24px;
	padding: 50px 0;
}

.login-main input {
	margin-bottom: 30px;
	width: 460px;
	height: 64px;
	border-radius: 6px;
	padding: 10px;
	box-sizing: border-box;
	font-size: 16px;
	border: 1px solid #999;
	outline: none;
}

.login-main .button {
	height: 54px;
	color: #fff;
	background-color: #3f8fc8;
	border: none;
	cursor: pointer;
}

.help {
	display: inline-flex;
	justify-content: space-between;
	width: 460px;
}

.help a {
	font-size: 18px;
	cursor: pointer;
	line-height: 18px;
	text-decoration: none;
}

.help a:hover {
	text-decoration: underline;
}

.help  .help-l {
	color: #7a7f85;
}

.help  .help-r {
	color: #7a7f85;
}
</style>
<body>
	<div id="login">
		<div class="login-bg"></div>
		<div class="login-box">
			<div class="login-title">
				<span>护士站信息管理系统</span>
			</div>
			<div class="login-main">
				<p class="title">登录</p>
				<form name=adminlogin id=adminlogin action="${pageContext.request.contextPath}/user/login.do" method="post">
					<input type="text" class=input placeholder="请输入用户名" value="${user.userName }" name="userName" id="userName" />
					</br>
					<input type="password" placeholder="请输入密码" class=input value="${user.password }" name="password" id="password" />
					</br>
					<input type="submit" class="button" value="登录">
<<<<<<< HEAD
					
				</form>
				
				<p class="help">
					<!-- <a href="reset_password.jsp" class="help-l">忘记密码</span> 
					<a href="register.jsp" class="help-r">注册</span> -->
				</p>
			</div>
		</div>
	<div id="login">
		<div class="login-bg"></div>
		<div class="login-box">
			<div class="login-title">
				<span>护士站信息管理系统</span>
			</div>
			<div class="login-main">
				<p class="title">登录</p>
				<form name=adminlogin id=adminlogin action="${pageContext.request.contextPath}/user/login.do" method="post">
					<input type="text" class=input placeholder="请输入用户名" value="${user.userName }" name="userName" id="userName" />
					</br>
					<input type="password" placeholder="请输入密码" class=input value="${user.password }" name="password" id="password" />
					</br>
					<input type="submit" class="button" value="登录">
=======
>>>>>>> branch 'master' of https://github.com/chenjunxin-cjx/NSIMS.git
				</form>
				<p class="help">
					<!-- <a href="reset_password.jsp" class="help-l">忘记密码</span> 
					<a href="register.jsp" class="help-r">注册</span> -->
				</p>
			</div>
		</div>
</body>
</html>
</script>