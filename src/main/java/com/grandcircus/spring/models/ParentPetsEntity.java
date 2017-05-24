package com.grandcircus.spring.models;

import javax.persistence.*;

/**
 * Created by trina2 on 5/24/17.
 */
@Entity
@Table(name = "ParentPets", schema = "PETSITTER", catalog = "")
public class ParentPetsEntity {
    private int id;
    private String petName;
    private byte dog;
    private byte cat;
    private String breed;
    private byte inHome;
    private String temper;
    private byte feed;
    private byte walk;
    private byte play;
    private byte visit;

    @Id
    @Column(name = "ID", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "PetName", nullable = false, length = 30)
    public String getPetName() {
        return petName;
    }

    public void setPetName(String petName) {
        this.petName = petName;
    }

    @Basic
    @Column(name = "Dog", nullable = false)
    public byte getDog() {
        return dog;
    }

    public void setDog(byte dog) {
        this.dog = dog;
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
    @Column(name = "Breed", nullable = true, length = 50)
    public String getBreed() {
        return breed;
    }

    public void setBreed(String breed) {
        this.breed = breed;
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

        ParentPetsEntity that = (ParentPetsEntity) o;

        if (id != that.id) return false;
        if (dog != that.dog) return false;
        if (cat != that.cat) return false;
        if (inHome != that.inHome) return false;
        if (feed != that.feed) return false;
        if (walk != that.walk) return false;
        if (play != that.play) return false;
        if (visit != that.visit) return false;
        if (petName != null ? !petName.equals(that.petName) : that.petName != null) return false;
        if (breed != null ? !breed.equals(that.breed) : that.breed != null) return false;
        if (temper != null ? !temper.equals(that.temper) : that.temper != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (petName != null ? petName.hashCode() : 0);
        result = 31 * result + (int) dog;
        result = 31 * result + (int) cat;
        result = 31 * result + (breed != null ? breed.hashCode() : 0);
        result = 31 * result + (int) inHome;
        result = 31 * result + (temper != null ? temper.hashCode() : 0);
        result = 31 * result + (int) feed;
        result = 31 * result + (int) walk;
        result = 31 * result + (int) play;
        result = 31 * result + (int) visit;
        return result;
    }
}
