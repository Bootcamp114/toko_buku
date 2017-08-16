package com.xsis.training.smkjavaweb.controller;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.xsis.training.smkjavaweb.dao.DonaturDao;
import com.xsis.training.smkjavaweb.model.Donatur;
import com.xsis.training.smkjavaweb.service.DataServiceTokoBuku;

@Controller
@RequestMapping("/donatur")
public class DonaturController {

	private DataServiceTokoBuku dataServiceTokoBuku;
	@ResponseBody
	@RequestMapping
	public String index(){
		return "donatur";
	}
	
	@ResponseBody
	@RequestMapping(value="/save", method=RequestMethod.POST)
	@ResponseStatus(value=HttpStatus.OK)
	public Donatur save(@RequestBody Donatur donatur){
		
		return donatur;
	}
}
