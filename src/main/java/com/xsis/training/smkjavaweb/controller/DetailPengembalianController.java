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
import com.xsis.training.smkjavaweb.model.BukuPinjam;
import com.xsis.training.smkjavaweb.model.DetailPeminjaman;
import com.xsis.training.smkjavaweb.model.DetailPengembalian;
import com.xsis.training.smkjavaweb.model.Peminjaman;
import com.xsis.training.smkjavaweb.service.DataServiceTokoBuku;

@Controller
@RequestMapping("/detailpengembalian")
public class DetailPengembalianController {

	@Autowired
	private DataServiceTokoBuku dataServiceTokoBuku;
	@RequestMapping
	public String index(Model model){
		List<DetailPengembalian> pengembalian = dataServiceTokoBuku.getAllDetailPengembalian();
		model.addAttribute("detailpengembalian", pengembalian);
		return "detailpengembalian" ;
	}
}
