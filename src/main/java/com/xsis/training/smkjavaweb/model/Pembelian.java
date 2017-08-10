package com.xsis.training.smkjavaweb.model;

import javax.persistence.Entity;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

@Entity
@Table(name="tbl_pembelian")
@JsonIdentityInfo(generator=ObjectIdGenerators.IntSequenceGenerator.class, property="@id")
public class Pembelian {
	private int id;
	private String no_faktur;
	private String diskon;
	private Double bayar;
	private Double kembalian;
	private String tanggal;
}
