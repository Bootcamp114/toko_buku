package com.xsis.training.smkjavaweb.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.xsis.training.smkjavaweb.model.Buku;
import com.xsis.training.smkjavaweb.model.DetailPembelian;
import com.xsis.training.smkjavaweb.service.DataServiceTokoBuku;

@Controller
@RequestMapping("/pembelian")
public class PembelianController {
	@Autowired
	DataServiceTokoBuku dataService;
	
	@RequestMapping
	public String index(Model model){
		List<DetailPembelian> listDetail = dataService.getAllDetail();
		model.addAttribute("listDetail", listDetail);
		
		List<Buku> listBuku = dataService.getAllBuku();
		model.addAttribute("listBuku", listBuku);
		return "pembelian";
	}
	
	@ResponseBody
	@RequestMapping(value="/pilih/{id}", method=RequestMethod.GET)
	@ResponseStatus(value=HttpStatus.OK)
	public Buku getBukuById(@PathVariable int id){
		return dataService.getBukuById(id);
	}
	
	
}
