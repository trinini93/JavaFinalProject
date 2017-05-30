package com.grandcircus.spring.models;

import javax.persistence.*;

/**
 * Created by Pro on 5/30/17.
 */
@Entity
@Table(name = "UserProfile", schema = "PETSITTER", catalog = "")
public class UserProfileEntity {
    private int userId;
    private String email;
    private String firstName;
    private String lastName;
    private String address;
    private String apt;
    private String city;
    private String state;
    private int zip;
    private String password;
    private String repeatPassword;
    private byte parent;
    private byte sitter;
    private Integer googleNum;

    @Id
    @Column(name = "userID", nullable = false)
    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    @Basic
    @Column(name = "email", nullable = false, length = 40)
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Basic
    @Column(name = "firstName", nullable = false, length = 30)
    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    @Basic
    @Column(name = "lastName", nullable = false, length = 40)
    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    @Basic
    @Column(name = "address", nullable = false, length = 50)
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Basic
    @Column(name = "apt", nullable = true, length = 15)
    public String getApt() {
        return apt;
    }

    public void setApt(String apt) {
        this.apt = apt;
    }

    @Basic
    @Column(name = "city", nullable = false, length = 25)
    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    @Basic
    @Column(name = "state", nullable = false, length = 40)
    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    @Basic
    @Column(name = "zip", nullable = false)
    public int getZip() {
        return zip;
    }

    public void setZip(int zip) {
        this.zip = zip;
    }

    @Basic
    @Column(name = "password", nullable = false, length = 6)
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Basic
    @Column(name = "repeatPassword", nullable = false, length = 6)
    public String getRepeatPassword() {
        return repeatPassword;
    }

    public void setRepeatPassword(String repeatPassword) {
        this.repeatPassword = repeatPassword;
    }

    @Basic
    @Column(name = "parent", nullable = false)
    public byte getParent() {
        return parent;
    }

    public void setParent(byte parent) {
        this.parent = parent;
    }

    @Basic
    @Column(name = "sitter", nullable = false)
    public byte getSitter() {
        return sitter;
    }

    public void setSitter(byte sitter) {
        this.sitter = sitter;
    }

    @Basic
    @Column(name = "googleNum", nullable = true)
    public Integer getGoogleNum() {
        return googleNum;
    }

    public void setGoogleNum(Integer googleNum) {
        this.googleNum = googleNum;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        UserProfileEntity that = (UserProfileEntity) o;

        if (userId != that.userId) return false;
        if (zip != that.zip) return false;
        if (parent != that.parent) return false;
        if (sitter != that.sitter) return false;
        if (email != null ? !email.equals(that.email) : that.email != null) return false;
        if (firstName != null ? !firstName.equals(that.firstName) : that.firstName != null) return false;
        if (lastName != null ? !lastName.equals(that.lastName) : that.lastName != null) return false;
        if (address != null ? !address.equals(that.address) : that.address != null) return false;
        if (apt != null ? !apt.equals(that.apt) : that.apt != null) return false;
        if (city != null ? !city.equals(that.city) : that.city != null) return false;
        if (state != null ? !state.equals(that.state) : that.state != null) return false;
        if (password != null ? !password.equals(that.password) : that.password != null) return false;
        if (repeatPassword != null ? !repeatPassword.equals(that.repeatPassword) : that.repeatPassword != null)
            return false;
        if (googleNum != null ? !googleNum.equals(that.googleNum) : that.googleNum != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = userId;
        result = 31 * result + (email != null ? email.hashCode() : 0);
        result = 31 * result + (firstName != null ? firstName.hashCode() : 0);
        result = 31 * result + (lastName != null ? lastName.hashCode() : 0);
        result = 31 * result + (address != null ? address.hashCode() : 0);
        result = 31 * result + (apt != null ? apt.hashCode() : 0);
        result = 31 * result + (city != null ? city.hashCode() : 0);
        result = 31 * result + (state != null ? state.hashCode() : 0);
        result = 31 * result + zip;
        result = 31 * result + (password != null ? password.hashCode() : 0);
        result = 31 * result + (repeatPassword != null ? repeatPassword.hashCode() : 0);
        result = 31 * result + (int) parent;
        result = 31 * result + (int) sitter;
        result = 31 * result + (googleNum != null ? googleNum.hashCode() : 0);
        return result;
    }
}
