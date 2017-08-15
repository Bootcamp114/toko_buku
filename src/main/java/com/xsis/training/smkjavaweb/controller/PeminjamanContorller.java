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
import com.xsis.training.smkjavaweb.model.Peminjaman;
import com.xsis.training.smkjavaweb.service.DataServiceTokoBuku;

@Controller
@RequestMapping("/peminjaman")
public class PeminjamanContorller {

	@Autowired
	private DataServiceTokoBuku dataServiceTokoBuku;
	@RequestMapping
	public String index(Model model){
		List<Peminjaman> peminjaman = dataServiceTokoBuku.getAllPeminjaman();
		model.addAttribute("peminjaman", peminjaman);
		List<Anggota> anggota = dataServiceTokoBuku.getAllAnggota();
		model.addAttribute("anggota", anggota);
		return "peminjaman" ;
	}
	
	@ResponseBody
	@RequestMapping(value="/save", method=RequestMethod.POST)
	public Peminjaman save(@RequestBody Peminjaman peminjaman){
		dataServiceTokoBuku.savePeminjaman(peminjaman);
		return peminjaman;
	}
	@ResponseBody
	@RequestMapping("/getAll")
	@ResponseStatus(value=HttpStatus.OK)
	public List<Peminjaman> getAll(){
		
		return dataServiceTokoBuku.getAllPeminjaman();
	}
	
}
