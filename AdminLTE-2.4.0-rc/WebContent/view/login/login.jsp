<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>AdminLTE 2 | Log in</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- Bootstrap 3.3.7 -->
<link rel="stylesheet"
	href="<%= request.getContextPath() %>/resources/bower_components/bootstrap/dist/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="<%= request.getContextPath() %>/resources/bower_components/font-awesome/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="<%= request.getContextPath() %>/resources/bower_components/Ionicons/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/dist/css/AdminLTE.min.css">
<!-- iCheck -->
<link rel="stylesheet" href="<%= request.getContextPath() %>/resources/plugins/iCheck/square/blue.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

<!-- Google Font -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition login-page">
	<div class="login-box">
		<div class="login-logo">
			<a href="../../index2.html"><b>Admin</b>LTE</a>
		</div>
		<!-- /.login-logo -->
		<div class="login-box-body">
			<p class="login-box-msg">로그인하여 세션을 시작하십시오.</p>

			<form action="./loginprocess.jsp" method="post">
				<div class="form-group has-feedback">
					<input type="email" class="form-control" id="email" name="email"
						placeholder="이메일"> <span
						class="glyphicon glyphicon-envelope form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<input type="password" class="form-control" id="password" name="password"
						placeholder="비밀번호"> <span
						class="glyphicon glyphicon-lock form-control-feedback"></span>
				</div>
				<div class="row">
					<div class="col-xs-8">
						<div class="checkbox icheck">
							<label> <input type="checkbox"> 아이디 저장
							</label>
						</div>
					</div>
					<!-- /.col -->
					<div class="col-xs-4">
						<button type="submit" class="btn btn-primary btn-block btn-flat"
							id="btn1">로그인</button>
					</div>
					<!-- /.col -->
				</div>
			</form>

			<div class="social-auth-links text-center">
				<p>- OR -</p>
				<a href="#" class="btn btn-block btn-social btn-facebook btn-flat"><i
					class="fa fa-facebook"></i> 페이스북으로 로그인하기</a> <a href="#"
					class="btn btn-block btn-social btn-google btn-flat"><i
					class="fa fa-google-plus"></i> 구글로 로그인하기</a>
			</div>
			<!-- /.social-auth-links -->

			<a href="#">비밀번호 찾기</a><br> <a href="register.html"
				class="text-center">회원가입</a>

		</div>
		<!-- /.login-box-body -->
	</div>
	<!-- /.login-box -->

	<!-- jQuery 3 -->
	<script src="<%= request.getContextPath() %>/resources/bower_components/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap 3.3.7 -->
	<script src="<%= request.getContextPath() %>/resources/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- iCheck -->
	<script src="<%= request.getContextPath() %>/resources/plugins/iCheck/icheck.min.js"></script>
	<script>
		$(function() {
			$('input').iCheck({
				checkboxClass : 'icheckbox_square-blue',
				radioClass : 'iradio_square-blue',
				increaseArea : '20%' // optional
			});
		});
	</script>
	<!-- <script type="text/javascript">
		//<![CDATA[
		function login(id, pw) {
			if (id == "hanguk@naver.com") {
				if (pw == "1234") {
					alert(id + "님 방문을 환영합니다.");
					return true;
				} else {
					alert("잘못된 비밀번호입니다.");
				}
			} else {
				alert("존재하지 않는 아이디입니다.");
			}
			return false;
		}
		/*질의응답 창을 이용해 방문자에게  아이디와 
		 비밀번호를 입력받습니다.*/
		//var user_id = prompt("아이디를 입력하세요.", "")
		document.getElementById("btn1").onclick = function(){
			var user_id = document.getElementById("email").value;
			var user_pw = document.getElementById("password").value;
			var result = login(user_id, user_pw);
			if(!result){
				return false;
			}
		}

		//방문자가 입력한 비밀번호와 아이디를 함수의 매개 변수에 전달합니다.
		//login(user_id, user_pw);
		//]]>
	</script> -->
</body>
</html>
