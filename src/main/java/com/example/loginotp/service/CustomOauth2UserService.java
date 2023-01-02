package com.example.loginotp.service;

import org.springframework.security.oauth2.client.userinfo.DefaultOAuth2UserService;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserRequest;
import org.springframework.security.oauth2.core.OAuth2AuthenticationException;
import org.springframework.security.oauth2.core.user.OAuth2User;

public class CustomOauth2UserService extends DefaultOAuth2UserService {

	// we override the loadUser() method which will be called by Spring Oauth2 upon 
	// successful authentication, it will then returns a new CustomUauth2User object. 
	@Override
	public OAuth2User loadUser(OAuth2UserRequest userRequest) throws OAuth2AuthenticationException {
		OAuth2User user = super.loadUser(userRequest);
		return new CustomOauth2User(user);
	}
}
