package com.xsis.training.smkjavaweb.model;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

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
	@OneToMany(fetch=FetchType.LAZY, mappedBy="pembelian")
	private List<DetailPembelian> detailPembelian;
	@ManyToOne
	private Member member;
	private Double jumlahTotal; 
	private Double bayar;
	private Double kembalian;
	@Temporal(TemporalType.DATE)
	private Date tanggal;
	@ManyToOne
	private Kasir kasir;
	public Pembelian(int id, String noFaktur, List<DetailPembelian> detailPembelian, Member member, Double jumlahTotal,
			Double bayar, Double kembalian, Date tanggal, Kasir kasir) {
		super();
		this.id = id;
		this.noFaktur = noFaktur;
		this.detailPembelian = detailPembelian;
		this.member = member;
		this.jumlahTotal = jumlahTotal;
		this.bayar = bayar;
		this.kembalian = kembalian;
		this.tanggal = tanggal;
		this.kasir = kasir;
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
	public List<DetailPembelian> getDetailPembelian() {
		return detailPembelian;
	}
	public void setDetailPembelian(List<DetailPembelian> detailPembelian) {
		this.detailPembelian = detailPembelian;
	}
	public Member getMember() {
		return member;
	}
	public void setMember(Member member) {
		this.member = member;
	}
	public Double getJumlahTotal() {
		return jumlahTotal;
	}
	public void setJumlahTotal(Double jumlahTotal) {
		this.jumlahTotal = jumlahTotal;
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
	public Date getTanggal() {
		return tanggal;
	}
	public void setTanggal(Date tanggal) {
		this.tanggal = tanggal;
	}
	public Kasir getKasir() {
		return kasir;
	}
	public void setKasir(Kasir kasir) {
		this.kasir = kasir;
	}
	
}
