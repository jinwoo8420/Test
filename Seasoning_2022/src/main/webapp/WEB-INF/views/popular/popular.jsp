<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />

<script src="${rootPath}/static/js/popular_silde.js?ver=2022-06-11-003"></script>
<link rel="stylesheet" href="${rootPath}/static/css/popular_view.css?ver=2022-06-15-001" />

<div class="popular_view">

	<!-- 지역별 관광지 부분 -->
	<h4 class="view-title">지역별 관광지</h4>
	<div class="area-view">
		<div class="area-container">
			<ul class="area-menu">
				<li><a class="seoul_btn">서울</a></li>
				<li><a class="incheon_btn">인천</a></li>
				<li><a class="daejeon_btn">대전</a></li>
				<li><a class="daegu_btn">대구</a></li>
				<li><a class="gwangju_btn">광주</a></li>
				<li><a class="busan_btn">부산</a></li>
				<li><a class="ulsan_btn">울산</a></li>
				<li><a class="sejong_btn">세종</a></li>
				<li><a class="gyeonggi_btn">경기</a></li>
				<li><a class="gangwon_btn">강원</a></li>
				<li><a class="chungbuk_btn">충북</a></li>
				<li><a class="chungnam_btn">충남</a></li>
				<li><a class="gyeongbuk_btn">경북</a></li>
				<li><a class="gyeongnam_btn">경남</a></li>
				<li><a class="jeonbuk_btn">전북</a></li>
				<li><a class="jeonnam_btn">전남</a></li>
				<li><a class="jeju_btn">제주</a></li>
			</ul>
		</div>
	</div>



	<!-- --------------------------------------------------------------------------------------------------------------------------------------- -->

	<div class="seoul">

		<h4 class="attraction">명소 관광지</h4>
		<div class="container-view">
			<div class="attraction-view">
				<div class="out">
					<div class="window">
						<div class="slides">
							<div class="slide">
								<c:forEach items="${SEOULtour}" var="SEOULtour">
									<div class="attr-container">
										<a href="${rootPath}/detail/fooddetail/${SEOULtour.contentid}" style="color: black">
											<span class="img"><img src="${SEOULtour.firstimage}"></span> <span>[명소]&nbsp; <b>${SEOULtour.title}</b></span> <span class="content"> <span>${SEOULtour.addr1}</span> <span>${SEOULtour.tel}</span>
											</span>
										</a>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="btn-box">
				<button class="btn prev">&#10094;</button>
				<button class="btn next">&#10095;</button>
			</div>


		</div>

		<h4 class="attraction">맛난 식당</h4>
		<div class="container-view">
			<div class="attraction-view">
				<div class="out">
					<div class="window">
						<div class="slides">
							<div class="slide">
								<c:forEach items="${SEOULfood}" var="SEOULfood">
									<div class="attr-container">
										<a href="${rootPath}/detail/fooddetail/${SEOULfood.contentid}" style="color: black">
											<span class="img"><img src="${SEOULfood.firstimage}"></span> <span>[식당]&nbsp; <b>${SEOULfood.title}</b></span> <span class="content"> <span>${SEOULfood.addr1}</span> <span>${SEOULfood.tel}</span>
											</span>
										</a>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="btn-box">
				<button class="btn prev">&#10094;</button>
				<button class="btn next">&#10095;</button>
			</div>

		</div>

		<h4 class="attraction">좋은 숙소</h4>
		<div class="container-view">
			<div class="attraction-view">
				<div class="out">
					<div class="window">
						<div class="slides">
							<div class="slide">
								<c:forEach items="${SEOULlodgment}" var="SEOULlodgment">
									<div class="attr-container">
										<a href="${rootPath}/detail/fooddetail/${SEOULlodgment.contentid}" style="color: black">
											<span class="img"><img src="${SEOULlodgment.firstimage}"></span> <span>[숙박]&nbsp; <b>${SEOULlodgment.title}</b></span> <span class="content"> <span>${SEOULlodgment.addr1}</span> <span>${SEOULlodgment.tel}</span>
											</span>
										</a>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>

		<div class="btn-box">
			<button class="btn prev">&#10094;</button>
			<button class="btn next">&#10095;</button>
		</div>

	</div>

	<!-- --------------------------------------------------------------------------------------------------------------------------------------- -->
	<div class="incheon">
		<div class="container-view incheon">
			<div class="attraction-view">

				<div class="out">
					<div class="window">
						<div class="slides">

							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[abc명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

	<!-- --------------------------------------------------------------------------------------------------------------------------------------- -->

	<div class="daejeon">
		<div class="container-view daejeon">
			<div class="attraction-view">

				<div class="out">
					<div class="window">
						<div class="slides">

							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[bbc명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

	<!-- --------------------------------------------------------------------------------------------------------------------------------------- -->

	<div class="daegu">

		<div class="container-view">
			<div class="attraction-view">
				<div class="out">
					<div class="window">
						<div class="slides">
							<div class="slide">
								<c:forEach items="${DAEGUtour}" var="DAEGUtour">
									<div class="attr-container">
										<a href="${rootPath}/detail/fooddetail/${DAEGUtour.contentid}" style="color: black">
											<span class="img"><img src="${DAEGUtour.firstimage}"></span> <span>[명소]&nbsp; <b>${DAEGUtour.title}</b></span> <span class="content"> <span>${DAEGUtour.addr1}</span> <span>${DAEGUtour.tel}</span>
											</span>
										</a>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="btn-box">
				<button class="btn prev">&#10094;</button>
				<button class="btn next">&#10095;</button>
			</div>


		</div>

		<h4 class="attraction">맛난 식당</h4>
		<div class="container-view">
			<div class="attraction-view">
				<div class="out">
					<div class="window">
						<div class="slides">
							<div class="slide">
								<c:forEach items="${DAEGUfood}" var="DAEGUfood">
									<div class="attr-container">
										<a href="${rootPath}/detail/fooddetail/${DAEGUfood.contentid}" style="color: black">
											<span class="img"><img src="${DAEGUfood.firstimage}"></span> <span>[식당]&nbsp; <b>${DAEGUfood.title}</b></span> <span class="content"> <span>${DAEGUfood.addr1}</span> <span>${DAEGUfood.tel}</span>
											</span>
										</a>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="btn-box">
				<button class="btn prev">&#10094;</button>
				<button class="btn next">&#10095;</button>
			</div>

		</div>

		<h4 class="attraction">좋은 숙소</h4>
		<div class="container-view">
			<div class="attraction-view">
				<div class="out">
					<div class="window">
						<div class="slides">
							<div class="slide">
								<c:forEach items="${DAEGUlodgment}" var="DAEGUlodgment">
									<div class="attr-container">
										<a href="${rootPath}/detail/fooddetail/${DAEGUlodgment.contentid}" style="color: black">
											<span class="img"><img src="${DAEGUlodgment.firstimage}"></span> <span>[숙박]&nbsp; <b>${DAEGUlodgment.title}</b></span> <span class="content"> <span>${DAEGUlodgment.addr1}</span> <span>${DAEGUlodgment.tel}</span>
											</span>
										</a>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
		
		<div class="btn-box">
			<button class="btn prev">&#10094;</button>
			<button class="btn next">&#10095;</button>
		</div>

	</div>
	<!-- --------------------------------------------------------------------------------------------------------------------------------------- -->
	<div class="gwangju">

		<div class="container-view gwangju">
			<div class="attraction-view">

				<div class="out">
					<div class="window">
						<div class="slides">

							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[abc명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

	<!-- --------------------------------------------------------------------------------------------------------------------------------------- -->

	<div class="busan">

		<div class="container-view busan">
			<div class="attraction-view">

				<div class="out">
					<div class="window">
						<div class="slides">

							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[bbc명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

	<!-- --------------------------------------------------------------------------------------------------------------------------------------- -->

	<div class="ulsan">

		<div class="container-view ulsan">
			<div class="attraction-view">

				<div class="out">
					<div class="window">
						<div class="slides">

							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	<!-- --------------------------------------------------------------------------------------------------------------------------------------- -->
	<div class="sejong">

		<div class="container-view sejong">
			<div class="attraction-view">

				<div class="out">
					<div class="window">
						<div class="slides">

							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[abc명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

	<!-- --------------------------------------------------------------------------------------------------------------------------------------- -->

	<div class="gyeonggi">

		<div class="container-view gyeonggi">
			<div class="attraction-view">

				<div class="out">
					<div class="window">
						<div class="slides">

							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[bbc명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

	<!-- --------------------------------------------------------------------------------------------------------------------------------------- -->

	<div class="gangwon">

		<div class="container-view gangwon">
			<div class="attraction-view">

				<div class="out">
					<div class="window">
						<div class="slides">

							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	<!-- --------------------------------------------------------------------------------------------------------------------------------------- -->

	<div class="chungbuk">

		<div class="container-view chungbuk">
			<div class="attraction-view">

				<div class="out">
					<div class="window">
						<div class="slides">

							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[abc명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

	<!-- --------------------------------------------------------------------------------------------------------------------------------------- -->

	<div class="chungnam">

		<div class="container-view chungnam">
			<div class="attraction-view">

				<div class="out">
					<div class="window">
						<div class="slides">

							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[bbc명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

	<!-- --------------------------------------------------------------------------------------------------------------------------------------- -->

	<div class="gyeongbuk">

		<div class="container-view gyeongbuk">
			<div class="attraction-view">

				<div class="out">
					<div class="window">
						<div class="slides">

							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	<!-- --------------------------------------------------------------------------------------------------------------------------------------- -->

	<div class="gyeongnam">

		<div class="container-view gyeongnam">
			<div class="attraction-view">

				<div class="out">
					<div class="window">
						<div class="slides">

							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[abc명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

	<!-- --------------------------------------------------------------------------------------------------------------------------------------- -->

	<div class="jeonbuk">

		<div class="container-view jeonbuk">
			<div class="attraction-view">

				<div class="out">
					<div class="window">
						<div class="slides">

							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[bbc명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

	<!-- --------------------------------------------------------------------------------------------------------------------------------------- -->

	<div class="jeonnam">

		<div class="container-view jeonnam">
			<div class="attraction-view">

				<div class="out">
					<div class="window">
						<div class="slides">

							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[bbc명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

	<!-- --------------------------------------------------------------------------------------------------------------------------------------- -->

	<div class="jeju">

		<div class="container-view jeju">
			<div class="attraction-view">

				<div class="out">
					<div class="window">
						<div class="slides">

							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[bbc명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>
							<div class="slide">
								<div class="attr-container">
									<span class="img"> <img src="" />
									</span> <span>[명소]&nbsp; <b>장소</b></span> <span class="content"> </span>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

	<!-- --------------------------------------------------------------------------------------------------------------------------------------- -->


</div>


<script src="${rootPath}/static/js/popular_button.js?ver=2022-06-15-022"></script>