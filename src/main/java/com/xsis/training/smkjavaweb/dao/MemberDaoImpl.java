package com.xsis.training.smkjavaweb.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.xsis.training.smkjavaweb.model.BukuPinjam;
import com.xsis.training.smkjavaweb.model.Member;

@Repository
public class MemberDaoImpl implements MemberDao {
	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public void save(Member member) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.save(member);
		session.flush();
	}

	@Override
	public void update(Member member) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.update(member);
		session.flush();
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Member member = new Member();
		member.setId(id);
		member.setNamaMember("lulu");
		session.delete(member);
		session.flush();
	}

	@Override
	public List<Member> getAllMember() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		List<Member> list = session.createCriteria(Member.class).list();
		return list;
	}

	@Override
	public Member getMemberById(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Member member = session.get(Member.class, id);
		return member;
	}

	@Override
	public Member getMemberByPin(String pinMember) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("FROM Member WHERE pinMember =:pinMember");
		query.setString("pinMember", pinMember);
		List<Member> member = query.list();
		if(!member.isEmpty())
		return member.get(0);
		else
			return null;
	}
}
