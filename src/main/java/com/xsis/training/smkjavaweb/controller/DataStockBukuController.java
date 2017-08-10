package com.xsis.training.smkjavaweb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/datastockbuku")
public class DataStockBukuController {
	@RequestMapping
	public String index(){
		return "datastockbuku";
	}
}
