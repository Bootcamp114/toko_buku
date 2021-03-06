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

import com.xsis.training.smkjavaweb.model.Anggota;
import com.xsis.training.smkjavaweb.model.DetailPeminjaman;
import com.xsis.training.smkjavaweb.model.Karyawan;
import com.xsis.training.smkjavaweb.model.Peminjaman;
import com.xsis.training.smkjavaweb.model.Pengembalian;
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
		List<Karyawan> karyawan = dataServiceTokoBuku.getAllKaryawan();
		model.addAttribute("karyawan", karyawan);
		return "pengembalian";
	}
	@ResponseBody
	@RequestMapping(value="/save", method=RequestMethod.POST)
	@ResponseStatus(value=HttpStatus.CREATED)
	public Pengembalian save(@RequestBody Pengembalian pengembalian){
		dataServiceTokoBuku.savePengembalian(pengembalian);
		return pengembalian;
	}
	@ResponseBody
	@RequestMapping(value="/getbukupengembalian/{kode}", method=RequestMethod.GET)
	public DetailPeminjaman peminjaman(@PathVariable String kode){
		DetailPeminjaman peminjaman = dataServiceTokoBuku.getBukuPengembalianByKode(kode);
		return peminjaman;
	}
}
