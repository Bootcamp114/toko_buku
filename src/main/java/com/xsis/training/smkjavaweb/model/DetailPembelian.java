package com.xsis.training.smkjavaweb.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tbl_detail_pembelian")
public class DetailPembelian {
	@Id
	private int id;
	private String no_faktur;
	private String kode_buku;
	private int jumlah_beli;
	private String total_harga;
}
