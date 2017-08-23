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

import com.xsis.training.smkjavaweb.model.Buku;
import com.xsis.training.smkjavaweb.model.DetailPembelian;
import com.xsis.training.smkjavaweb.model.Kasir;
import com.xsis.training.smkjavaweb.model.Member;
import com.xsis.training.smkjavaweb.model.Pembelian;
import com.xsis.training.smkjavaweb.service.DataServiceKasir;
import com.xsis.training.smkjavaweb.service.DataServiceTokoBuku;
import com.xsis.training.smkjavaweb.utils.AppUtils;

@Controller
@RequestMapping("/pembelian")
public class PembelianController {
	@Autowired
	DataServiceTokoBuku dataService;
	@Autowired
	DataServiceKasir dataServiceKasir;
	@Autowired
	AppUtils appUtils;
	
	@RequestMapping
	public String index(Model model){
		List<DetailPembelian> listDetail = dataService.getAllDetail();
		model.addAttribute("listDetail", listDetail);
		
		List<Buku> listBuku = dataService.getAllBuku();
		model.addAttribute("listBuku", listBuku);
		
		List<Kasir> listKasir = dataServiceKasir.getAllKasir();
		model.addAttribute("listKasir", listKasir);
		
		String hitungTotal = dataService.hitungDetail();
		model.addAttribute("hitungTotal", hitungTotal);
		
		model.addAttribute("noFaktur" , appUtils.getNoFaktur());
		return "pembelian";
	}
	
	@ResponseBody
	@RequestMapping(value="/pilih/{id}", method=RequestMethod.GET)
	@ResponseStatus(value=HttpStatus.OK)
	public Buku getBukuById(@PathVariable int id){
		return dataService.getBukuById(id);
	}
	
	@ResponseBody
	@RequestMapping(value="/cekmember/{pinMember}", method=RequestMethod.GET)
	public Member getMemberByPin(@PathVariable String pinMember){
		return dataService.getMemberByPin(pinMember);
	}
	
	@ResponseBody
	@RequestMapping(value="/selesai", method=RequestMethod.POST)
	@ResponseStatus(value=HttpStatus.CREATED)
	public Pembelian save(@RequestBody Pembelian pembelian){
		dataService.savePembelian(pembelian);
		return pembelian;
	}
}
