package com.xsis.training.smkjavaweb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("distributor")
public class DistributorController {
	@RequestMapping
	public String index(){
		return "distributor";
	}
}
