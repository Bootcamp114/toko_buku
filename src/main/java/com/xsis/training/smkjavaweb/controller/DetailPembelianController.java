package com.xsis.training.smkjavaweb.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.xsis.training.smkjavaweb.model.DetailPembelian;
import com.xsis.training.smkjavaweb.service.DataServiceTokoBuku;

@Controller
@RequestMapping("/detailpembelian")
public class DetailPembelianController {
	@Autowired
	DataServiceTokoBuku dataService;
	
	@RequestMapping
	public String index(Model model){
		List<DetailPembelian> listDetail = dataService.getAllDetail();
		model.addAttribute("listDetail", listDetail);
		return "pembelian";
	}
	@ResponseBody
	@RequestMapping(value="/save", method=RequestMethod.POST)
	@ResponseStatus(value=HttpStatus.CREATED)
	public DetailPembelian save(@RequestBody DetailPembelian detailPembelian){
		dataService.saveDetailPembelian(detailPembelian);
		return detailPembelian;
	}
	@RequestMapping(value="/delete/{id}", method=RequestMethod.DELETE)
	@ResponseStatus(value=HttpStatus.OK)
	public void delete(@PathVariable int id){
		dataService.deleteDetailPembelian(id);
	}
}
