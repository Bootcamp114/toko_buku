package com.xsis.training.smkjavaweb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xsis.training.smkjavaweb.model.Anggota;

@Controller
@RequestMapping("/anggota")
public class AnggotaController {

	
	@ResponseBody
	@RequestMapping
	public String index(){
	return "This is Controller Anggota";	
	}
	
	@ResponseBody
	@RequestMapping(value="/save", method=RequestMethod.POST)
	public Anggota save(@RequestBody Anggota anggota){
		return anggota;
	}
}
