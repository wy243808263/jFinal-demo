package com.demo.service.impl;

import org.springframework.stereotype.Service;

import com.demo.service.TestService;

@Service
public class TestServiceImpl implements TestService {
	@Override
	public void update() {
		System.out.println("---");
	} 
}
