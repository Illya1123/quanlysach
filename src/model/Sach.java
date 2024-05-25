/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.Objects;

/**
 *
 * @author taki
 */
public class Sach {
    private int id;
    private String image;
    private String name;
    private String author;
    private String publisher;
    private String releaseDate;
    private String size;
    private int pageCount;
    private String description;
    private double price;
    private int categoryId;
    private int viewCount;
    private int stockQuantity;

    public Sach() {
        
    }

    public Sach(int id, String image, String name, String author, String publisher, String releaseDate, String size, int pageCount, String description, double price, int categoryId, int viewCount, int stockQuantity) {
        this.id = id;
        this.image = image;
        this.name = name;
        this.author = author;
        this.publisher = publisher;
        this.releaseDate = releaseDate;
        this.size = size;
        this.pageCount = pageCount;
        this.description = description;
        this.price = price;
        this.categoryId = categoryId;
        this.viewCount = viewCount;
        this.stockQuantity = stockQuantity;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getPublisher() {
        return publisher;
    }

    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }

    public String getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(String releaseDate) {
        this.releaseDate = releaseDate;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public int getPageCount() {
        return pageCount;
    }

    public void setPageCount(int pageCount) {
        this.pageCount = pageCount;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public int getViewCount() {
        return viewCount;
    }

    public void setViewCount(int viewCount) {
        this.viewCount = viewCount;
    }

    public int getStockQuantity() {
        return stockQuantity;
    }

    public void setStockQuantity(int stockQuantity) {
        this.stockQuantity = stockQuantity;
    }

    public void banSach(int soLuongBan) {
        if (soLuongBan <= this.stockQuantity) {
            this.stockQuantity -= soLuongBan;
            System.out.println("Đã bán " + soLuongBan + " quyển sách " + this.name);
        } else {
            System.out.println("Không đủ số lượng sách để bán");
        }
    }

    @Override
    public String toString() {
        return "Sach{" +
                "id=" + id +
                ", image='" + image + '\'' +
                ", name='" + name + '\'' +
                ", author='" + author + '\'' +
                ", publisher='" + publisher + '\'' +
                ", releaseDate='" + releaseDate + '\'' +
                ", size='" + size + '\'' +
                ", pageCount=" + pageCount +
                ", description='" + description + '\'' +
                ", price=" + price +
                ", categoryId=" + categoryId +
                ", viewCount=" + viewCount +
                ", stockQuantity=" + stockQuantity +
                '}';
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, image, name, author, publisher, releaseDate, size, pageCount, description, price, categoryId, viewCount, stockQuantity);
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj == null || getClass() != obj.getClass()) return false;
        Sach sach = (Sach) obj;
        return id == sach.id &&
                pageCount == sach.pageCount &&
                Double.compare(sach.price, price) == 0 &&
                categoryId == sach.categoryId &&
                viewCount == sach.viewCount &&
                stockQuantity == sach.stockQuantity &&
                Objects.equals(image, sach.image) &&
                Objects.equals(name, sach.name) &&
                Objects.equals(author, sach.author) &&
                Objects.equals(publisher, sach.publisher) &&
                Objects.equals(releaseDate, sach.releaseDate) &&
                Objects.equals(size, sach.size) &&
                Objects.equals(description, sach.description);
    }
}