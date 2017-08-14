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

import org.springframework.stereotype.Controller;


@Entity
@Table(name="tbl_kategori")
public class Kategori {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	private Integer id;
	@Column(name="kode_kategori", unique=true)
	private String kodeKategori;
	private String jenisKategori;
	@OneToMany(fetch=FetchType.LAZY,mappedBy="kategori" )
	private List<Buku>listBuku;
	public Kategori() {
		// TODO Auto-generated constructor stub
	}
	public Kategori(Integer id, String kodeKategori, String jenisKategori, List<Buku> listBuku) {
		super();
		this.id = id;
		this.kodeKategori = kodeKategori;
		this.jenisKategori = jenisKategori;
		this.listBuku = listBuku;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getKodeKategori() {
		return kodeKategori;
	}
	public void setKodeKategori(String kodeKategori) {
		this.kodeKategori = kodeKategori;
	}
	public String getJenisKategori() {
		return jenisKategori;
	}
	public void setJenisKategori(String jenisKategori) {
		this.jenisKategori = jenisKategori;
	}
	public List<Buku> getListBuku() {
		return listBuku;
	}
	public void setListBuku(List<Buku> listBuku) {
		this.listBuku = listBuku;
	}
	
	

}
