package com.xsis.training.smkjavaweb.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xsis.training.smkjavaweb.dao.MemberDao;
import com.xsis.training.smkjavaweb.model.Member;

@Service
@Transactional
public class DataServiceMember {
	@Autowired
	MemberDao memberDao;
	
	public void saveMember(Member member){
		memberDao.save(member);
	}
	
	public void updateMember(Member member){
		memberDao.update(member);
	}
	
	public void deleteMember(int id){
		memberDao.delete(id);
	}
	
	public List<Member> getAllMember(){
		return memberDao.getAllMember();
	}
	
	public Member getMemberById(int id){
		return memberDao.getMemberById(id);
	}
	
	public Member getMemberByPin(String pinMember) {
		// TODO Auto-generated method stub
		return memberDao.getMemberByPin(pinMember);
	}
}
