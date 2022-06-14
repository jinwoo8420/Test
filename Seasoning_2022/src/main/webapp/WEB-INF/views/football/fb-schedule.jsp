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

			<c:forEach items="${ST_GANGWON1}" var="GANGWON1">
				<p>
					<span>${GANGWON1.fb_st_name}</span>
				</p>
			</c:forEach>

			<c:forEach items="${ST_GANGWON2}" var="GANGWON2">
				<p>
					<span>${GANGWON2.fb_st_name}</span>
				</p>
			</c:forEach>

			<c:forEach items="${ST_INCHEON}" var="INCHEON">
				<p>
					<span>${INCHEON.fb_st_name}</span>
				</p>
			</c:forEach>

			<c:forEach items="${ST_SEONGNAM}" var="SEONGNAM">
				<p>
					<span>${SEONGNAM.fb_st_name}</span>
				</p>
			</c:forEach>

			<c:forEach items="${ST_SUWON_SS}" var="SUWON_SS">
				<p>
					<span>${SUWON_SS.fb_st_name}</span>
				</p>
			</c:forEach>

			<c:forEach items="${ST_SUWON}" var="SUWON">
				<p>
					<span>${SUWON.fb_st_name}</span>
				</p>
			</c:forEach>

			<c:forEach items="${ST_GIMCHEON}" var="GIMCHEON">
				<p>
					<span>${GIMCHEON.fb_st_name}</span>
				</p>
			</c:forEach>

			<c:forEach items="${ST_DAEGU}" var="DAEGU">
				<p>
					<span>${DAEGU.fb_st_name}</span>
				</p>
			</c:forEach>

			<c:forEach items="${ST_POHANG}" var="POHANG">
				<p>
					<span>${POHANG.fb_st_name}</span>
				</p>
			</c:forEach>

			<c:forEach items="${ST_ULSAN}" var="ULSAN">
				<p>
					<span>${ULSAN.fb_st_name}</span>
				</p>
			</c:forEach>

			<c:forEach items="${ST_JEJU}" var="JEJU">
				<p>
					<span>${JEJU.fb_st_name}</span>
				</p>
			</c:forEach>
		</article>

		<c:forEach items="${ST_SEOUL}">
			<img src="${rootPath}/static/images/seoul.jpg" />
		</c:forEach>

		<c:forEach items="${ST_JEONBUK}">
			<img src="${rootPath}/static/images/jeonbuk.jpg" />
		</c:forEach>
		
		<c:forEach items="${ST_GANGWON1}">
			<img src="${rootPath}/static/images/gangwon1.jpg" />
		</c:forEach>
		
		<c:forEach items="${ST_GANGWON2}">
			<img src="${rootPath}/static/images/gangwon2.jpg" />
		</c:forEach>
		
		<c:forEach items="${ST_INCHEON}">
			<img src="${rootPath}/static/images/incheon.jpg" />
		</c:forEach>
		
		<c:forEach items="${ST_SEONGNAM}">
			<img src="${rootPath}/static/images/seongnam.jpg" />
		</c:forEach>
		
		<c:forEach items="${ST_SUWON_SS}">
			<img src="${rootPath}/static/images/suwon_ss.jpg" />
		</c:forEach>
		
		<c:forEach items="${ST_SUWON}">
			<img src="${rootPath}/static/images/suwon.jpg" />
		</c:forEach>
		
		<c:forEach items="${ST_GIMCHEON}">
			<img src="${rootPath}/static/images/gimcheon.jpg" />
		</c:forEach>
		
		<c:forEach items="${ST_DAEGU}">
			<img src="${rootPath}/static/images/daegu.jpg" />
		</c:forEach>
		
		<c:forEach items="${ST_POHANG}">
			<img src="${rootPath}/static/images/pohang.jpg" />
		</c:forEach>
		
		<c:forEach items="${ST_ULSAN}">
			<img src="${rootPath}/static/images/ulsan.jpg" />
		</c:forEach>
		
		<c:forEach items="${ST_JEJU}">
			<img src="${rootPath}/static/images/jeju.jpg" />
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
					
						<c:forEach items="${FB_INCHEON}" var="INCHEON">
							<tr>
								<td>${INCHEON.fb_st_date}</td>
								<td>${INCHEON.fb_st_time}</td>
								<td>${INCHEON.fb_st_match}</td>
							</tr>
						</c:forEach>

						<c:forEach items="${FB_SEONGNAM}" var="SEONGNAM">
							<tr>
								<td>${SEONGNAM.fb_st_date}</td>
								<td>${SEONGNAM.fb_st_time}</td>
								<td>${SEONGNAM.fb_st_match}</td>
							</tr>
						</c:forEach>

						<c:forEach items="${FB_SUWON_SS}" var="SUWON_SS">
							<tr>
								<td>${SUWON_SS.fb_st_date}</td>
								<td>${SUWON_SS.fb_st_time}</td>
								<td>${SUWON_SS.fb_st_match}</td>
							</tr>
						</c:forEach>

						<c:forEach items="${FB_SUWON}" var="SUWON">
							<tr>
								<td>${SUWON.fb_st_date}</td>
								<td>${SUWON.fb_st_time}</td>
								<td>${SUWON.fb_st_match}</td>
							</tr>
						</c:forEach>
						<c:forEach items="${FB_GIMCHEON}" var="GIMCHEON">
							<tr>
								<td>${GIMCHEON.fb_st_date}</td>
								<td>${GIMCHEON.fb_st_time}</td>
								<td>${GIMCHEON.fb_st_match}</td>
							</tr>
						</c:forEach>

						<c:forEach items="${FB_DAEGU}" var="DAEGU">
							<tr>
								<td>${DAEGU.fb_st_date}</td>
								<td>${DAEGU.fb_st_time}</td>
								<td>${DAEGU.fb_st_match}</td>
							</tr>
						</c:forEach>

						<c:forEach items="${FB_POHANG}" var="POHANG">
							<tr>
								<td>${POHANG.fb_st_date}</td>
								<td>${POHANG.fb_st_time}</td>
								<td>${POHANG.fb_st_match}</td>
							</tr>
						</c:forEach>

						<c:forEach items="${FB_ULSAN}" var="ULSAN">
							<tr>
								<td>${ULSAN.fb_st_date}</td>
								<td>${ULSAN.fb_st_time}</td>
								<td>${ULSAN.fb_st_match}</td>
							</tr>
						</c:forEach>

						<c:forEach items="${FB_JEJU}" var="JEJU">
							<tr>
								<td>${JEJU.fb_st_date}</td>
								<td>${JEJU.fb_st_time}</td>
								<td>${JEJU.fb_st_match}</td>
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
					
					<c:forEach items="${ST_ULSAN}">
						<button id="ticket-link" onclick="location.href = 'https://www.uhfc.tv/apply/ticket.php'">티켓 예매하러 가기</button>
					</c:forEach>
					
					<c:forEach items="${ST_GANGWON1}">
						<button id="ticket-link" onclick="location.href = 'https://gangwon-fc.com/match/stadium_songam'">티켓 예매하러 가기</button>
					</c:forEach>
					
					<c:forEach items="${ST_GANGWON2}">
						<button id="ticket-link" onclick="location.href = 'https://gangwon-fc.com/match/stadium_gangneung'">티켓 예매하러 가기</button>
					</c:forEach>
					
					<c:forEach items="${ST_INCHEON}">
						<button id="ticket-link" onclick="location.href = 'https://www.incheonutd.com/ticket/ticket_intro.php'">티켓 예매하러 가기</button>
					</c:forEach>
					
					<c:forEach items="${ST_SEONGNAM}">
						<button id="ticket-link" onclick="location.href = 'https://www.seongnamfc.com/fan/ticket'">티켓 예매하러 가기</button>
					</c:forEach>
					
					<c:forEach items="${ST_SUWON_SS}">
						<button id="ticket-link" onclick="location.href = 'https://ticket.interpark.com/Contents/Sports/GoodsInfo?SportsCode=07002&TeamCode=PS003'">티켓 예매하러 가기</button>
					</c:forEach>
					
					<c:forEach items="${ST_SUWON}">
						<button id="ticket-link" onclick="location.href = 'https://suwonfc.com/?p=19'">티켓 예매하러 가기</button>
					</c:forEach>
					
					<c:forEach items="${ST_GIMCHEON}">
						<button id="ticket-link" onclick="location.href = 'http://gimcheonfc.com/doc/ticket1.php'">티켓 예매하러 가기</button>
					</c:forEach>
					
					<c:forEach items="${ST_DAEGU}">
						<button id="ticket-link" onclick="location.href = 'https://www.daegufc.co.kr/match/ticket.php'">티켓 예매하러 가기</button>
					</c:forEach>
					
					<c:forEach items="${ST_POHANG}">
						<button id="ticket-link" onclick="location.href = 'https://www.steelers.co.kr/match/ticket'">티켓 예매하러 가기</button>
					</c:forEach>
					
					<c:forEach items="${ST_JEJU}">
						<button id="ticket-link" onclick="location.href = 'https://www.jeju-utd.com/match/ticket.asp'">티켓 예매하러 가기</button>
					</c:forEach>
				</div>

			</article>
		</div>
	</div>
</section>