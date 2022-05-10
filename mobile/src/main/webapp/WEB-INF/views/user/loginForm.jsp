<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<link rel="stylesheet" href="../css/forms.css">
<link rel="stylesheet" href="../css/loginform.css">

<section>
	<div class="form_container">
	
		<div class="form_title">
			<h1><span class="logo">MO:BILE</span> 로그인</h1>
		</div>
		
		<form id="login" class="form login_form" name="loginform">
				<div class="input_box">
					<label for="userid" class="labels">아이디</label>
					<input id="userid" class="input_item" type="text" required/>
				</div>
				
				<div class="input_box">
					<label for="password"  class="labels">비밀번호</label>
					<input id="password" class="input_item" type="password" required/>
				</div>
		</form>
		
		<div class="btns">
			<button type="button" id="btn-login" class="btn submit_btn">로그인</button>
			<button type="button" class="btn button_btn skyblue">아이디 찾기</button>
			<button type="button" class="btn button_btn pink">비밀번호 찾기</button>
			<span class="span_txt"><b>▶ 아직 회원이 아니신가요?</b> <a href="/user/joinForm"><button type="button" class="btn btn_alt">회원가입하기</button></a></span>
		</div>
		
		<div class="form_heading">
			<h3>SNS 계정으로 로그인</h3>
			<div class="sns_box">
				<div class="sns_item kakao">
					<img alt="kakaotalk" src="../css/icon/kakao-talk.png" class="sns_icon"/>
					<p>카카오톡으로 로그인</p>
				</div>
				<span class="span_txt">SNS 계정으로 더 간편하게 이용하세요</span>
			</div>
		</div>
		
	</div>
	
</section>

<script type="text/javascript" src="../script/user.js"></script>
<%@ include file="../layout/footer.jsp"%>