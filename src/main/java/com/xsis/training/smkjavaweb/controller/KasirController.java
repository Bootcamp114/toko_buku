package com.xsis.training.smkjavaweb.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.xsis.training.smkjavaweb.model.Kasir;
import com.xsis.training.smkjavaweb.service.DataServiceKasir;

@Controller
@RequestMapping("/kasir")
public class KasirController {
	@Autowired
	private DataServiceKasir dataServiceKasir;
	
	@RequestMapping
	public String index(){
		return "kasir";
	}
	
	@RequestMapping(value="/save", method=RequestMethod.POST)
	@ResponseStatus(value=HttpStatus.CREATED)
	public void save(@RequestBody Kasir kasir){
		dataServiceKasir.saveKasir(kasir);
		
	}
	
	@RequestMapping(value="/update", method=RequestMethod.PUT)
	@ResponseStatus(value=HttpStatus.OK)
	public void update(@RequestBody Kasir kasir){
		dataServiceKasir.updateKasir(kasir);
	}
	
	@RequestMapping(value="/delete/{id}", method=RequestMethod.DELETE)
	@ResponseStatus(value=HttpStatus.OK)
	public void delete(@PathVariable int id){
		dataServiceKasir.deleteKasir(id);
	}
	
	@ResponseBody
	@RequestMapping(value="/getall", method=RequestMethod.POST)
	@ResponseStatus(value=HttpStatus.OK)
	public List<Kasir> getAllKasir(){
		return dataServiceKasir.getAllKasir();
	}
	
	@ResponseBody
	@RequestMapping(value="/edit/{id}", method=RequestMethod.GET)
	@ResponseStatus(value=HttpStatus.OK)
	public Kasir getKasirById(@PathVariable int id){
		return dataServiceKasir.getKasirById(id);
	}
}
