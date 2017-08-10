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
@Table(name="tbl_penerbit")
@JsonIdentityInfo(generator=ObjectIdGenerators.IntSequenceGenerator.class,property="@id")
public class Penerbit {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	private Integer id;
	@Column(name="kode_penerbit", unique=true)
	private String kode_penerbit;
	private String nama_penerbit;
	private String alamat_penerbit;
	private Integer telpon_penerbit;
	@OneToMany(fetch=FetchType.LAZY, mappedBy="penerbit")
	private List<Buku>list_buku;

	public Penerbit() {
		// TODO Auto-generated constructor stub
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getKode_penerbit() {
		return kode_penerbit;
	}

	public void setKode_penerbit(String kode_penerbit) {
		this.kode_penerbit = kode_penerbit;
	}

	public String getNama_penerbit() {
		return nama_penerbit;
	}

	public void setNama_penerbit(String nama_penerbit) {
		this.nama_penerbit = nama_penerbit;
	}

	public String getAlamat_penerbit() {
		return alamat_penerbit;
	}

	public void setAlamat_penerbit(String alamat_penerbit) {
		this.alamat_penerbit = alamat_penerbit;
	}

	public Integer getTelpon_penerbit() {
		return telpon_penerbit;
	}

	public void setTelpon_penerbit(Integer telpon_penerbit) {
		this.telpon_penerbit = telpon_penerbit;
	}

	public List<Buku> getList_buku() {
		return list_buku;
	}

	public void setList_buku(List<Buku> list_buku) {
		this.list_buku = list_buku;
	}

	public Penerbit(Integer id, String kode_penerbit, String nama_penerbit, String alamat_penerbit,
			Integer telpon_penerbit, List<Buku> list_buku) {
		super();
		this.id = id;
		this.kode_penerbit = kode_penerbit;
		this.nama_penerbit = nama_penerbit;
		this.alamat_penerbit = alamat_penerbit;
		this.telpon_penerbit = telpon_penerbit;
		this.list_buku = list_buku;
	}
	
	
}
