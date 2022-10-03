<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>meal:log</title>
	<script src="https://code.iconify.design/iconify-icon/1.0.0/iconify-icon.min.js"></script>
	<link rel="apple-touch-icon" sizes="57x57" href="resources/favicon/apple-icon-57x57.png">
	<link rel="apple-touch-icon" sizes="60x60" href="resources/favicon//apple-icon-60x60.png">
	<link rel="apple-touch-icon" sizes="72x72" href="resources/favicon//apple-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="76x76" href="resources/favicon//apple-icon-76x76.png">
	<link rel="apple-touch-icon" sizes="114x114" href="resources/favicon//apple-icon-114x114.png">
	<link rel="apple-touch-icon" sizes="120x120" href="resources/favicon//apple-icon-120x120.png">
	<link rel="apple-touch-icon" sizes="144x144" href="resources/favicon//apple-icon-144x144.png">
	<link rel="apple-touch-icon" sizes="152x152" href="resources/favicon//apple-icon-152x152.png">
	<link rel="apple-touch-icon" sizes="180x180" href="resources/favicon//apple-icon-180x180.png">
	<link rel="icon" type="image/png" sizes="192x192"  href="resources/favicon//android-icon-192x192.png">
	<link rel="icon" type="image/png" sizes="32x32" href="resources/favicon//favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="96x96" href="resources/favicon//favicon-96x96.png">
	<link rel="icon" type="image/png" sizes="16x16" href="resources/favicon//favicon-16x16.png">
	<link rel="manifest" href="resources/favicon//manifest.json">
	<meta name="msapplication-TileColor" content="#ffffff">
	<meta name="msapplication-TileImage" content="resources/favicon//ms-icon-144x144.png">
	<meta name="theme-color" content="#ffffff">
	
	<link rel="stylesheet" href="resources/css/index.css"/>
	<script defer>
		function init() {
			var lis = document.querySelectorAll('.Nav li');
		
			for(var i = 0; i < lis.length; i++) {
				lis[i].setAttribute('onClick', 'lis_select(this)');
			}
		}
		
		function lis_select(e) {
			var before = document.querySelector('.Nav .select');
			before.className = '';
			
			e.className = 'select';
		}
	</script>
</head>
<body onload='init()'>
	<div class='Header'>
		<div class='title'>
			<div class='yolk'></div>
			<iconify-icon icon="fluent:food-egg-24-regular"></iconify-icon>
			Meal:<span>Log</span>
		</div>
		<div class='greet'>
			<iconify-icon icon="healthicons:ui-user-profile"></iconify-icon>
			박솜솜님, 식사 맛있게 하셨나요? 식단을 그룹원들에게 공유해보세요
			<div class='logout'>
				<iconify-icon icon="icon-park:logout"></iconify-icon>
				로그아웃
			</div>
		</div>
		
	</div>
	<div class='Nav'>
		<ul>
			<li>홈</li>
			<li>식단 추천</li>
			<li>그룹 매칭</li>
			<li class='select'>마이페이지</li>
		</ul>
	</div>
	<div class='Content'>
		<jsp:include page="/WEB-INF/home/home.jsp"/> <!-- 알갱이 만든걸 여기 경로 넣어서 적용 -->
	</div>
</body>
</html>


