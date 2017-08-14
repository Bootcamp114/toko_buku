package com.xsis.training.smkjavaweb.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.xsis.training.smkjavaweb.model.Penerbit;
import com.xsis.training.smkjavaweb.service.DataServiceTokoBuku;

@Controller
@RequestMapping("/penerbit")
public class PenerbitController {
	
	@Autowired DataServiceTokoBuku dataService;
	
	@RequestMapping
	public String index(){
		return "penerbit";
	}
	
	@ResponseBody
	@RequestMapping(value="/save", method= RequestMethod.POST)
	@ResponseStatus(value=HttpStatus.CREATED)
	public Penerbit save(@RequestBody Penerbit penerbit){
		//dataService.savePenerbit(penerbit);
		return penerbit;
	}
}
