<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />

<link rel="stylesheet" href="${rootPath}/static/css/schedule.css?ver=2022-06-14-001" />

<section class="schedule-content">
	<div class="month-container">
		<article class="sch-title">
			<c:forEach items="${ST_DUSAN}" var="DUSAN">
				<p>
					<span>${DUSAN.bb_st_name}</span>
				</p>
			</c:forEach>
			
			<c:forEach items="${ST_LG}" var="LG">
				<p>
					<span>${LG.bb_st_name}</span>
				</p>
			</c:forEach>

			<c:forEach items="${ST_KIA}" var="KIA">
				<p>
					<span>${KIA.bb_st_name}</span>
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

		<c:forEach items="${ST_DUSAN}">
			<img src="${rootPath}/static/images/dusan_lg.jpg" />
		</c:forEach>

		<c:forEach items="${ST_KIA}">
			<img src="${rootPath}/static/images/kia.jpg" />
		</c:forEach>
		
		<c:forEach items="${ST_LG}">
			<img src="${rootPath}/static/images/dusan_lg.jpg" />
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
						<th>매치업</th>
					</tr>
				</table>
				<div class="scroll scroll-style">
					<table>
						<c:forEach items="${BB_DUSAN}" var="DUSAN">
							<tr>
								<td>${DUSAN.st_date}</td>
								<td>${DUSAN.st_match}</td>
							</tr>
						</c:forEach>

						<c:forEach items="${BB_LG}" var="LG">
							<tr>
								<td>${LG.st_date}</td>
								<td>${LG.st_match}</td>
							</tr>
						</c:forEach>
						
						<c:forEach items="${BB_KIA}" var="KIA">
							<tr>
								<td>${KIA.st_date}</td>
								<td>${KIA.st_match}</td>
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