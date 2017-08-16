package com.xsis.training.smkjavaweb.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

@Entity
@Table(name="tbl_pembelian")
@JsonIdentityInfo(generator=ObjectIdGenerators.IntSequenceGenerator.class, property="@id")
public class Pembelian {
	public Pembelian() {
		// TODO Auto-generated constructor stub
	}
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	private int id;
	@Column(name="noFaktur", unique = true)
	private String noFaktur;
	@OneToOne
	private DetailPembelian detailPembelian;
	@ManyToOne
	private Member member;
	private Double bayar;
	private Double kembalian;
	private String tanggal;
	public Pembelian(int id, String noFaktur, DetailPembelian detailPembelian, Member member, Double bayar,
			Double kembalian, String tanggal) {
		super();
		this.id = id;
		this.noFaktur = noFaktur;
		this.detailPembelian = detailPembelian;
		this.member = member;
		this.bayar = bayar;
		this.kembalian = kembalian;
		this.tanggal = tanggal;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNoFaktur() {
		return noFaktur;
	}
	public void setNoFaktur(String noFaktur) {
		this.noFaktur = noFaktur;
	}
	public DetailPembelian getDetailPembelian() {
		return detailPembelian;
	}
	public void setDetailPembelian(DetailPembelian detailPembelian) {
		this.detailPembelian = detailPembelian;
	}
	public Member getMember() {
		return member;
	}
	public void setMember(Member member) {
		this.member = member;
	}
	public Double getBayar() {
		return bayar;
	}
	public void setBayar(Double bayar) {
		this.bayar = bayar;
	}
	public Double getKembalian() {
		return kembalian;
	}
	public void setKembalian(Double kembalian) {
		this.kembalian = kembalian;
	}
	public String getTanggal() {
		return tanggal;
	}
	public void setTanggal(String tanggal) {
		this.tanggal = tanggal;
	}
}
