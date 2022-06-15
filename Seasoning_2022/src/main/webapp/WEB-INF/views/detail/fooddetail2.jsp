<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Insert title here</title>
<link rel="stylesheet" href="${rootPath}/static/css/nav.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
<script>
	const rootPath = "${rootPath}"
</script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js"></script>
<%-- <script src="${rootPath}/static/js/detail.js?ver220615-007"></script> --%>

<style>
body {
	
}

section {
	width: 100vw;
}

.hj-detail-titlebox {
	width: 1000px;
	padding: 10px 0;
	margin: 20px auto;
	display: flex;
	align-items: flex-end;
	justify-content: space-between;
	border-bottom: 2px red solid;
}

.hj-detail-titlebox h1, .hj-detail-titlebox a, .hj-detail-titlebox div {
	width: 150px;
}

.hj-detail-titlebox h1 {
	text-align: center;
}

.hj-detail-titlebox a {
	cursor: pointer;
}

.hj-detail-main {
	margin: 0 auto;
	width: 1000px;
	display: flex;
	border-bottom: 1px solid black;
	padding-bottom: 20px;
}

.hj-detail-mainpic {
	width: 65%;
}

.hj-detail-righttext {
	margin-left: 20px;
	display: flex;
	flex-direction: column;
}

.hj-detail-righttext h2 {
	padding-bottom: 5px;
	margin-bottom: 5px;
	border-bottom: 1px solid red;
}

.hj-detail-righttext h3 {
	padding-bottom: 5px;
	margin-bottom: 5px;
	border-bottom: 1px solid red;
}

.hj-detail-other {
	width: 1000px;
	margin: 20px auto;
	display: flex;
	justify-content: space-between;
}

.hj-detail-other a {
	width: 30px;
	height: 50px;
	text-align: center;
	/* 	background-color: rgb(0, 24, 65); */
	/* 	color: white; */
	background-color: #eee;
	border-radius: 20%;
	line-height: 50px;
	background-color: #eee;
	margin-top: 30px;
}

.hj-detail-otherbox {
	width: 900px;
	height: 220px;
	display: flex;
	overflow: hidden;
}

.hj-detail-otherbox .pl {
	cursor: pointer;
	margin: 0 10px;
}

.hj-detail-otherbox .pl div{
	margin-bottom: 5px;
}

.pl:first-of-type {
	display: none
}

.hj-detail-otherimg {
	width: 205px;
	height: 130px;
	overflow: hidden;
}

.hj-detail-otherimg img {
	width: 100%;
}

.hj-detail-otherforeach {
	cursor: pointer;
	margin: 0 10px;
}

.hj-detail-othercontent {
	font-size: 13px;
}
</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/detail/nav.jsp"%>

	<section>
		<div class="hj-detail-titlebox">
			<a onclick="history.back()">&lt; 이전으로</a>
			<h1>관광지 정보</h1>
			<div></div>
		</div>
		<div class="hj-detail-main">
			<img class="hj-detail-mainpic" src="${COMMONDETAIL.firstimage}">
			<div class="hj-detail-righttext">
				<h2>${COMMONDETAIL.title}</h2>
				<p>장소 : ${COMMONDETAIL.addr1}</p>
				<p>전화번호 : ${COMMONDETAIL.tel}</p>
				<h3>상세설명</h3>
				<p>${COMMONDETAIL.overview}</p>
				<div></div>
			</div>
		</div>
		<div class="hj-detail-other">
			<a class="hj-btn prev">&#10094;</a>
			<div class="hj-detail-otherbox">
				<c:forEach items="${AROUND}" var="AROUND">
					<div class='pl' OnClick="location.href ='${rootPath}/detail/fooddetail/${AROUND.contentid}'" >
						<div data-isbn="${AROUND.contentid}">
							<div class="hj-detail-otherimg">
								<img src="${AROUND.firstimage}">
							</div>
							<div>
								<b>${AROUND.title}</b>
							</div>
							<div class="hj-detail-othercontent">
								<p class="hj-other-addr">${AROUND.addr1}</p>
								<p>${AROUND.tel}</p>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
			<a class="hj-btn next">&#10095;</a>
		</div>
	</section>

</body>
</html>