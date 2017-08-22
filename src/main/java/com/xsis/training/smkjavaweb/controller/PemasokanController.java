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

import com.xsis.training.smkjavaweb.javautils.JavaUtils;
import com.xsis.training.smkjavaweb.model.Buku;
import com.xsis.training.smkjavaweb.model.TransaksiPembelian;
import com.xsis.training.smkjavaweb.service.DataServiceTokoBuku;

@Controller
@RequestMapping(value="/pemasokan")
public class PemasokanController {
	@Autowired
	private DataServiceTokoBuku dataService;
	@Autowired
	private JavaUtils javaUtils;
	
	
	@RequestMapping
	public String index(Model model){
		String noUrut = javaUtils.getNoUrut();
		model.addAttribute("noUrut", noUrut);
		List<Buku>bukus = dataService.getAllBuku();
		model.addAttribute("buku",bukus);
		return "pemasokan";
	}
	
	@ResponseBody
	@RequestMapping(value = "/edit/{id}" , method = RequestMethod.GET)
	@ResponseStatus(value=HttpStatus.OK)
	public Buku getObatById(@PathVariable int id){
		return dataService.getBukuById(id);
	}
	
	@ResponseBody
	@RequestMapping(value = "/save", method=RequestMethod.POST )
	@ResponseStatus(value = HttpStatus.CREATED)
	public TransaksiPembelian saveTransaksi(@RequestBody TransaksiPembelian transaksiPembelian){
		dataService.saveTransaksi(transaksiPembelian);
		return transaksiPembelian;
	}
}
