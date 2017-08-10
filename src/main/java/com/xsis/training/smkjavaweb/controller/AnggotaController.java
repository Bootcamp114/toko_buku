package com.xsis.training.smkjavaweb.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xsis.training.smkjavaweb.model.Anggota;
import com.xsis.training.smkjavaweb.service.DataServiceTokoBuku;

@Controller
@RequestMapping("/anggota")
public class AnggotaController {

	@Autowired
	private DataServiceTokoBuku dataServiceTokoBuku;
	
//	@ResponseBody
	@RequestMapping
	public String index(){
	return "anggota";	
	}
	
	@ResponseBody
	@RequestMapping(value="/save", method=RequestMethod.POST)
	public Anggota save(@RequestBody Anggota anggota){
		dataServiceTokoBuku.save(anggota);
		return anggota;
	}
}
