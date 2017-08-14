package com.xsis.training.smkjavaweb.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.xsis.training.smkjavaweb.model.Buku;
import com.xsis.training.smkjavaweb.service.DataServiceTokoBuku;

@Controller
@RequestMapping("/datastockbuku")
public class DataStockBukuController {
	@Autowired
	DataServiceTokoBuku dataService;
	
	@RequestMapping
	public String index(){
		return "datastockbuku";
	}
	
	@ResponseBody
	@RequestMapping("/getall")
	@ResponseStatus(value=HttpStatus.OK)
	public List<Buku> getAllBuku(){
		return dataService.getAllBuku();
	}
}
