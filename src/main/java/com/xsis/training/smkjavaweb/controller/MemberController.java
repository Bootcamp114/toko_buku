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

import com.xsis.training.smkjavaweb.model.Member;
import com.xsis.training.smkjavaweb.service.DataServiceMember;

@Controller
@RequestMapping("/member")
public class MemberController {
	@Autowired
	private DataServiceMember dataServiceMember;
	
	@RequestMapping
	public String index(){
		return "member";
	}
	
	@RequestMapping(value="/save", method=RequestMethod.POST)
	@ResponseStatus(value=HttpStatus.CREATED)
	public void save(@RequestBody Member member){
		dataServiceMember.saveMember(member);
	}
	
	@RequestMapping(value="/update", method=RequestMethod.PUT)
	@ResponseStatus(value=HttpStatus.OK)
	public void update(@RequestBody Member member){
		dataServiceMember.updateMember(member);
	}
	
	@RequestMapping(value="/delete/{id}", method=RequestMethod.DELETE)
	@ResponseStatus(value=HttpStatus.OK)
	public void delete(@PathVariable int id){
		dataServiceMember.deleteMember(id);
	}
	
	@ResponseBody
	@RequestMapping(value="/getall", method=RequestMethod.POST)
	@ResponseStatus(value=HttpStatus.OK)
	public List<Member> getAllMember(){
		return dataServiceMember.getAllMember();
	}
	
	@ResponseBody
	@RequestMapping(value="/edit/{id}", method=RequestMethod.GET)
	@ResponseStatus(value=HttpStatus.OK)
	public Member getMemberById(@PathVariable int id){
		return dataServiceMember.getMemberById(id);
	}
}
