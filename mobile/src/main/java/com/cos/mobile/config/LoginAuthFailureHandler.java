package com.cos.mobile.config;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.authentication.AuthenticationCredentialsNotFoundException;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.InternalAuthenticationServiceException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationFailureHandler;

public class LoginAuthFailureHandler extends SimpleUrlAuthenticationFailureHandler{
	
	public void onAuthenticationFailure(HttpServletRequest request, 
			HttpServletResponse response, 
			AuthenticationException exception) throws IOException, ServletException {
		
		String errorMessage;
		
		if (exception instanceof UsernameNotFoundException) {
			errorMessage = "계정이 존재하지 않습니다.";
		}else if (exception instanceof InternalAuthenticationServiceException) { 
			errorMessage = "내부 시스템 문제로 인해 요청을 처리할 수 없습니다. 관리자에게 문의하세요."; 
		}else if (exception instanceof BadCredentialsException) { 
			errorMessage = "아이디 또는 비밀번호를 다시 확인해 주세요.";
		}else if (exception instanceof AuthenticationCredentialsNotFoundException) { 
			errorMessage = "인증 요청이 거부되었습니다. 관리자에게 문의하세요."; 
		}else { errorMessage = "알 수 없는 이유로 로그인에 실패하였습니다. 관리자에게 문의하세요."; }
		errorMessage = URLEncoder.encode(errorMessage, "UTF-8");
		setDefaultFailureUrl("/auth/loginForm?error=true&exception="+errorMessage);
		super.onAuthenticationFailure(request, response, exception);
	}

}
