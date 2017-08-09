package com.xsis.training.smkjavaweb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/pembelian")
public class PembelianController {
	@RequestMapping
	public String index(){
		return "pembelian";
	}
}
