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

		<h4 class="attraction">명소 관광지</h4>
		<div class="container-view">
			<div class="attraction-view">
				<div class="out">
					<div class="window">
						<div class="slides">
							<div class="slide">
								<c:forEach items="${INCHEONtour}" var="INCHEONtour">
									<div class="attr-container">
										<a href="${rootPath}/detail/fooddetail/${INCHEONtour.contentid}" style="color: black">
											<span class="img"><img src="${INCHEONtour.firstimage}"></span> <span>[명소]&nbsp; <b>${INCHEONtour.title}</b></span> <span class="content"> <span>${INCHEONtour.addr1}</span> <span>${INCHEONtour.tel}</span>
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
								<c:forEach items="${INCHEONfood}" var="INCHEONfood">
									<div class="attr-container">
										<a href="${rootPath}/detail/fooddetail/${INCHEONfood.contentid}" style="color: black">
											<span class="img"><img src="${INCHEONfood.firstimage}"></span> <span>[식당]&nbsp; <b>${INCHEONfood.title}</b></span> <span class="content"> <span>${INCHEONfood.addr1}</span> <span>${INCHEONfood.tel}</span>
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
								<c:forEach items="${INCHEONlodgment}" var="INCHEONlodgment">
									<div class="attr-container">
										<a href="${rootPath}/detail/fooddetail/${INCHEONlodgment.contentid}" style="color: black">
											<span class="img"><img src="${INCHEONlodgment.firstimage}"></span> <span>[숙박]&nbsp; <b>${INCHEONlodgment.title}</b></span> <span class="content"> <span>${INCHEONlodgment.addr1}</span> <span>${INCHEONlodgment.tel}</span>
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

	<div class="daejeon">

		<h4 class="attraction">명소 관광지</h4>
		<div class="container-view">
			<div class="attraction-view">
				<div class="out">
					<div class="window">
						<div class="slides">
							<div class="slide">
								<c:forEach items="${DAEJEONtour}" var="DAEJEONtour">
									<div class="attr-container">
										<a href="${rootPath}/detail/fooddetail/${DAEJEONtour.contentid}" style="color: black">
											<span class="img"><img src="${DAEJEONtour.firstimage}"></span> <span>[명소]&nbsp; <b>${DAEJEONtour.title}</b></span> <span class="content"> <span>${DAEJEONtour.addr1}</span> <span>${DAEJEONtour.tel}</span>
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
								<c:forEach items="${DAEJEONfood}" var="DAEJEONfood">
									<div class="attr-container">
										<a href="${rootPath}/detail/fooddetail/${DAEJEONfood.contentid}" style="color: black">
											<span class="img"><img src="${DAEJEONfood.firstimage}"></span> <span>[식당]&nbsp; <b>${DAEJEONfood.title}</b></span> <span class="content"> <span>${DAEJEONfood.addr1}</span> <span>${DAEJEONfood.tel}</span>
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
								<c:forEach items="${DAEJEONlodgment}" var="DAEJEONlodgment">
									<div class="attr-container">
										<a href="${rootPath}/detail/fooddetail/${DAEJEONlodgment.contentid}" style="color: black">
											<span class="img"><img src="${DAEJEONlodgment.firstimage}"></span> <span>[숙박]&nbsp; <b>${DAEJEONlodgment.title}</b></span> <span class="content"> <span>${DAEJEONlodgment.addr1}</span> <span>${DAEJEONlodgment.tel}</span>
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

	<div class="daegu">

		<h4 class="attraction">명소 관광지</h4>
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

		<h4 class="attraction">명소 관광지</h4>
		<div class="container-view">
			<div class="attraction-view">
				<div class="out">
					<div class="window">
						<div class="slides">
							<div class="slide">
								<c:forEach items="${GWANGJUtour}" var="GWANGJUtour">
									<div class="attr-container">
										<a href="${rootPath}/detail/fooddetail/${GWANGJUtour.contentid}" style="color: black">
											<span class="img"><img src="${GWANGJUtour.firstimage}"></span> <span>[명소]&nbsp; <b>${GWANGJUtour.title}</b></span> <span class="content"> <span>${GWANGJUtour.addr1}</span> <span>${GWANGJUtour.tel}</span>
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
								<c:forEach items="${GWANGJUfood}" var="GWANGJUfood">
									<div class="attr-container">
										<a href="${rootPath}/detail/fooddetail/${GWANGJUfood.contentid}" style="color: black">
											<span class="img"><img src="${GWANGJUfood.firstimage}"></span> <span>[식당]&nbsp; <b>${GWANGJUfood.title}</b></span> <span class="content"> <span>${GWANGJUfood.addr1}</span> <span>${GWANGJUfood.tel}</span>
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
								<c:forEach items="${GWANGJUlodgment}" var="GWANGJUlodgment">
									<div class="attr-container">
										<a href="${rootPath}/detail/fooddetail/${GWANGJUlodgment.contentid}" style="color: black">
											<span class="img"><img src="${GWANGJUlodgment.firstimage}"></span> <span>[숙박]&nbsp; <b>${GWANGJUlodgment.title}</b></span> <span class="content"> <span>${GWANGJUlodgment.addr1}</span> <span>${GWANGJUlodgment.tel}</span>
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

	<div class="busan">

		<h4 class="attraction">명소 관광지</h4>
		<div class="container-view">
			<div class="attraction-view">
				<div class="out">
					<div class="window">
						<div class="slides">
							<div class="slide">
								<c:forEach items="${BUSANtour}" var="BUSANtour">
									<div class="attr-container">
										<a href="${rootPath}/detail/fooddetail/${BUSANtour.contentid}" style="color: black">
											<span class="img"><img src="${BUSANtour.firstimage}"></span> <span>[명소]&nbsp; <b>${BUSANtour.title}</b></span> <span class="content"> <span>${BUSANtour.addr1}</span> <span>${BUSANtour.tel}</span>
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
								<c:forEach items="${BUSANfood}" var="BUSANfood">
									<div class="attr-container">
										<a href="${rootPath}/detail/fooddetail/${BUSANfood.contentid}" style="color: black">
											<span class="img"><img src="${BUSANfood.firstimage}"></span> <span>[식당]&nbsp; <b>${BUSANfood.title}</b></span> <span class="content"> <span>${BUSANfood.addr1}</span> <span>${BUSANfood.tel}</span>
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
								<c:forEach items="${BUSANlodgment}" var="BUSANlodgment">
									<div class="attr-container">
										<a href="${rootPath}/detail/fooddetail/${BUSANlodgment.contentid}" style="color: black">
											<span class="img"><img src="${BUSANlodgment.firstimage}"></span> <span>[숙박]&nbsp; <b>${BUSANlodgment.title}</b></span> <span class="content"> <span>${BUSANlodgment.addr1}</span> <span>${BUSANlodgment.tel}</span>
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

	<div class="ulsan">

		<h4 class="attraction">명소 관광지</h4>
		<div class="container-view">
			<div class="attraction-view">
				<div class="out">
					<div class="window">
						<div class="slides">
							<div class="slide">
								<c:forEach items="${ULSANtour}" var="ULSANtour">
									<div class="attr-container">
										<a href="${rootPath}/detail/fooddetail/${ULSANtour.contentid}" style="color: black">
											<span class="img"><img src="${ULSANtour.firstimage}"></span> <span>[명소]&nbsp; <b>${ULSANtour.title}</b></span> <span class="content"> <span>${ULSANtour.addr1}</span> <span>${ULSANtour.tel}</span>
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
								<c:forEach items="${ULSANfood}" var="ULSANfood">
									<div class="attr-container">
										<a href="${rootPath}/detail/fooddetail/${ULSANfood.contentid}" style="color: black">
											<span class="img"><img src="${ULSANfood.firstimage}"></span> <span>[식당]&nbsp; <b>${ULSANfood.title}</b></span> <span class="content"> <span>${ULSANfood.addr1}</span> <span>${ULSANfood.tel}</span>
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
								<c:forEach items="${ULSANlodgment}" var="ULSANlodgment">
									<div class="attr-container">
										<a href="${rootPath}/detail/fooddetail/${ULSANlodgment.contentid}" style="color: black">
											<span class="img"><img src="${ULSANlodgment.firstimage}"></span> <span>[숙박]&nbsp; <b>${ULSANlodgment.title}</b></span> <span class="content"> <span>${ULSANlodgment.addr1}</span> <span>${ULSANlodgment.tel}</span>
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
	<div class="sejong">

		<h4 class="attraction">명소 관광지</h4>
		<div class="container-view">
			<div class="attraction-view">
				<div class="out">
					<div class="window">
						<div class="slides">
							<div class="slide">
								<c:forEach items="${SEJONGtour}" var="SEJONGtour">
									<div class="attr-container">
										<a href="${rootPath}/detail/fooddetail/${SEJONGtour.contentid}" style="color: black">
											<span class="img"><img src="${SEJONGtour.firstimage}"></span> <span>[명소]&nbsp; <b>${SEJONGtour.title}</b></span> <span class="content"> <span>${SEJONGtour.addr1}</span> <span>${SEJONGtour.tel}</span>
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
								<c:forEach items="${SEJONGfood}" var="SEJONGfood">
									<div class="attr-container">
										<a href="${rootPath}/detail/fooddetail/${SEJONGfood.contentid}" style="color: black">
											<span class="img"><img src="${SEJONGfood.firstimage}"></span> <span>[식당]&nbsp; <b>${SEJONGfood.title}</b></span> <span class="content"> <span>${SEJONGfood.addr1}</span> <span>${SEJONGfood.tel}</span>
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
								<c:forEach items="${SEJONGlodgment}" var="SEJONGlodgment">
									<div class="attr-container">
										<a href="${rootPath}/detail/fooddetail/${SEJONGlodgment.contentid}" style="color: black">
											<span class="img"><img src="${SEJONGlodgment.firstimage}"></span> <span>[숙박]&nbsp; <b>${SEJONGlodgment.title}</b></span> <span class="content"> <span>${SEJONGlodgment.addr1}</span> <span>${SEJONGlodgment.tel}</span>
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

	<div class="gyeonggi">

		<h4 class="attraction">명소 관광지</h4>
		<div class="container-view">
			<div class="attraction-view">
				<div class="out">
					<div class="window">
						<div class="slides">
							<div class="slide">
								<c:forEach items="${GYEONGGItour}" var="GYEONGGItour">
									<div class="attr-container">
										<a href="${rootPath}/detail/fooddetail/${GYEONGGItour.contentid}" style="color: black">
											<span class="img"><img src="${GYEONGGItour.firstimage}"></span> <span>[명소]&nbsp; <b>${GYEONGGItour.title}</b></span> <span class="content"> <span>${GYEONGGItour.addr1}</span> <span>${GYEONGGIGtour.tel}</span>
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
								<c:forEach items="${GYEONGGIfood}" var="GYEONGGIfood">
									<div class="attr-container">
										<a href="${rootPath}/detail/fooddetail/${GYEONGGIfood.contentid}" style="color: black">
											<span class="img"><img src="${GYEONGGIfood.firstimage}"></span> <span>[식당]&nbsp; <b>${GYEONGGIfood.title}</b></span> <span class="content"> <span>${GYEONGGIfood.addr1}</span> <span>${GYEONGGIfood.tel}</span>
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
								<c:forEach items="${GYEONGGIlodgment}" var="GYEONGGIlodgment">
									<div class="attr-container">
										<a href="${rootPath}/detail/fooddetail/${GYEONGGIlodgment.contentid}" style="color: black">
											<span class="img"><img src="${GYEONGGIlodgment.firstimage}"></span> <span>[숙박]&nbsp; <b>${GYEONGGIlodgment.title}</b></span> <span class="content"> <span>${GYEONGGIlodgment.addr1}</span> <span>${GYEONGGIlodgment.tel}</span>
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

	<div class="gangwon">

		<h4 class="attraction">명소 관광지</h4>
		<div class="container-view">
			<div class="attraction-view">
				<div class="out">
					<div class="window">
						<div class="slides">
							<div class="slide">
								<c:forEach items="${GANGWONtour}" var="GANGWONtour">
									<div class="attr-container">
										<a href="${rootPath}/detail/fooddetail/${GANGWONtour.contentid}" style="color: black">
											<span class="img"><img src="${GANGWONtour.firstimage}"></span> <span>[명소]&nbsp; <b>${GANGWONtour.title}</b></span> <span class="content"> <span>${GANGWONtour.addr1}</span> <span>${GANGWONtour.tel}</span>
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
								<c:forEach items="${GANGWONfood}" var="GANGWONfood">
									<div class="attr-container">
										<a href="${rootPath}/detail/fooddetail/${GANGWONfood.contentid}" style="color: black">
											<span class="img"><img src="${GANGWONfood.firstimage}"></span> <span>[식당]&nbsp; <b>${GANGWONfood.title}</b></span> <span class="content"> <span>${GANGWONfood.addr1}</span> <span>${GANGWONfood.tel}</span>
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
								<c:forEach items="${GANGWONlodgment}" var="GANGWONlodgment">
									<div class="attr-container">
										<a href="${rootPath}/detail/fooddetail/${GANGWONlodgment.contentid}" style="color: black">
											<span class="img"><img src="${GANGWONlodgment.firstimage}"></span> <span>[숙박]&nbsp; <b>${GANGWONlodgment.title}</b></span> <span class="content"> <span>${GANGWONlodgment.addr1}</span> <span>${GANGWONlodgment.tel}</span>
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

	<div class="chungbuk">

		<h4 class="attraction">명소 관광지</h4>
		<div class="container-view">
			<div class="attraction-view">
				<div class="out">
					<div class="window">
						<div class="slides">
							<div class="slide">
								<c:forEach items="${CHUNGBUKtour}" var="CHUNGBUKtour">
									<div class="attr-container">
										<a href="${rootPath}/detail/fooddetail/${CHUNGBUKtour.contentid}" style="color: black">
											<span class="img"><img src="${CHUNGBUKtour.firstimage}"></span> <span>[명소]&nbsp; <b>${CHUNGBUKtour.title}</b></span> <span class="content"> <span>${CHUNGBUKtour.addr1}</span> <span>${CHUNGBUKtour.tel}</span>
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
								<c:forEach items="${CHUNGBUKfood}" var="CHUNGBUKfood">
									<div class="attr-container">
										<a href="${rootPath}/detail/fooddetail/${CHUNGBUKfood.contentid}" style="color: black">
											<span class="img"><img src="${CHUNGBUKfood.firstimage}"></span> <span>[식당]&nbsp; <b>${CHUNGBUKfood.title}</b></span> <span class="content"> <span>${CHUNGBUKfood.addr1}</span> <span>${CHUNGBUKfood.tel}</span>
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
								<c:forEach items="${CHUNGBUKlodgment}" var="CHUNGBUKlodgment">
									<div class="attr-container">
										<a href="${rootPath}/detail/fooddetail/${CHUNGBUKlodgment.contentid}" style="color: black">
											<span class="img"><img src="${CHUNGBUKlodgment.firstimage}"></span> <span>[숙박]&nbsp; <b>${CHUNGBUKlodgment.title}</b></span> <span class="content"> <span>${CHUNGBUKlodgment.addr1}</span> <span>${CHUNGBUKlodgment.tel}</span>
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

	<div class="chungnam">

		<h4 class="attraction">명소 관광지</h4>
		<div class="container-view">
			<div class="attraction-view">
				<div class="out">
					<div class="window">
						<div class="slides">
							<div class="slide">
								<c:forEach items="${CHUNGNAMtour}" var="CHUNGNAMtour">
									<div class="attr-container">
										<a href="${rootPath}/detail/fooddetail/${CHUNGNAMtour.contentid}" style="color: black">
											<span class="img"><img src="${CHUNGNAMtour.firstimage}"></span> <span>[명소]&nbsp; <b>${CHUNGNAMtour.title}</b></span> <span class="content"> <span>${CHUNGNAMtour.addr1}</span> <span>${CHUNGNAMtour.tel}</span>
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
								<c:forEach items="${CHUNGNAMfood}" var="CHUNGNAMfood">
									<div class="attr-container">
										<a href="${rootPath}/detail/fooddetail/${CHUNGNAMfood.contentid}" style="color: black">
											<span class="img"><img src="${CHUNGNAMfood.firstimage}"></span> <span>[식당]&nbsp; <b>${CHUNGNAMfood.title}</b></span> <span class="content"> <span>${CHUNGNAMfood.addr1}</span> <span>${CHUNGNAMfood.tel}</span>
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
								<c:forEach items="${CHUNGNAMlodgment}" var="CHUNGNAMlodgment">
									<div class="attr-container">
										<a href="${rootPath}/detail/fooddetail/${CHUNGNAMlodgment.contentid}" style="color: black">
											<span class="img"><img src="${CHUNGNAMlodgment.firstimage}"></span> <span>[숙박]&nbsp; <b>${CHUNGNAMlodgment.title}</b></span> <span class="content"> <span>${CHUNGNAMlodgment.addr1}</span> <span>${CHUNGNAMlodgment.tel}</span>
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

	<div class="gyeongbuk">

		<h4 class="attraction">명소 관광지</h4>
		<div class="container-view">
			<div class="attraction-view">
				<div class="out">
					<div class="window">
						<div class="slides">
							<div class="slide">
								<c:forEach items="${GYEONGBUKtour}" var="GYEONGBUKtour">
									<div class="attr-container">
										<a href="${rootPath}/detail/fooddetail/${GYEONGBUKtour.contentid}" style="color: black">
											<span class="img"><img src="${GYEONGBUKtour.firstimage}"></span> <span>[명소]&nbsp; <b>${GYEONGBUKtour.title}</b></span> <span class="content"> <span>${GYEONGBUKtour.addr1}</span> <span>${GYEONGBUKtour.tel}</span>
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
								<c:forEach items="${GYEONGBUKfood}" var="GYEONGBUKfood">
									<div class="attr-container">
										<a href="${rootPath}/detail/fooddetail/${GYEONGBUKfood.contentid}" style="color: black">
											<span class="img"><img src="${GYEONGBUKfood.firstimage}"></span> <span>[식당]&nbsp; <b>${GYEONGBUKfood.title}</b></span> <span class="content"> <span>${GYEONGBUKfood.addr1}</span> <span>${GYEONGBUKfood.tel}</span>
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
								<c:forEach items="${GYEONGBUKlodgment}" var="GYEONGBUKlodgment">
									<div class="attr-container">
										<a href="${rootPath}/detail/fooddetail/${GYEONGBUKlodgment.contentid}" style="color: black">
											<span class="img"><img src="${GYEONGBUKlodgment.firstimage}"></span> <span>[숙박]&nbsp; <b>${GYEONGBUKlodgment.title}</b></span> <span class="content"> <span>${GYEONGBUKlodgment.addr1}</span> <span>${GYEONGBUKlodgment.tel}</span>
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

	<div class="gyeongnam">

		<h4 class="attraction">명소 관광지</h4>
		<div class="container-view">
			<div class="attraction-view">
				<div class="out">
					<div class="window">
						<div class="slides">
							<div class="slide">
								<c:forEach items="${GYEONGNAMtour}" var="GYEONGNAMtour">
									<div class="attr-container">
										<a href="${rootPath}/detail/fooddetail/${GYEONGNAMtour.contentid}" style="color: black">
											<span class="img"><img src="${GYEONGNAMtour.firstimage}"></span> <span>[명소]&nbsp; <b>${GYEONGNAMtour.title}</b></span> <span class="content"> <span>${GYEONGNAMtour.addr1}</span> <span>${GYEONGNAMtour.tel}</span>
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
								<c:forEach items="${GYEONGNAMfood}" var="GYEONGNAMfood">
									<div class="attr-container">
										<a href="${rootPath}/detail/fooddetail/${GYEONGNAMfood.contentid}" style="color: black">
											<span class="img"><img src="${GYEONGNAMfood.firstimage}"></span> <span>[식당]&nbsp; <b>${GYEONGNAMfood.title}</b></span> <span class="content"> <span>${GYEONGNAMfood.addr1}</span> <span>${GYEONGNAMfood.tel}</span>
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
								<c:forEach items="${GYEONGNAMlodgment}" var="GYEONGNAMlodgment">
									<div class="attr-container">
										<a href="${rootPath}/detail/fooddetail/${GYEONGNAMlodgment.contentid}" style="color: black">
											<span class="img"><img src="${GYEONGNAMlodgment.firstimage}"></span> <span>[숙박]&nbsp; <b>${GYEONGNAMlodgment.title}</b></span> <span class="content"> <span>${GYEONGNAMlodgment.addr1}</span> <span>${GYEONGNAMlodgment.tel}</span>
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

	<div class="jeonbuk">

		<h4 class="attraction">명소 관광지</h4>
		<div class="container-view">
			<div class="attraction-view">
				<div class="out">
					<div class="window">
						<div class="slides">
							<div class="slide">
								<c:forEach items="${JEONBUKtour}" var="JEONBUKtour">
									<div class="attr-container">
										<a href="${rootPath}/detail/fooddetail/${JEONBUKtour.contentid}" style="color: black">
											<span class="img"><img src="${JEONBUKtour.firstimage}"></span> <span>[명소]&nbsp; <b>${JEONBUKtour.title}</b></span> <span class="content"> <span>${JEONBUKtour.addr1}</span> <span>${JEONBUKtour.tel}</span>
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
								<c:forEach items="${JEONBUKfood}" var="JEONBUKfood">
									<div class="attr-container">
										<a href="${rootPath}/detail/fooddetail/${JEONBUKfood.contentid}" style="color: black">
											<span class="img"><img src="${JEONBUKfood.firstimage}"></span> <span>[식당]&nbsp; <b>${JEONBUKfood.title}</b></span> <span class="content"> <span>${JEONBUKfood.addr1}</span> <span>${JEONBUKfood.tel}</span>
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
								<c:forEach items="${JEONBUKlodgment}" var="JEONBUKlodgment">
									<div class="attr-container">
										<a href="${rootPath}/detail/fooddetail/${JEONBUKlodgment.contentid}" style="color: black">
											<span class="img"><img src="${JEONBUKlodgment.firstimage}"></span> <span>[숙박]&nbsp; <b>${JEONBUKlodgment.title}</b></span> <span class="content"> <span>${JEONBUKlodgment.addr1}</span> <span>${JEONBUKlodgment.tel}</span>
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

	<div class="jeonnam">

		<h4 class="attraction">명소 관광지</h4>
		<div class="container-view">
			<div class="attraction-view">
				<div class="out">
					<div class="window">
						<div class="slides">
							<div class="slide">
								<c:forEach items="${JEONNAMtour}" var="JEONNAMtour">
									<div class="attr-container">
										<a href="${rootPath}/detail/fooddetail/${JEONNAMtour.contentid}" style="color: black">
											<span class="img"><img src="${JEONNAMtour.firstimage}"></span> <span>[명소]&nbsp; <b>${JEONNAMtour.title}</b></span> <span class="content"> <span>${JEONNAMtour.addr1}</span> <span>${JEONNAMtour.tel}</span>
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
								<c:forEach items="${JEONNAMfood}" var="JEONBUKfood">
									<div class="attr-container">
										<a href="${rootPath}/detail/fooddetail/${JEONNAMfood.contentid}" style="color: black">
											<span class="img"><img src="${JEONNAMfood.firstimage}"></span> <span>[식당]&nbsp; <b>${JEONNAMfood.title}</b></span> <span class="content"> <span>${JEONNAMfood.addr1}</span> <span>${JEONNAMfood.tel}</span>
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
								<c:forEach items="${JEONNAMlodgment}" var="JEONNAMlodgment">
									<div class="attr-container">
										<a href="${rootPath}/detail/fooddetail/${JEONNAMlodgment.contentid}" style="color: black">
											<span class="img"><img src="${JEONNAMlodgment.firstimage}"></span> <span>[숙박]&nbsp; <b>${JEONNAMlodgment.title}</b></span> <span class="content"> <span>${JEONNAMlodgment.addr1}</span> <span>${JEONNAMlodgment.tel}</span>
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

	<div class="jeju">

		<h4 class="attraction">명소 관광지</h4>
		<div class="container-view">
			<div class="attraction-view">
				<div class="out">
					<div class="window">
						<div class="slides">
							<div class="slide">
								<c:forEach items="${JEJUtour}" var="JEJUtour">
									<div class="attr-container">
										<a href="${rootPath}/detail/fooddetail/${JEJUtour.contentid}" style="color: black">
											<span class="img"><img src="${JEJUtour.firstimage}"></span> <span>[명소]&nbsp; <b>${JEJUtour.title}</b></span> <span class="content"> <span>${JEJUtour.addr1}</span> <span>${JEJUtour.tel}</span>
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
								<c:forEach items="${JEJUfood}" var="JEJUfood">
									<div class="attr-container">
										<a href="${rootPath}/detail/fooddetail/${JEJUfood.contentid}" style="color: black">
											<span class="img"><img src="${JEJUfood.firstimage}"></span> <span>[식당]&nbsp; <b>${JEJUfood.title}</b></span> <span class="content"> <span>${JEJUfood.addr1}</span> <span>${JEJUfood.tel}</span>
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
								<c:forEach items="${JEJUlodgment}" var="JEJUlodgment">
									<div class="attr-container">
										<a href="${rootPath}/detail/fooddetail/${JEJUlodgment.contentid}" style="color: black">
											<span class="img"><img src="${JEJUlodgment.firstimage}"></span> <span>[숙박]&nbsp; <b>${JEJUlodgment.title}</b></span> <span class="content"> <span>${JEJUlodgment.addr1}</span> <span>${JEJUlodgment.tel}</span>
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


</div>


<script src="${rootPath}/static/js/popular_button.js?ver=2022-06-15-022"></script>