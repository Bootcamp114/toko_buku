package com.xsis.training.smkjavaweb.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xsis.training.smkjavaweb.model.Anggota;
import com.xsis.training.smkjavaweb.model.Peminjaman;
import com.xsis.training.smkjavaweb.service.DataServiceTokoBuku;

@Controller
@RequestMapping("/pengembalian")
public class PengembalianController {

	@Autowired
	private DataServiceTokoBuku dataServiceTokoBuku;
	@RequestMapping
	public String index(Model model){
		List<Anggota> anggota = dataServiceTokoBuku.getAllAnggota();
		model.addAttribute("anggota", anggota);
		return "pengembalian";
	}
	
	@ResponseBody
	@RequestMapping(value="/getbukupengembalian/{kode}", method=RequestMethod.GET)
	public Peminjaman peminjaman(@PathVariable String kode){
		Peminjaman peminjaman = dataServiceTokoBuku.getBukuPengembalianByKode(kode);
		return peminjaman;
	}
}
