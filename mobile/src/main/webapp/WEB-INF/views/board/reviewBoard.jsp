<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<link rel="stylesheet" href="../css/boardlist.css">
<link rel="stylesheet" href="../css/review.css">

<div class="page_title">
	<h1 class="title">후기 게시판</h1>
</div>

<section>
	<div class="board_container">	
			<h2>후기 목록</h2>
			<div class="buttons">
				<a href="/"><button class="btn skyblue">메인으로 돌아가기</button></a>
			</div>
			<table class="board_list" style="text-align: center">
				<colgroup>
					<col width="10%">
					<col width="60%">
					<col width="15%">
					<col width="15%">
				</colgroup>
				
				<thead class="board_index">
					<tr>
						<th>번호</th>
						<th style="text-align: left">제목</th>
						<th>작성자</th>
						<th>작성일</th>
					</tr>
				</thead>
			
				<tbody class="board_items">

				<c:forEach var="board" items="${boards.content}">
					<tr class="board_item" onclick="location.href='/notice/${board.id}'">
						<td>${board.id}</td>
						<td style="text-align: left">${board.title}</td>
						<td>관리자</td>
						<td><fmt:formatDate value="${board.createDate}" pattern="YYYY-MM-dd"/></td>
					</tr>
				</c:forEach>
				
				</tbody>
			
			</table>

			<div class="pagination">
				<a><button class="page_item">이전페이지</button></a>
				<a><button class="page_item">다음페이지</button></a>
			</div>
		</div>

</section>
        
<%@ include file="../layout/footer.jsp"%>