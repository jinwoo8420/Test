<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />

<!-- --------------------------------------------------------------------------------------------------------------------------------------- -->

<div class="seoul">

	<h4 class="attraction">명소 관광지</h4>
	<div class="container-view">
		<div class="attraction-view">
			<div class="out">
				<div class="window">
					<div class="slides">
						<div class="slide">
							<c:forEach items="${TOURS}" var="TOUR">
								<div class="attr-container">
									<a href="${rootPath}/detail/tour_detail/${TOUR.contentid}" style="color: black">
										<span class="img"><img src="${TOUR.firstimage2}"></span> <span>[명소]&nbsp; <b>${TOUR.title}</b></span> <span class="content"> <span>${SEOULtour.addr1}</span> <span>${SEOULtour.tel}</span>
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
							<c:forEach items="${FOODS}" var="FOOD">
								<div class="attr-container">
									<a href="${rootPath}/detail/food_detail/${FOOD.contentid}" style="color: black">
										<span class="img"><img src="${FOOD.firstimage2}"></span> <span>[식당]&nbsp; <b>${FOOD.title}</b></span> <span class="content"> <span>${SEOULfood.addr1}</span> <span>${SEOULfood.tel}</span>
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
							<c:forEach items="${LODGMENTS}" var="LODGMENT">
								<div class="attr-container">
									<a href="${rootPath}/detail/lodge_detail/${LODGMENT.contentid}" style="color: black">
										<span class="img"><img src="${LODGMENT.firstimage2}"></span> <span>[숙박]&nbsp; <b>${LODGMENT.title}</b></span> <span class="content"> <span>${SEOULlodgment.addr1}</span> <span>${SEOULlodgment.tel}</span>
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


</div>
<!-- --------------------------------------------------------------------------------------------------------------------------------------- -->

<script>
	const rootPath = "${rootPath}"
</script>
<script src="${rootPath}/static/js/popular_silde.js?ver=2022-06-16-020"></script>
