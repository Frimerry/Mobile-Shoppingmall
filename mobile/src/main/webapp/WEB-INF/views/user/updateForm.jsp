<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<link rel="stylesheet" href="../css/forms.css">
<link rel="stylesheet" href="../css/joinform.css">

<section>
	<div class="form_container">
		<div class="form_title">
			<h1>회원정보 수정</h1>
		</div>
		
		<form id="join" class="form join_form">
			<!-- 전송용 -->
			<input type="hidden" id="id" value="${principal.user.id }"/>
			<input type="hidden" id="oauth" name="oauth" value="${principal.user.oauth}"/>

			<!--필수정보 입력란-->
			<div class="form_heading">
				<h3>변경할 회원 정보를 입력해주세요.</h3>
				<span class="necessary">* 은 필수 입력 항목입니다.</span>
			</div>		
			
			<div class="input_boxes">
				<div class="input_box">
					<label for="username" class="labels">이름</label>
					<input id="username" value="${principal.user.username}" class="input_item" type="text" required disabled/>
				</div>
				<div class="input_box">
					<label for="userid" class="labels">아이디</label>
					<input id="userid" value="${principal.user.userid}" class="input_item" type="text" required disabled/>
				</div>
				
				<div class="input_box">
					<label for="password"  class="labels">비밀번호<span class="point">*</span></label>
					<input id="password" class="input_item" type="password" required/>
				</div>
						
				<div class="input_box">
					<label for="password"  class="labels">비밀번호 확인<span class="point">*</span></label>
					<input id="pwcheck" class="input_item" type="password" required/>
				</div>
			


				
			<div class="input_box">
				<label for="phone" class="labels">전화번호<span class="point">*</span></label>
				<input id="phone" value="${principal.user.phone}" class="input_item" type="text" required/>
			</div>
				
				<div class="input_box">
					<label for="email" class="labels">이메일<span class="point">*</span></label>
					<input id="email" value="${principal.user.email}" class="input_item" type="email" required/>
				</div>
			</div>
			
			<!--추가정보 입력란-->
			<div class="form_heading">
				<h3>[선택] 배송 정보를 입력해주세요.</h3>
			</div>
			<div class="input_boxes">
				<div class="input_box">
					<label for="zipcode" class="labels">우편번호</label>
					<input id="zipcode" name="zipcode" class="input_item" type="text" value="${principal.user.zipcode}"/>
					<input type="button" onclick="execPostCode();" class="btn btn_alt" value="우편번호찾기">
				</div>
				<div class="input_box">
					<label for="address" class="labels">주소</label>
					<input id="address" name="address" class="input_item" type="text" value="${principal.user.address}"/>
				</div>
				<div class="input_box">
					<label for="addrdetail" class="labels">상세 주소</label>
					<input id="addrdetail" class="input_item" type="text" value="${principal.user.addrdetail}"/>
				</div>
			</div>
		</form>
		
		<div class="btns">
			<button id="btn-update" class="btn submit_btn">수정완료</button>
			<button id="btn-userdelete" class="btn submit_btn">회원탈퇴</button>
		</div>
	</div>
</section>

<script type="text/javascript" src="../script/user.js"></script>

<%@ include file="../layout/footer.jsp"%>