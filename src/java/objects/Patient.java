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
@Table(name = "patient")
public class Patient implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    
    @Column(name = "Id")
    private int id;
    @Column(name = "Firstname")
    private String firstname;
    @Column(name = "Lastname")
    private String lastname;
    @Column(name = "Street")
    private String street;
    @Column(name ="Postcode")
    private String postcode;
    @Column(name = "Ort")
    private String ort;
    @Column(name = "Phone")
    private String phone;
    @Column(name = "Email")
    private String email;
    @Column(name = "Birthdate")
    private String birthdate;
    @Column(name = "Symptoms")
    private String symptoms;
    @Column(name = "Bloodgroup")
    private String bloodgroup;
    @Column(name = "Weight")
    private String weight;
    @Column(name = "Height")
    private String height;
    @Column(name = "Matter")
    private String matter;
    @Column(name = "IsScheduled")
    private boolean isScheduled;

    public Patient() {
    }

    public Patient(String firstname, String lastname, String street, String postcode, String ort, String phone, String email, String birthdate, String symptoms, String bloodgroup, String weight, String height, String matter, boolean isScheduled) {
        this.firstname = firstname;
        this.lastname = lastname;
        this.street = street;
        this.postcode = postcode;
        this.ort = ort;
        this.phone = phone;
        this.email = email;
        this.birthdate = birthdate;
        this.symptoms = symptoms;
        this.bloodgroup = bloodgroup;
        this.weight = weight;
        this.height = height;
        this.matter = matter;
        this.isScheduled = isScheduled;
    }

   

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getPostcode() {
        return postcode;
    }

    public void setPostcode(String postcode) {
        this.postcode = postcode;
    }

    public String getOrt() {
        return ort;
    }

    public void setOrt(String ort) {
        this.ort = ort;
    }

   
    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
     public String getBirthdate() {
        return birthdate;
    }

    public void setBirthdate(String birthdate) {
        this.birthdate = birthdate;
    }

    public String getSymptoms() {
        return symptoms;
    }

    public void setSymptoms(String symptoms) {
        this.symptoms = symptoms;
    }
    
     public String getBloodgroup() {
        return bloodgroup;
    }

    public void setBloodgroup(String bloodgroup) {
        this.bloodgroup = bloodgroup;
    }

    public String getWeight() {
        return weight;
    }

    public void setWeight(String weight) {
        this.weight = weight;
    }

    public String getHeight() {
        return height;
    }

    public void setHeight(String height) {
        this.height = height;
    }
        
    public String getMatter() {
        return matter;
    }

    public void setMatter(String matter) {
        this.matter = matter;
    }

    public boolean getIsScheduled() {
        return isScheduled;
    }

    public void setIsScheduled(boolean isScheduled) {
        this.isScheduled = isScheduled;
    }
    
}
