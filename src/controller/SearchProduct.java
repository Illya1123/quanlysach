/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import java.util.ArrayList;
import dao.SachDAO;
import model.Sach;
/**
 *
 * @author taki
 */
public class SearchProduct {
    public static SearchProduct getInstance() {
        return new SearchProduct();
    }

    public ArrayList<Sach> searchTatCaSach(String text) {
        ArrayList<Sach> result = new ArrayList<>();
        ArrayList<Sach> sachList = SachDAO.getInstance().selectAll();
        for (Sach sach : sachList) {
            if (sach.getName().toLowerCase().contains(text.toLowerCase()) ||
                sach.getAuthor().toLowerCase().contains(text.toLowerCase()) ||
                sach.getPublisher().toLowerCase().contains(text.toLowerCase())) {
                result.add(sach);
            }
        }
        return result;
    }
    
    public ArrayList<Sach> searchMaSach(String text) {
        ArrayList<Sach> result = new ArrayList<>();
        ArrayList<Sach> sachList = SachDAO.getInstance().selectAll();
        for (Sach sach : sachList) {
            String sachIdString = String.valueOf(sach.getId());
            if (sachIdString.toLowerCase().contains(text.toLowerCase())) {
                result.add(sach);
            }
        }
        return result;
    }

    public ArrayList<Sach> searchTenSach(String text) {
        ArrayList<Sach> result = new ArrayList<>();
        ArrayList<Sach> sachList = SachDAO.getInstance().selectAll();
        for (Sach sach : sachList) {
            if (sach.getName().toLowerCase().contains(text.toLowerCase())) {
                result.add(sach);
            }
        }
        return result;
    }
    
    public ArrayList<Sach> searchTacGia(String text) {
        ArrayList<Sach> result = new ArrayList<>();
        ArrayList<Sach> sachList = SachDAO.getInstance().selectAll();
        for (Sach sach : sachList) {
            if (sach.getAuthor().toLowerCase().contains(text.toLowerCase())) {
                result.add(sach);
            }
        }
        return result;
    }
    
    public ArrayList<Sach> searchNhaXuatBan(String text) {
        ArrayList<Sach> result = new ArrayList<>();
        ArrayList<Sach> sachList = SachDAO.getInstance().selectAll();
        for (Sach sach : sachList) {
            if (sach.getPublisher().toLowerCase().contains(text.toLowerCase())) {
                result.add(sach);
            }
        }
        return result;
    }
    
    public ArrayList<Sach> searchNgayPhatHanh(String text) {
        ArrayList<Sach> result = new ArrayList<>();
        ArrayList<Sach> sachList = SachDAO.getInstance().selectAll();
        for (Sach sach : sachList) {
            if (sach.getReleaseDate().toLowerCase().contains(text.toLowerCase())) {
                result.add(sach);
            }
        }
        return result;
    }
    
    public ArrayList<Sach> searchKichThuoc(String text) {
        ArrayList<Sach> result = new ArrayList<>();
        ArrayList<Sach> sachList = SachDAO.getInstance().selectAll();
        for (Sach sach : sachList) {
            if (sach.getSize().toLowerCase().contains(text.toLowerCase())) {
                result.add(sach);
            }
        }
        return result;
    }
    
    public ArrayList<Sach> searchSoTrang(String text) {
        ArrayList<Sach> result = new ArrayList<>();
        ArrayList<Sach> sachList = SachDAO.getInstance().selectAll();
        for (Sach sach : sachList) {
            String sachSoTrangString = String.valueOf(sach.getPageCount());
            if (sachSoTrangString.toLowerCase().contains(text.toLowerCase())) {
                result.add(sach);
            }
        }
        return result;
    }
    
    public ArrayList<Sach> searchMoTa(String text) {
        ArrayList<Sach> result = new ArrayList<>();
        ArrayList<Sach> sachList = SachDAO.getInstance().selectAll();
        for (Sach sach : sachList) {
            if (sach.getDescription().toLowerCase().contains(text.toLowerCase())) {
                result.add(sach);
            }
        }
        return result;
    }
    
    public ArrayList<Sach> searchDonGiaSach(String text) {
        ArrayList<Sach> result = new ArrayList<>();
        ArrayList<Sach> sachList = SachDAO.getInstance().selectAll();
        for (Sach sach : sachList) {
            String sachDonGiaString = Double.toString(sach.getPrice());
            if (sachDonGiaString.toLowerCase().contains(text.toLowerCase())) {
                result.add(sach);
            }
        }
        return result;
    }

    public Sach searchById(String id) {
        return SachDAO.getInstance().selectById(id);
    }
}
