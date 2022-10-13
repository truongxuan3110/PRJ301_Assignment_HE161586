/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;
import java.util.ArrayList;

/**
 *
 * @author Trường Xuân
 */
public class Lecturer {
    private String lid;
    private String lname;
    private boolean lgender;
    private Date ldob;
    private String ladd;
    private int lphone;
    private String lemail;
    private ArrayList<Group> groups = new ArrayList<>();
    
    public Lecturer() {
    }

    public ArrayList<Group> getGroups() {
        return groups;
    }

    public void setGroups(ArrayList<Group> groups) {
        this.groups = groups;
    }

    public String getLid() {
        return lid;
    }

    public void setLid(String lid) {
        this.lid = lid;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public boolean isLgender() {
        return lgender;
    }

    public void setLgender(boolean lgender) {
        this.lgender = lgender;
    }

    public Date getLdob() {
        return ldob;
    }

    public void setLdob(Date ldob) {
        this.ldob = ldob;
    }

    public String getLadd() {
        return ladd;
    }

    public void setLadd(String ladd) {
        this.ladd = ladd;
    }

    public int getLphone() {
        return lphone;
    }

    public void setLphone(int lphone) {
        this.lphone = lphone;
    }

    public String getLemail() {
        return lemail;
    }

    public void setLemail(String lemail) {
        this.lemail = lemail;
    }
    
}
