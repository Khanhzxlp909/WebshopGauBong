/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.example.DuAn1AKAWeb.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

/**
 *
 * @author qivub
 */
@Entity
@Table(name="Trongluong")
public class Trongluong {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Long ID;
    public String Trongluong;
    public int Trangthai;

    public Trongluong() {
    }
    
    public Trongluong(Long ID, String TrongLuong, int TrangThai) {
        this.ID = ID;
        this.Trongluong = TrongLuong;
        this.Trangthai = TrangThai;
    }
    
    public Long getID_TrongLuong() {
        return ID;
    }

    public void setID_TrongLuong(Long ID) {
        this.ID = ID;
    }

    public String getTrongluong() {
        return Trongluong;
    }

    public void setTrongluong(String Trongluong) {
        this.Trongluong = Trongluong;
    }

    public int getTrangthai() {
        return Trangthai;
    }

    public void setTrangthai(int Trangthai) {
        this.Trangthai = Trangthai;
    }

    
}
