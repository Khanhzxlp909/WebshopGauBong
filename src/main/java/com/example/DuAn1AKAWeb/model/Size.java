/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.example.DuAn1AKAWeb.model;

import jakarta.persistence.*;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

/**
 *
 * @author qivub
 */
@Entity
@Table(name="Size")
public class Size {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Long ID;
    public String Tensize;
    public String Motasize;
    public int Trangthai;
    
    public Size() {
    }

    public Size(Long ID, String TenSize, String MoTaSize, int TrangThai) {
        this.ID = ID;
        this.Tensize = TenSize;
        this.Motasize = MoTaSize;
        this.Trangthai = TrangThai;
    }

    
    public Long getID_Size() {
        return ID;
    }

    public void setID_Size(Long ID_Size) {
        this.ID = ID_Size;
    }

    public String getTensize() {
        return Tensize;
    }

    public void setTensize(String Tensize) {
        this.Tensize = Tensize;
    }

    public String getMoTaSize() {
        return Motasize;
    }

    public void setMoTaSize(String MoTaSize) {
        this.Motasize = MoTaSize;
    }

    public int getTrangthai() {
        return Trangthai;
    }

    public void setTrangthai(int Trangthai) {
        this.Trangthai = Trangthai;
    }
    
}
