<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Season + ing ㅣ fb-gangwon2</title>
<link rel="stylesheet" href="${rootPath}/static/css/nav.css" />
<link rel="stylesheet" href="${rootPath}/static/css/k-league-box.css?ver=2022-06-15-001" />
<link rel="stylesheet" href="${rootPath}/static/css/area-view.css?ver=2022-06-11-012" />
<link rel="stylesheet" href="${rootPath}/static/css/kakao_map.css?ver=2022-06-15-002" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js"></script>

</head>
<body>
	<header>
		<%@ include file="/WEB-INF/views/nav.jsp"%>
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
						<p id="st_x">37.773561</p>
						<p id="st_y">128.897503</p>
					</div>

					<!-- 경기일정 부분 따로 뺌 -->
					<%@ include file="/WEB-INF/views/football/fb-schedule.jsp"%>
				</div>

			</div>

			<a href="${rootPath}/football/fb-seoul">
				<div class="map-point" id="seoul">FC 서울</div>
			</a>
			<a href="${rootPath}/football/fb-gangwon1">
				<div class="map-point" id="gangwon1">강원 FC(춘천)</div>
			</a>
			<a href="${rootPath}/football/fb-gangwon2">
				<div class="map-point" id="gangwon2" style="font-size: 18px; background-color: rgb(0, 24, 65);">강원 FC(강릉)</div>
			</a>
			<a href="${rootPath}/football/fb-gimcheon">
				<div class="map-point" id="gimcheon">김천 상무</div>
			</a>
			<a href="${rootPath}/football/fb-daegu">
				<div class="map-point" id="deagu">대구 FC</div>
			</a>
			<a href="${rootPath}/football/fb-seongnam">
				<div class="map-point" id="seongnam">성남 FC</div>
			</a>
			<a href="${rootPath}/football/fb-suwon_ss">
				<div class="map-point" id="suwon_ss">수원 삼성</div>
			</a>
			<a href="${rootPath}/football/fb-suwon">
				<div class="map-point" id="suwon">수원 FC</div>
			</a>
			<a href="${rootPath}/football/fb-ulsan">
				<div class="map-point" id="ulsan">울산 현대</div>
			</a>
			<a href="${rootPath}/football/fb-incheon">
				<div class="map-point" id="incheon">인천 UNT</div>
			</a>
			<a href="${rootPath}/football/fb-jeonbuk">
				<div class="map-point" id="jeonbuk">전북 현대</div>
			</a>
			<a href="${rootPath}/football/fb-jeju">
				<div class="map-point" id="jeju">제주 UNT</div>
			</a>
			<a href="${rootPath}/football/fb-pohang">
				<div class="map-point" id="pohang">포항 스틸러스</div>
			</a>

		</article>
		<article>
			<h1 id="around-tour-text">주변 관광지</h1>

			<div class="map_wrap">
				<div id="map"></div>
				<div id="menu_wrap" class="bg_white">
					<div class="around-tour-button">
						<form onsubmit="searchPlaces1(); return false;">
							<button id="keyword1" type="submit" value="강원도 강릉시 종합운동장길 69 맛집">식당</button>
						</form>
						<form onsubmit="searchPlaces2(); return false;">
							<button type="submit" value="강원도 강릉시 종합운동장길 69 숙박" id="keyword2">숙박</button>
						</form>
					</div>
					<hr>
					<ul id="placesList"></ul>
					<div id="pagination"></div>
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
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=be01097258cdbbe3042dc5464adc574e&libraries=services,clusterer">
	
</script>
<script src="${rootPath}/static/js/fb_map.js?ver=2022-06-10-002"></script>
<script src="${rootPath}/static/js/btn.js?var=2022-06-15-001"></script>

</html>
