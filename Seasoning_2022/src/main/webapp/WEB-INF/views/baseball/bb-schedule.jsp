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

			<c:forEach items="${ST_SSG}" var="SSG">
				<p>
					<span>${SSG.bb_st_name}</span>
				</p>
			</c:forEach>

			<c:forEach items="${ST_KIWOOM}" var="KIWOOM">
				<p>
					<span>${KIWOOM.bb_st_name}</span>
				</p>
			</c:forEach>

			<c:forEach items="${ST_KT}" var="KT">
				<p>
					<span>${KT.bb_st_name}</span>
				</p>
			</c:forEach>

			<c:forEach items="${ST_HANWHA}" var="HANWHA">
				<p>
					<span>${HANWHA.bb_st_name}</span>
				</p>
			</c:forEach>

			<c:forEach items="${ST_SAMSUNG}" var="SAMSUNG">
				<p>
					<span>${SAMSUNG.bb_st_name}</span>
				</p>
			</c:forEach>

			<c:forEach items="${ST_NC}" var="NC">
				<p>
					<span>${NC.bb_st_name}</span>
				</p>
			</c:forEach>

			<c:forEach items="${ST_LOTTE}" var="LOTTE">
				<p>
					<span>${LOTTE.bb_st_name}</span>
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
		
		<c:forEach items="${ST_SSG}">
			<img src="${rootPath}/static/images/ssg.jpg" />
		</c:forEach>
		
		<c:forEach items="${ST_KIWOOM}">
			<img src="${rootPath}/static/images/kiwoom.jpg" />
		</c:forEach>
		
		<c:forEach items="${ST_KT}">
			<img src="${rootPath}/static/images/kt.jpg" />
		</c:forEach>
		
		<c:forEach items="${ST_HANWHA}">
			<img src="${rootPath}/static/images/hanwha.jpg" />
		</c:forEach>
		
		<c:forEach items="${ST_SAMSUNG}">
			<img src="${rootPath}/static/images/samsung.jpg" />
		</c:forEach>
		
		<c:forEach items="${ST_NC}">
			<img src="${rootPath}/static/images/nc.jpg" />
		</c:forEach>
		
		<c:forEach items="${ST_LOTTE}">
			<img src="${rootPath}/static/images/lotte.jpg" />
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
						
						<c:forEach items="${BB_SSG}" var="SSG">
							<tr>
								<td>${SSG.st_date}</td>
								<td>${SSG.st_match}</td>
							</tr>
						</c:forEach>
						
						<c:forEach items="${BB_KIWOOM}" var="KIWOOM">
							<tr>
								<td>${KIWOOM.st_date}</td>
								<td>${KIWOOM.st_match}</td>
							</tr>
						</c:forEach>
						
						<c:forEach items="${BB_KT}" var="KT">
							<tr>
								<td>${KT.st_date}</td>
								<td>${KT.st_match}</td>
							</tr>
						</c:forEach>
						
						<c:forEach items="${BB_HANWHA}" var="HANWHA">
							<tr>
								<td>${HANWHA.st_date}</td>
								<td>${HANWHA.st_match}</td>
							</tr>
						</c:forEach>
						
						<c:forEach items="${BB_SAMSUNG}" var="SAMSUNG">
							<tr>
								<td>${SAMSUNG.st_date}</td>
								<td>${SAMSUNG.st_match}</td>
							</tr>
						</c:forEach>

						<c:forEach items="${BB_NC}" var="NC">
							<tr>
								<td>${NC.st_date}</td>
								<td>${NC.st_match}</td>
							</tr>
						</c:forEach>

						<c:forEach items="${BB_LOTTE}" var="LOTTE">
							<tr>
								<td>${LOTTE.st_date}</td>
								<td>${LOTTE.st_match}</td>
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