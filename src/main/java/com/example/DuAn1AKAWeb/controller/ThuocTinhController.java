/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.example.DuAn1AKAWeb.controller;

import com.example.DuAn1AKAWeb.model.*;
import com.example.DuAn1AKAWeb.repository.*;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author qivub
 */
@Controller
@RequestMapping("/product")
public class ThuocTinhController {
    @Autowired
    private SizeRepositoty sizeRepo;
    @Autowired
    private MauSacRepositoty mausacRepo;
    @Autowired
    private DanhMucSPRepositoty danhmucRepo;
    @Autowired
    private TrongLuongRepositoty trongLuongRepo;
    @Autowired
    private ThuongHieuRepositoty thRepo;
    @Autowired
    private ChatLieuRepositoty chatLieuRepo;
    
    @GetMapping("/index")
    public String getProduct(Model model){
        List<Size> lstProduct = sizeRepo.findAll();
        List<Mausac> lstMausac = mausacRepo.findAll();
        List<Danhmucsp> lstDanhmucsp = danhmucRepo.findAll();
        List<Trongluong> lstTrongluong = trongLuongRepo.findAll();
        List<Thuonghieu> lstThuonghieu = thRepo.findAll();
        List<Chatlieu> lstChatlieu = chatLieuRepo.findAll();
        
        
        model.addAttribute("sizes",lstProduct);
        model.addAttribute("mausacs",lstMausac);
        model.addAttribute("danhmucs",lstDanhmucsp);
        model.addAttribute("trongluongs",lstTrongluong);
        model.addAttribute("thuonghieus",lstThuonghieu);
        model.addAttribute("chatlieus",lstChatlieu);
        return "/thuoctinh/index";
    }
//    @GetMapping("/index")
//    public String getAllAttributes(Model model){
//        List<Mausac> lstMausac = mausacRepo.findAll();
//        model.addAttribute("mausacs",lstMausac);
//        return "/thuoctinh/index";
//    }
}
