package com.xsis.training.smkjavaweb.model;

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

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

@Entity
@Table(name="tbl_pengembalian")
@JsonIdentityInfo(generator=ObjectIdGenerators.IntSequenceGenerator.class, property="@id")
public class Pengembalian {

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	private int id;
	@Column(name="no_pengembalian", nullable = false)
	private String noPengembalian;
	private String tanggal;
	@Column(name="total_denda")
	private String totalDenda;
	private String bayar;
	private String kembalian;
	private String jumlah;
	@OneToMany(fetch = FetchType.LAZY, mappedBy="pengembalian")
	private List<DetailPengembalian> listDetailPengembalian;
	
	public Pengembalian() {
		// TODO Auto-generated constructor stub
	}

	public Pengembalian(int id, String noPengembalian, String tanggal, String totalDenda, String bayar,
			String kembalian, String jumlah, List<DetailPengembalian> listDetailPengembalian) {
		super();
		this.id = id;
		this.noPengembalian = noPengembalian;
		this.tanggal = tanggal;
		this.totalDenda = totalDenda;
		this.bayar = bayar;
		this.kembalian = kembalian;
		this.jumlah = jumlah;
		this.listDetailPengembalian = listDetailPengembalian;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNoPengembalian() {
		return noPengembalian;
	}

	public void setNoPengembalian(String noPengembalian) {
		this.noPengembalian = noPengembalian;
	}

	public String getTanggal() {
		return tanggal;
	}

	public void setTanggal(String tanggal) {
		this.tanggal = tanggal;
	}

	public String getTotalDenda() {
		return totalDenda;
	}

	public void setTotalDenda(String totalDenda) {
		this.totalDenda = totalDenda;
	}

	public String getBayar() {
		return bayar;
	}

	public void setBayar(String bayar) {
		this.bayar = bayar;
	}

	public String getKembalian() {
		return kembalian;
	}

	public void setKembalian(String kembalian) {
		this.kembalian = kembalian;
	}

	public String getJumlah() {
		return jumlah;
	}

	public void setJumlah(String jumlah) {
		this.jumlah = jumlah;
	}

	public List<DetailPengembalian> getListDetailPengembalian() {
		return listDetailPengembalian;
	}

	public void setListDetailPengembalian(List<DetailPengembalian> listDetailPengembalian) {
		this.listDetailPengembalian = listDetailPengembalian;
	}


}
