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

import com.xsis.training.smkjavaweb.model.Distributor;
import com.xsis.training.smkjavaweb.model.Kategori;
import com.xsis.training.smkjavaweb.service.DataServiceTokoBuku;

@Controller
@RequestMapping("/kategori")
public class KategoriController {
	@Autowired
	DataServiceTokoBuku dataService;
	
	@RequestMapping
	public String index(Model model){
		List<Kategori>kategoris =dataService.getAllKategori();
		model.addAttribute("listKategori",kategoris);
		return "kategori";
	}
	
	@ResponseBody
	@RequestMapping(value="/save", method= RequestMethod.POST)
	@ResponseStatus(value=HttpStatus.CREATED)
	public Kategori kategoriSave(@RequestBody Kategori kategori){
		dataService.save(kategori);
		return kategori;
	}
	
	@RequestMapping(value="/delete/{id}", method=RequestMethod.DELETE)
	@ResponseStatus(value=HttpStatus.OK)
	public void delete(@PathVariable int id){
		System.out.println("id "+id);
		dataService.deleteKategori(id);
	}
	
	
}
