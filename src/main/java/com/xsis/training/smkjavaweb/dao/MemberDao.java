package com.xsis.training.smkjavaweb.dao;

import java.util.List;

import com.xsis.training.smkjavaweb.model.Member;

public interface MemberDao {
	public void save(Member member);
	
	public void update(Member member);
	
	public void delete(int id);
	
	public List<Member> getAllMember();
	
	public Member getMemberById(int id);

	public Member getMemberByPin(String pinMember);
}
