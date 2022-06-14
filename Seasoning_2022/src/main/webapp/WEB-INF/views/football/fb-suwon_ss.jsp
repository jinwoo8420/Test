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
<title>Season + ing ㅣ fb-suwon_ss</title>
<link rel="stylesheet" href="${rootPath}/static/css/nav.css" />
<link rel="stylesheet" href="${rootPath}/static/css/k-league-box.css" />
<link rel="stylesheet"
	href="${rootPath}/static/css/area-view.css?ver=2022-06-11-012" />
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
			<h1>케이리그</h1>
			<div id="k-league-box">
				<div id="korea-map">
					<img src="${rootPath}/static/images/korea-map.png" />
				</div>

				<div id="ticket-book">
					<div style="display: none;">
						<p id="st_x">37.286421</p>
						<p id="st_y">127.036855</p>
					</div>

					<!-- 경기일정 부분 따로 뺌 -->
					<%@ include file="/WEB-INF/views/football/fb-schedule.jsp"%>
				</div>

			</div>
			
			<a href="${rootPath}/football/fb-seoul"><div class="map-point seoul">FC 서울</div></a> 
			<a href="${rootPath}/football/fb-gangwon1"><div class="map-point gangwon1">강원 FC(춘천)</div></a> 
 			<a href="${rootPath}/football/fb-gangwon2"><div class="map-point gangwon2">강원 FC(강릉)</div></a> 
			<a href="${rootPath}/football/fb-gimcheon"><div class="map-point gimcheon">김천 상무</div></a> 
			<a href="${rootPath}/football/fb-daegu"><div class="map-point deagu">대구 FC</div></a> 
			<a href="${rootPath}/football/fb-seongnam"><div class="map-point seongnam">성남 FC</div></a> 
			<a href="${rootPath}/football/fb-suwon_ss"><div class="map-point suwon_ss" style="font-size: 18px; background-color: rgb(0, 24, 65);">수원 삼성</div></a>
			<a href="${rootPath}/football/fb-suwon"><div class="map-point suwon">수원 FC</div></a>
			<a href="${rootPath}/football/fb-ulsan"><div class="map-point ulsan">울산 현대</div></a> 
			<a href="${rootPath}/football/fb-incheon"><div class="map-point incheon">인천 UNT</div></a> 
			<a href="${rootPath}/football/fb-jeonbuk"><div class="map-point jeonbuk">전북 현대</div></a> 
			<a href="${rootPath}/football/fb-jeju"><div class="map-point jeju">제주 UNT</div></a> 
			<a href="${rootPath}/football/fb-pohang"><div class="map-point pohang">포항 스틸러스</div></a>
			
		</article>
		<article>
			<h1 id="around-tour-text">주변 관광지</h1>
			<div id="around-tour-box">

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
<script src="${rootPath}/static/js/fb_map.js?ver=2022-06-10-002"></script>

</html>
