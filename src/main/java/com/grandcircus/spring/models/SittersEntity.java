package com.grandcircus.spring.models;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Created by Pro on 5/23/17.
 */
@Entity
@Table(name = "SITTERS", schema = "PETSITTER", catalog = "")
public class SittersEntity {

    private int sitID;
    private byte smDog;
    private byte medDog;
    private byte bigDog;
    private byte cat;
    private byte inHome;
    private String temper;
    private byte feed;
    private byte walk;
    private byte play;
    private byte visit;

    @Basic
    @Column(name = "sitID", nullable = false)
    public int getSitID() {
        return sitID;
    }

    public void setSitID(int sitID) {
        this.sitID = sitID;
    }

    @Basic
    @Column(name = "SmDog", nullable = false)
    public byte getSmDog() {
        return smDog;
    }

    public void setSmDog(byte smDog) {
        this.smDog = smDog;
    }

    @Basic
    @Column(name = "MedDog", nullable = false)
    public byte getMedDog() {
        return medDog;
    }

    public void setMedDog(byte medDog) {
        this.medDog = medDog;
    }

    @Basic
    @Column(name = "BigDog", nullable = false)
    public byte getBigDog() {
        return bigDog;
    }

    public void setBigDog(byte bigDog) {
        this.bigDog = bigDog;
    }

    @Basic
    @Column(name = "Cat", nullable = false)
    public byte getCat() {
        return cat;
    }

    public void setCat(byte cat) {
        this.cat = cat;
    }

    @Basic
    @Column(name = "InHome", nullable = false)
    public byte getInHome() {
        return inHome;
    }

    public void setInHome(byte inHome) {
        this.inHome = inHome;
    }

    @Basic
    @Column(name = "Temper", nullable = false, length = 10)
    public String getTemper() {
        return temper;
    }

    public void setTemper(String temper) {
        this.temper = temper;
    }

    @Basic
    @Column(name = "Feed", nullable = false)
    public byte getFeed() {
        return feed;
    }

    public void setFeed(byte feed) {
        this.feed = feed;
    }

    @Basic
    @Column(name = "Walk", nullable = false)
    public byte getWalk() {
        return walk;
    }

    public void setWalk(byte walk) {
        this.walk = walk;
    }

    @Basic
    @Column(name = "Play", nullable = false)
    public byte getPlay() {
        return play;
    }

    public void setPlay(byte play) {
        this.play = play;
    }

    @Basic
    @Column(name = "Visit", nullable = false)
    public byte getVisit() {
        return visit;
    }

    public void setVisit(byte visit) {
        this.visit = visit;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        SittersEntity that = (SittersEntity) o;

        if (smDog != that.smDog) return false;
        if (medDog != that.medDog) return false;
        if (bigDog != that.bigDog) return false;
        if (cat != that.cat) return false;
        if (inHome != that.inHome) return false;
        if (feed != that.feed) return false;
        if (walk != that.walk) return false;
        if (play != that.play) return false;
        if (visit != that.visit) return false;
        if (temper != null ? !temper.equals(that.temper) : that.temper != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = (int) smDog;
        result = 31 * result + (int) medDog;
        result = 31 * result + (int) bigDog;
        result = 31 * result + (int) cat;
        result = 31 * result + (int) inHome;
        result = 31 * result + (temper != null ? temper.hashCode() : 0);
        result = 31 * result + (int) feed;
        result = 31 * result + (int) walk;
        result = 31 * result + (int) play;
        result = 31 * result + (int) visit;
        return result;
    }
}
