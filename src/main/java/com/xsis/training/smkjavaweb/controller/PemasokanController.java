package com.xsis.training.smkjavaweb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/pemasokan")
public class PemasokanController {
	@RequestMapping
	public String index(){
		return "pemasokan";
	}
}
