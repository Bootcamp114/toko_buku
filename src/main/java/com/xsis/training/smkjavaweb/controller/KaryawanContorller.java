package com.xsis.training.smkjavaweb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/karyawan")
public class KaryawanContorller {

	@ResponseBody
	@RequestMapping
	public String index(){
		return "karyawan";
	}
}
