package com.xsis.training.smkjavaweb.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.xsis.training.smkjavaweb.model.Buku;
import com.xsis.training.smkjavaweb.model.Penerbit;
import com.xsis.training.smkjavaweb.service.DataServiceTokoBuku;

@Controller
@RequestMapping("/penerbit")
public class PenerbitController {
	
	@Autowired 
	DataServiceTokoBuku dataService;
	
	@RequestMapping
	public String index(Model model){
		List<Penerbit>penerbits =dataService.getAllPenerbit();
		model.addAttribute("penerbit",penerbits);
		return "penerbit";
	}
	
	@ResponseBody
	@RequestMapping(value="/save", method= RequestMethod.POST)
	@ResponseStatus(value=HttpStatus.CREATED)
	public Penerbit save(@RequestBody Penerbit penerbit){
		dataService.savePenerbit(penerbit);
		return penerbit;
	}
}
