package com.xsis.training.smkjavaweb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/rencanabeli")
public class RencanaBeliController {
	
	@RequestMapping
	public String index(){
		return "rencanabeli";
	}
}
