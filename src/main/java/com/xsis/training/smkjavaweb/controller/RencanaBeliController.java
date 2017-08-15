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

import com.xsis.training.smkjavaweb.model.Anggota;
import com.xsis.training.smkjavaweb.model.Buku;
import com.xsis.training.smkjavaweb.model.Distributor;
import com.xsis.training.smkjavaweb.model.Kategori;
import com.xsis.training.smkjavaweb.model.Peminjaman;
import com.xsis.training.smkjavaweb.model.Penerbit;
import com.xsis.training.smkjavaweb.service.DataServiceTokoBuku;
@Controller
@RequestMapping("/rencanabeli")
public class RencanaBeliController {
	@Autowired
	DataServiceTokoBuku dataService;
	@RequestMapping
	public String index(Model model){
		List<Distributor> distributors = dataService.getAllDistributor();
		model.addAttribute("distributor", distributors);
		List<Kategori> kategoris = dataService.getAllKategori();
		model.addAttribute("kategori", kategoris);
		List<Penerbit>penerbits =dataService.getAllPenerbit();
		model.addAttribute("penerbit", penerbits);
		return "rencanabeli" ;
	}
	
	@ResponseBody
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	@ResponseStatus(value = HttpStatus.CREATED)
	public Buku tes(@RequestBody Buku buku){
		dataService.saveRencanaBeli(buku);
		return buku;
	}
	
	@ResponseBody
	@RequestMapping(value = "/getall", method = RequestMethod.POST)
	@ResponseStatus(value = HttpStatus.OK)
	public List<Buku> getAllRencana(){
		return dataService.getAllBuku();
	}
}
