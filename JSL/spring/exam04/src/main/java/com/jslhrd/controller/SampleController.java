package com.jslhrd.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller //어노테이션을 붙이는 순간 컨트롤러로 인식해줌
@RequestMapping("sample") //기본경로jsp랑 똑같음 > path?

public class SampleController {
	private static final Logger log =
			LoggerFactory.getLogger(SampleController.class);
	
	@RequestMapping("")
	public void test01() {
		log.info("test01() call ....... ");
	}
	@RequestMapping("test02")
	public void test02() {
		log.info("test02() call ....... ");
	}
	@RequestMapping("test03")//parameter 받을떄
	public void test03(@RequestParam("name") String name,@RequestParam("age") int age) {
		log.info("name : " + name);
		log.info("age : " + age);
	}
}