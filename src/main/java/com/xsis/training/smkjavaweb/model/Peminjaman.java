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
@Table(name="tbl_peminjaman")
@JsonIdentityInfo(generator=ObjectIdGenerators.IntSequenceGenerator.class, property="@id")
public class Peminjaman {

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	private int id;
	@Column(name="no_peminjaman")
	private String noPeminjaman;
	private String jumlah;
	@OneToMany(fetch = FetchType.LAZY, mappedBy="peminjaman")
	private List<DetailPeminjaman> listDetailPeminjaman;
	
	public Peminjaman() {
		// TODO Auto-generated constructor stub
	}

	public Peminjaman(int id, String noPeminjaman, String jumlah, List<DetailPeminjaman> listDetailPeminjaman) {
		super();
		this.id = id;
		this.noPeminjaman = noPeminjaman;
		this.jumlah = jumlah;
		this.listDetailPeminjaman = listDetailPeminjaman;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNoPeminjaman() {
		return noPeminjaman;
	}

	public void setNoPeminjaman(String noPeminjaman) {
		this.noPeminjaman = noPeminjaman;
	}

	public String getJumlah() {
		return jumlah;
	}

	public void setJumlah(String jumlah) {
		this.jumlah = jumlah;
	}

	public List<DetailPeminjaman> getListDetailPeminjaman() {
		return listDetailPeminjaman;
	}

	public void setListDetailPeminjaman(List<DetailPeminjaman> listDetailPeminjaman) {
		this.listDetailPeminjaman = listDetailPeminjaman;
	}

	
}
