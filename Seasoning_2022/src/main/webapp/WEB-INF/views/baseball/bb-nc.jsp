<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Season + ing ㅣ baseball-nc</title>
<link rel="stylesheet" href="${rootPath}/static/css/nav.css" />
<link rel="stylesheet" href="${rootPath}/static/css/kbo-box.css?ver=2022-06-14-005" />
<link rel="stylesheet" href="${rootPath}/static/css/area-view.css" />
<link rel="stylesheet" href="${rootPath}/static/css/schedule.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js"></script>

</head>
<body>
	<header>
		<%@ include file="/WEB-INF/views/nav.jsp" %>
	</header>
	
	<section>
		<article>
			<h1>KBO</h1>
			<div id="kbo-box">
				<div id="korea-map">
					<img src="${rootPath}/static/images/korea-map.png" />
				</div>

				<div id="ticket-book">
					
					<div style="display: none;">
						<p id="st_x">35.222156</p>
						<p id="st_y">128.583003</p>
					</div>
					
					<!-- 경기일정 부분 따로 뺌 -->
					<%@ include file="/WEB-INF/views/baseball/bb-schedule.jsp"%>
				</div>

			</div>
			
			<a href="${rootPath}/baseball/bb-dusan"><div class="map-point dusan">두산 베어스</div></a>
			<a href="${rootPath}/baseball/bb-lg"><div class="map-point lg">LG 트윈스</div></a>
	        <a href="${rootPath}/baseball/bb-samsung"><div class="map-point samsung">삼성 라이온즈</div></a>
	        <a href="${rootPath}/baseball/bb-kiwoom"><div class="map-point kiwoom">키움 히어로즈</div></a>
	        <a href="${rootPath}/baseball/bb-kt"><div class="map-point kt">KT 위즈</div></a>
	        <a href="${rootPath}/baseball/bb-lotte"><div class="map-point lotte">롯데 자이언츠</div></a>
	        <a href="${rootPath}/baseball/bb-ssg"><div class="map-point ssg">SSG 랜더스</div></a>
	        <a href="${rootPath}/baseball/bb-hanwha"><div class="map-point hanwha">한화 이글스</div></a>
	        <a href="${rootPath}/baseball/bb-kia"><div class="map-point kia">kia 타이거즈</div></a>
	        <a href="${rootPath}/baseball/bb-nc"><div class="map-point nc" style="font-size: 18px; background-color: rgb(0, 24, 65);">NC 다이노스</div></a>
	        
		</article>
		<article>
			<h1 id="around-tour-text">주변 관광지</h1>

			<div id="around-tour-box">

				<!-- 카카오 지도 -->
				<div id="map" style="width: 780px; height: 700px"></div>

				<div id="tour-list">
					<div id="choice-tour-menu">
						<a><div id="choice-all">전체</div></a> <a><div>식당</div></a> <a><div>숙박</div></a>
					</div>
					<p>
						총 <span>100</span>개의 결과가 있습니다
					</p>
					<div id="list-detail">

						<div class="tour-detail">
							<div class="detail-img">
								<img src="" />
							</div>
							<div>
								<p>[숙박]</p>
								<p></p>
								<a><div class="detail-watch">
										</href>
										자세히 보러가기
									</div></a>
							</div>
						</div>

					</div>
				</div>
			</div>
		</article>

		<div>
			<!-- 인기 관광지 -->
			<%@ include file="/WEB-INF/views/popular/popular.jsp"%>
		</div>

	</section>
	<footer></footer>
</body>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=be01097258cdbbe3042dc5464adc574e&libraries=services,clusterer">
	
</script>
<script src="${rootPath}/static/js/bb_map.js?ver=2022-06-10-011"></script>
</html>
