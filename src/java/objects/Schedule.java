/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package objects;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author Rolandas
 */
@Entity
@Table(name = "schedule")
public class Schedule implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    
    @Column(name = "Id")
    private int id;
    @Column(name = "Date")
    private String date;
    @Column(name = "eightToNine")
    private int eightToNine;
    @Column(name = "nineToTen")
    private int nineToTen;
    @Column(name = "tenToEleven")
    private int tenToEleven;
    @Column(name = "elevenToTwelve")
    private int elevenToTwelve;
    @Column(name = "thirteenToFourteen")
    private int thirteenToFourteen;
    @Column(name = "fourteenToFifteen")
    private int fourteenToFifteen;

    public Schedule() {
    }

    public Schedule(String date, int eightToNine, int nineToTen, int tenToEleven, int elevenToTwelve, int thirteenToFourteen, int fourteenToFifteen) {
        this.date = date;
        this.eightToNine = eightToNine;
        this.nineToTen = nineToTen;
        this.tenToEleven = tenToEleven;
        this.elevenToTwelve = elevenToTwelve;
        this.thirteenToFourteen = thirteenToFourteen;
        this.fourteenToFifteen = fourteenToFifteen;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
    
    public int getEightToNine() {
        return eightToNine;
    }

    public void setEightToNine(int eightToNine) {
        this.eightToNine = eightToNine;
    }

    public int getNineToTen() {
        return nineToTen;
    }

    public void setNineToTen(int nineToTen) {
        this.nineToTen = nineToTen;
    }

    public int getTenToEleven() {
        return tenToEleven;
    }

    public void setTenToEleven(int tenToEleven) {
        this.tenToEleven = tenToEleven;
    }

    public int getElevenToTwelve() {
        return elevenToTwelve;
    }

    public void setElevenToTwelve(int elevenToTwelve) {
        this.elevenToTwelve = elevenToTwelve;
    }

    public int getThirteenToFourteen() {
        return thirteenToFourteen;
    }

    public void setThirteenToFourteen(int thirteenToFourteen) {
        this.thirteenToFourteen = thirteenToFourteen;
    }

    public int getFourteenToFifteen() {
        return fourteenToFifteen;
    }

    public void setFourteenToFifteen(int fourteenToFifteen) {
        this.fourteenToFifteen = fourteenToFifteen;
    }
    
    
}
