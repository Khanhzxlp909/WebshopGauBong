/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.example.DuAn1AKAWeb.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.*;

/**
 *
 * @author qivub
 */
@Entity
@Table(name="Chatlieu")
public class Chatlieu {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Long ID;
    public String Tenchatlieu;
    public String Motachatlieu;
    public int Trangthai;

    public Chatlieu() {

    }

    public Chatlieu(Long ID, String TenChatLieu, String MoTaChatLieu, int TrangThai) {
        this.ID = ID;
        this.Tenchatlieu = TenChatLieu;
        this.Motachatlieu = MoTaChatLieu;
        this.Trangthai = TrangThai;
    }

    public Long getID_ChatLieu() {
        return ID;
    }

    public void setID_ChatLieu(Long ID) {
        this.ID = ID;
    }

    public String getTenChatLieu() {
        return Tenchatlieu;
    }

    public void setTenChatLieu(String TenChatLieu) {
        this.Tenchatlieu = TenChatLieu;
    }

    public String getMoTaChatLieu() {
        return Motachatlieu;
    }

    public void setMoTaChatLieu(String MoTaChatLieu) {
        this.Motachatlieu = MoTaChatLieu;
    }

    public int getTrangThai() {
        return Trangthai;
    }

    public void setTrangThai(int TrangThai) {
        this.Trangthai = TrangThai;
    }
}
