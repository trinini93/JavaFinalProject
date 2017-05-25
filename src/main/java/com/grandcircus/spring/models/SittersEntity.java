package com.grandcircus.spring.models;

import javax.persistence.*;

/**
 * Created by trina2 on 5/25/17.
 */
@Entity
@Table(name = "SITTERS", schema = "PETSITTER", catalog = "")
public class SittersEntity {
    private Byte myHome;
    private Byte yourHome;
    private String temper;
    private byte sitId;
    private String petSize;
    private String activities;
    private String trav;
    private String experience;

    @Basic
    @Column(name = "myHome", nullable = true)
    public Byte getMyHome() {
        return myHome;
    }

    public void setMyHome(Byte myHome) {
        this.myHome = myHome;
    }

    @Basic
    @Column(name = "yourHome", nullable = true)
    public Byte getYourHome() {
        return yourHome;
    }

    public void setYourHome(Byte yourHome) {
        this.yourHome = yourHome;
    }

    @Basic
    @Column(name = "temper", nullable = true, length = 50)
    public String getTemper() {
        return temper;
    }

    public void setTemper(String temper) {
        this.temper = temper;
    }

    @Id
    @Column(name = "sitID", nullable = false)
    public byte getSitId() {
        return sitId;
    }

    public void setSitId(byte sitId) {
        this.sitId = sitId;
    }

    @Basic
    @Column(name = "petSize", nullable = true, length = 60)
    public String getPetSize() {
        return petSize;
    }

    public void setPetSize(String petSize) {
        this.petSize = petSize;
    }

    @Basic
    @Column(name = "activities", nullable = true, length = 50)
    public String getActivities() {
        return activities;
    }

    public void setActivities(String activities) {
        this.activities = activities;
    }

    @Basic
    @Column(name = "trav", nullable = true, length = 35)
    public String getTrav() {
        return trav;
    }

    public void setTrav(String trav) {
        this.trav = trav;
    }

    @Basic
    @Column(name = "experience", nullable = true, length = 15)
    public String getExperience() {
        return experience;
    }

    public void setExperience(String experience) {
        this.experience = experience;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        SittersEntity that = (SittersEntity) o;

        if (sitId != that.sitId) return false;
        if (myHome != null ? !myHome.equals(that.myHome) : that.myHome != null) return false;
        if (yourHome != null ? !yourHome.equals(that.yourHome) : that.yourHome != null) return false;
        if (temper != null ? !temper.equals(that.temper) : that.temper != null) return false;
        if (petSize != null ? !petSize.equals(that.petSize) : that.petSize != null) return false;
        if (activities != null ? !activities.equals(that.activities) : that.activities != null) return false;
        if (trav != null ? !trav.equals(that.trav) : that.trav != null) return false;
        if (experience != null ? !experience.equals(that.experience) : that.experience != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = myHome != null ? myHome.hashCode() : 0;
        result = 31 * result + (yourHome != null ? yourHome.hashCode() : 0);
        result = 31 * result + (temper != null ? temper.hashCode() : 0);
        result = 31 * result + (int) sitId;
        result = 31 * result + (petSize != null ? petSize.hashCode() : 0);
        result = 31 * result + (activities != null ? activities.hashCode() : 0);
        result = 31 * result + (trav != null ? trav.hashCode() : 0);
        result = 31 * result + (experience != null ? experience.hashCode() : 0);
        return result;
    }
}
