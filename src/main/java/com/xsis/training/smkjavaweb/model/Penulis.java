package com.xsis.training.smkjavaweb.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.stereotype.Controller;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

@Controller
@Table(name="tbl_penulis")
@JsonIdentityInfo(generator=ObjectIdGenerators.IntSequenceGenerator.class, property="@id")
public class Penulis {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	private int id;
	@Column(name="kode_penulis", unique=true)
	private String kodePenulis;
	private String namaPenulis;
	private String noHp;
	@OneToMany(fetch=FetchType.LAZY,mappedBy="penulis")
	private List<Buku>listBuku;
	
	public Penulis() {
		// TODO Auto-generated constructor stub
	}

	public Penulis(int id, String kodePenulis, String namaPenulis, String noHp, List<Buku> listBuku) {
		super();
		this.id = id;
		this.kodePenulis = kodePenulis;
		this.namaPenulis = namaPenulis;
		this.noHp = noHp;
		this.listBuku = listBuku;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getKodePenulis() {
		return kodePenulis;
	}

	public void setKodePenulis(String kodePenulis) {
		this.kodePenulis = kodePenulis;
	}

	public String getNamaPenulis() {
		return namaPenulis;
	}

	public void setNamaPenulis(String namaPenulis) {
		this.namaPenulis = namaPenulis;
	}

	public String getNoHp() {
		return noHp;
	}

	public void setNoHp(String noHp) {
		this.noHp = noHp;
	}

	public List<Buku> getListBuku() {
		return listBuku;
	}

	public void setListBuku(List<Buku> listBuku) {
		this.listBuku = listBuku;
	}
	
	
}
