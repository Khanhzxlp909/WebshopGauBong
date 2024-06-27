package com.example.DuAn1AKAWeb.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.DuAn1AKAWeb.model.Chatlieu;
import com.example.DuAn1AKAWeb.model.Chitietsanpham;
import com.example.DuAn1AKAWeb.model.Danhmucsp;
import com.example.DuAn1AKAWeb.model.Mausac;
import com.example.DuAn1AKAWeb.model.Size;
import com.example.DuAn1AKAWeb.model.Thuonghieu;
import com.example.DuAn1AKAWeb.model.Trongluong;
import com.example.DuAn1AKAWeb.repository.ChatLieuRepositoty;
import com.example.DuAn1AKAWeb.repository.DanhMucSPRepositoty;
import com.example.DuAn1AKAWeb.repository.MauSacRepositoty;
import com.example.DuAn1AKAWeb.repository.ProductDetailRepository;
import com.example.DuAn1AKAWeb.repository.SizeRepositoty;
import com.example.DuAn1AKAWeb.repository.ThuongHieuRepositoty;
import com.example.DuAn1AKAWeb.repository.TrongLuongRepositoty;

@Controller
@RequestMapping("home")
public class HomeController {

    @Autowired
    private ProductDetailRepository ctspRepo;
    @Autowired
    private ChatLieuRepositoty chatlieuRepo ;
    @Autowired
    private TrongLuongRepositoty trongluongRepo;
    @Autowired
    private ThuongHieuRepositoty thRepo;
    @Autowired
    private SizeRepositoty sizeRepo;
    @Autowired
    private MauSacRepositoty mausacRepo;
    @Autowired
    private DanhMucSPRepositoty dmRepo;
    
    @GetMapping("listproduct")
    public String getAllProduct(Model model, @RequestParam(name = "page", defaultValue = "0") int page) {
        int pageSize = 12;
        Page<Chitietsanpham> productPage = ctspRepo.findAllProductDetail(PageRequest.of(page, pageSize));
        model.addAttribute("productPage", productPage);
        return "product/listProduct";
    }
    
    @GetMapping("add")
    public String add(Model model,@ModelAttribute("product") Chitietsanpham prd){
        
        List<Chatlieu> lstChatlieu = chatlieuRepo.findAll();
        List<Mausac> lsMausac = mausacRepo.findAll();
        List<Trongluong> lstTrongLuong = trongluongRepo.findAll();
        List<Thuonghieu> lsThuonghieu = thRepo.findAll();
        List<Size> lstSize = sizeRepo.findAll();
        List<Danhmucsp> lstDanhmuc = dmRepo.findAll();
        
        model.addAttribute("chatlieus",lstChatlieu);
        model.addAttribute("mausacs",lsMausac);
        model.addAttribute("trongluongs",lstTrongLuong);
        model.addAttribute("thuonghieus",lsThuonghieu);
        model.addAttribute("sizes",lstSize);
        model.addAttribute("danhmucs",lstDanhmuc);
        return "product/add";
    }
    
    @PostMapping("store")
    public String store(Chitietsanpham prd){

        prd.setTrangthai(1);
        ctspRepo.save(prd);
        return "redirect:/home/listproduct";
    }
    
    @GetMapping("detail/{id}")
    public String detailProduct(@PathVariable("id") int id, Model model){
        Chitietsanpham ctsp = ctspRepo.findById(id).orElse(null);// or else la bat buoc
        
        model.addAttribute("ctsps", ctsp);
        return "product/ProductDetail";
    }
}
