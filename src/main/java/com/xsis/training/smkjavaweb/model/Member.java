package com.xsis.training.smkjavaweb.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

@Entity
@Table(name="tbl_member")
@JsonIdentityInfo(generator=ObjectIdGenerators.IntSequenceGenerator.class, property="@id")
public class Member {
	public Member() {
		// TODO Auto-generated constructor stub
	}
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	private int id;
	@Column(name="pinMember", unique = true)
	private String pinMember;
	@Column(name="namaMember", nullable = false)
	private String namaMember;
	private String jk;
	private String alamat;
	private String noHp;
	private String tanggal;
	private String diskon;
	@OneToMany(fetch=FetchType.LAZY, mappedBy="member")
	private List<Pembelian> pembelian;
	public Member(int id, String pinMember, String namaMember, String jk, String alamat, String noHp, String tanggal,
			String diskon, List<Pembelian> pembelian) {
		super();
		this.id = id;
		this.pinMember = pinMember;
		this.namaMember = namaMember;
		this.jk = jk;
		this.alamat = alamat;
		this.noHp = noHp;
		this.tanggal = tanggal;
		this.diskon = diskon;
		this.pembelian = pembelian;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPinMember() {
		return pinMember;
	}
	public void setPinMember(String pinMember) {
		this.pinMember = pinMember;
	}
	public String getNamaMember() {
		return namaMember;
	}
	public void setNamaMember(String namaMember) {
		this.namaMember = namaMember;
	}
	public String getJk() {
		return jk;
	}
	public void setJk(String jk) {
		this.jk = jk;
	}
	public String getAlamat() {
		return alamat;
	}
	public void setAlamat(String alamat) {
		this.alamat = alamat;
	}
	public String getNoHp() {
		return noHp;
	}
	public void setNoHp(String noHp) {
		this.noHp = noHp;
	}
	public String getTanggal() {
		return tanggal;
	}
	public void setTanggal(String tanggal) {
		this.tanggal = tanggal;
	}
	public String getDiskon() {
		return diskon;
	}
	public void setDiskon(String diskon) {
		this.diskon = diskon;
	}
	public List<Pembelian> getPembelian() {
		return pembelian;
	}
	public void setPembelian(List<Pembelian> pembelian) {
		this.pembelian = pembelian;
	}
}
