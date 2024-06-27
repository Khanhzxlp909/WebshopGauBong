package com.example.DuAn1AKAWeb.model;

import jakarta.persistence.*;

@Entity
public class Chitietsanpham {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Long Id_chitietsanpham;
    public String Tensanpham;
    public int Soluong;
    public int Trangthai;
    public String Ghichu;
    public int Gia;
    public String Anhsanpham;
    
    @ManyToOne
    @JoinColumn(name ="Id_Trongluong")
    public Trongluong trongluong;
    
    @ManyToOne
    @JoinColumn(name ="Id_size")
    public Size size;
    
    @ManyToOne
    @JoinColumn(name ="Id_Danhmucsanpham")
    public Danhmucsp danhmucsp;
   
    @ManyToOne
    @JoinColumn(name ="Id_Mausac")
    public Mausac mausac;
    
    @ManyToOne
    @JoinColumn(name ="Id_Thuonghieu")
    public Thuonghieu thuonghieu;
    
    @ManyToOne
    @JoinColumn(name ="Id_Chatlieu")
    public Chatlieu chatlieu;

    public Chitietsanpham() {
    }

    public Chitietsanpham(Long Id_Chitietsanpham, String Tensanpham, int Soluong, int Trangthai, String Ghichu, int Gia, String Anhsanpham, Trongluong trongluong, Size size, Danhmucsp danhmucsp, Mausac mausac, Thuonghieu thuonghieu, Chatlieu chatlieu) {
        this.Id_chitietsanpham = Id_Chitietsanpham;
        this.Tensanpham = Tensanpham;
        this.Soluong = Soluong;
        this.Trangthai = Trangthai;
        this.Ghichu = Ghichu;
        this.Gia = Gia;
        this.Anhsanpham = Anhsanpham;
        this.trongluong = trongluong;
        this.size = size;
        this.danhmucsp = danhmucsp;
        this.mausac = mausac;
        this.thuonghieu = thuonghieu;
        this.chatlieu = chatlieu;
    }

    public Long getId_Chitietsanpham() {
        return Id_chitietsanpham;
    }

    public void setId_Chitietsanpham(Long Id_Chitietsanpham) {
        this.Id_chitietsanpham = Id_Chitietsanpham;
    }

    public String getTensanpham() {
        return Tensanpham;
    }

    public void setTensanpham(String Tensanpham) {
        this.Tensanpham = Tensanpham;
    }

    public int getSoluong() {
        return Soluong;
    }

    public void setSoluong(int Soluong) {
        this.Soluong = Soluong;
    }

    public int getTrangthai() {
        return Trangthai;
    }

    public void setTrangthai(int Trangthai) {
        this.Trangthai = Trangthai;
    }

    public String getGhichu() {
        return Ghichu;
    }

    public void setGhichu(String Ghichu) {
        this.Ghichu = Ghichu;
    }

    public int getGia() {
        return Gia;
    }

    public void setGia(int Gia) {
        this.Gia = Gia;
    }

    public String getAnhsanpham() {
        return Anhsanpham;
    }

    public void setAnhsanpham(String Anhsanpham) {
        this.Anhsanpham = Anhsanpham;
    }

    public Trongluong getTrongluong() {
        return trongluong;
    }

    public void setTrongluong(Trongluong trongluong) {
        this.trongluong = trongluong;
    }

    public Size getSize() {
        return size;
    }

    public void setSize(Size size) {
        this.size = size;
    }

    public Danhmucsp getDanhmucsp() {
        return danhmucsp;
    }

    public void setDanhmucsp(Danhmucsp danhmucsp) {
        this.danhmucsp = danhmucsp;
    }

    public Mausac getMausac() {
        return mausac;
    }

    public void setMausac(Mausac mausac) {
        this.mausac = mausac;
    }

    public Thuonghieu getThuonghieu() {
        return thuonghieu;
    }

    public void setThuonghieu(Thuonghieu thuonghieu) {
        this.thuonghieu = thuonghieu;
    }

    public Chatlieu getChatlieu() {
        return chatlieu;
    }

    public void setChatlieu(Chatlieu chatlieu) {
        this.chatlieu = chatlieu;
    }

    
    
    
}
