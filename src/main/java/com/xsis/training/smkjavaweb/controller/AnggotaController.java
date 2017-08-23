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
import com.xsis.training.smkjavaweb.service.DataServiceTokoBuku;

@Controller
@RequestMapping("/anggota")
public class AnggotaController {

	@Autowired
	private DataServiceTokoBuku dataServiceTokoBuku;
	
//	@ResponseBody
	@RequestMapping
	public String index(Model model){
		List<Anggota> anggota = dataServiceTokoBuku.getAllAnggota();
		model.addAttribute("anggota", anggota);
	return "anggota";	
	}
	
	@ResponseBody
	@RequestMapping(value="/save", method=RequestMethod.POST)
	public void save(@RequestBody Anggota anggota){
		dataServiceTokoBuku.saveAnggota(anggota);
	}
	@ResponseBody
	@RequestMapping("/getAll")
	@ResponseStatus(value=HttpStatus.OK)
	public List<Anggota> getAll(){
		
		return dataServiceTokoBuku.getAllAnggota();
	}

	@RequestMapping(value = "/update", method=RequestMethod.PUT)
	@ResponseStatus(value=HttpStatus.OK)
	public void update(@RequestBody Anggota anggota){
		dataServiceTokoBuku.updateAnggota(anggota);
	}

	@RequestMapping(value="/delete/{id}", method=RequestMethod.DELETE)
	@ResponseStatus(value=HttpStatus.OK)
	public void delete(@PathVariable int id){
		dataServiceTokoBuku.deleteAnggota(id);
	}
	
	@RequestMapping(value="/getbyid/{id}", method = RequestMethod.GET)
	@ResponseBody
	@ResponseStatus(value=HttpStatus.OK)
	public Anggota getById(@PathVariable int id){
		Anggota anggota = dataServiceTokoBuku.getByIdAnggota(id);
		return anggota;
	}
	
	
}
