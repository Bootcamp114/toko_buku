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
	private String kodePenerbit;
	private String namaPenerbit;
	private String alamatPenerbit;
	private Integer telponPenerbit;
	@OneToMany(fetch=FetchType.LAZY, mappedBy="penerbit")
	private List<Buku>listBuku;
	public Penerbit() {
		// TODO Auto-generated constructor stub
	}
	public Penerbit(Integer id, String kodePenerbit, String namaPenerbit, String alamatPenerbit, Integer telponPenerbit,
			List<Buku> listBuku) {
		super();
		this.id = id;
		this.kodePenerbit = kodePenerbit;
		this.namaPenerbit = namaPenerbit;
		this.alamatPenerbit = alamatPenerbit;
		this.telponPenerbit = telponPenerbit;
		this.listBuku = listBuku;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getKodePenerbit() {
		return kodePenerbit;
	}
	public void setKodePenerbit(String kodePenerbit) {
		this.kodePenerbit = kodePenerbit;
	}
	public String getNamaPenerbit() {
		return namaPenerbit;
	}
	public void setNamaPenerbit(String namaPenerbit) {
		this.namaPenerbit = namaPenerbit;
	}
	public String getAlamatPenerbit() {
		return alamatPenerbit;
	}
	public void setAlamatPenerbit(String alamatPenerbit) {
		this.alamatPenerbit = alamatPenerbit;
	}
	public Integer getTelponPenerbit() {
		return telponPenerbit;
	}
	public void setTelponPenerbit(Integer telponPenerbit) {
		this.telponPenerbit = telponPenerbit;
	}
	public List<Buku> getListBuku() {
		return listBuku;
	}
	public void setListBuku(List<Buku> listBuku) {
		this.listBuku = listBuku;
	}
	
	
	
}
