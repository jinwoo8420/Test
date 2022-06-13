<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />

<link rel="stylesheet" href="${rootPath}/static/css/schedule.css?ver=2022-06-13-002" />

<section class="schedule-content">
	<div class="month-container">
		<article class="sch-title">
			<c:forEach items="${ST_SEOUL}" var="SEOUL">
				<p>
					<span>${SEOUL.fb_st_name}</span>
				</p>
			</c:forEach>

			<c:forEach items="${ST_JEONBUK}" var="JEONBUK">
				<p>
					<span>${JEONBUK.fb_st_name}</span>
				</p>
			</c:forEach>
		</article>

		<c:forEach items="${ST_SEOUL}">
			<img src="${rootPath}/static/images/seoul.jpg" />
		</c:forEach>

		<c:forEach items="${ST_JEONBUK}">
			<img src="${rootPath}/static/images/jeonbuk.jpg" />
		</c:forEach>

		<div class="month-table">
			<article class="table-container">
				<table>
					<tr>
						<th>날짜</th>
						<th>시간</th>
						<th>매치업</th>
					</tr>
				</table>
				<div class="scroll scroll-style">
					<table>
						<c:forEach items="${FB_SEOUL}" var="SEOUL">
							<tr>
								<td>${SEOUL.fb_st_date}</td>
								<td>${SEOUL.fb_st_time}</td>
								<td>${SEOUL.fb_st_match}</td>
							</tr>
						</c:forEach>

						<c:forEach items="${FB_JEONBUK}" var="JEONBUK">
							<tr>
								<td>${JEONBUK.fb_st_date}</td>
								<td>${JEONBUK.fb_st_time}</td>
								<td>${JEONBUK.fb_st_match}</td>
							</tr>
						</c:forEach>

						<c:forEach items="${FB_GANGWON1}" var="GANGWON1">
							<tr>
								<td>${GANGWON1.fb_st_date}</td>
								<td>${GANGWON1.fb_st_time}</td>
								<td>${GANGWON1.fb_st_match}</td>
							</tr>
						</c:forEach>

						<c:forEach items="${FB_GANGWON2}" var="GANGWON2">
							<tr>
								<td>${GANGWON2.fb_st_date}</td>
								<td>${GANGWON2.fb_st_time}</td>
								<td>${GANGWON2.fb_st_match}</td>
							</tr>
						</c:forEach>
					</table>
				</div>

				<div class="ticket-link-con">
					<c:forEach items="${ST_SEOUL}">
						<button id="ticket-link" onclick="location.href = 'https://www.fcseoul.com/tickets/reserveSingleTicket'">티켓 예매하러 가기</button>
					</c:forEach>

					<c:forEach items="${ST_JEONBUK}">
						<button id="ticket-link" onclick="location.href = 'https://www.hyundai-motorsfc.com/ticket/ticket.asp'">티켓 예매하러 가기</button>
					</c:forEach>
				</div>

			</article>
		</div>
	</div>
</section>