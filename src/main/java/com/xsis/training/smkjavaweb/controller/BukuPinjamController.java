package com.xsis.training.smkjavaweb.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xsis.training.smkjavaweb.model.Anggota;
import com.xsis.training.smkjavaweb.model.BukuPinjam;
import com.xsis.training.smkjavaweb.service.DataServiceTokoBuku;

@Controller
@RequestMapping("/bukupinjam")
public class BukuPinjamController {
	

	@Autowired
	private DataServiceTokoBuku dataServiceTokoBuku;

	@RequestMapping
	public String index(){
		return "bukupinjam";
		
	}
	@ResponseBody
	@RequestMapping(value="/save", method=RequestMethod.POST)
	public BukuPinjam save(@RequestBody BukuPinjam bkp){
		dataServiceTokoBuku.saveBukuPinjam(bkp);
		return bkp;
	}
}