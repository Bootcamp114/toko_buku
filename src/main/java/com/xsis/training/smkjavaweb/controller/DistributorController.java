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

import com.xsis.training.smkjavaweb.javautils.JavaUtils;
import com.xsis.training.smkjavaweb.model.Buku;
import com.xsis.training.smkjavaweb.model.Distributor;
import com.xsis.training.smkjavaweb.service.DataServiceTokoBuku;

@Controller
@RequestMapping("/distributor")
public class DistributorController {
	@Autowired
	DataServiceTokoBuku dataService;
	@Autowired
	JavaUtils javaUtils;
	
	@RequestMapping
	public String index(Model model){
		String kodeDistributor = javaUtils.getKodeDistributor();
		model.addAttribute("kodeDistributor", kodeDistributor);
		List<Distributor>distributors =dataService.getAllDistributor();
		model.addAttribute("distributor",distributors);
		return "distributor";
	}
	
	@ResponseBody
	@RequestMapping(value="/save", method=RequestMethod.POST)
	@ResponseStatus(value=HttpStatus.CREATED)
	public Distributor save(@RequestBody Distributor distributor){
		dataService.saveDistributor(distributor);
		return distributor;
	}
}
