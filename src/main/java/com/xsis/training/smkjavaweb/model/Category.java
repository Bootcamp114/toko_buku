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
@Table(name="tbl_kategori")
@JsonIdentityInfo(generator=ObjectIdGenerators.IntSequenceGenerator.class, property="@id")
public class Category {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	private Integer id;
	@Column(name="kode_kategori", unique=true)
	private String kode_kategori;
	private String nama_kategori;
	@OneToMany(fetch=FetchType.LAZY, mappedBy="category")
	private List<Buku>listbuku;
	
	
	public Category() {
		// TODO Auto-generated constructor stub
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getKode_kategori() {
		return kode_kategori;
	}

	public void setKode_kategori(String kode_kategori) {
		this.kode_kategori = kode_kategori;
	}

	public String getNama_kategori() {
		return nama_kategori;
	}

	public void setNama_kategori(String nama_kategori) {
		this.nama_kategori = nama_kategori;
	}

	

	public Category(Integer id, String kode_kategori, String nama_kategori) {
		super();
		this.id = id;
		this.kode_kategori = kode_kategori;
		this.nama_kategori = nama_kategori;
		
	}

	
}
