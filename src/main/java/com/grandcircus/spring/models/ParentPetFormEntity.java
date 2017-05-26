package com.grandcircus.spring.models;

import javax.persistence.*;

/**
 * Created by trina2 on 5/26/17.
 */
@Entity
@Table(name = "ParentPetForm", schema = "PETSITTER", catalog = "")
public class ParentPetFormEntity {
    private int id;
    private String userId;
    private String petName;
    private String breeds;
    private String medType;
    private String petWatch;
    private String activity;

    @Id
    @Column(name = "ID", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "UserID", nullable = true, length = 45)
    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    @Basic
    @Column(name = "petName", nullable = true, length = 140)
    public String getPetName() {
        return petName;
    }

    public void setPetName(String petName) {
        this.petName = petName;
    }

    @Basic
    @Column(name = "breeds", nullable = true, length = 500)
    public String getBreeds() {
        return breeds;
    }

    public void setBreeds(String breeds) {
        this.breeds = breeds;
    }

    @Basic
    @Column(name = "medType", nullable = true, length = 45)
    public String getMedType() {
        return medType;
    }

    public void setMedType(String medType) {
        this.medType = medType;
    }

    @Basic
    @Column(name = "petWatch", nullable = true, length = 140)
    public String getPetWatch() {
        return petWatch;
    }

    public void setPetWatch(String petWatch) {
        this.petWatch = petWatch;
    }

    @Basic
    @Column(name = "activity", nullable = true, length = 500)
    public String getActivity() {
        return activity;
    }

    public void setActivity(String activity) {
        this.activity = activity;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ParentPetFormEntity that = (ParentPetFormEntity) o;

        if (id != that.id) return false;
        if (userId != null ? !userId.equals(that.userId) : that.userId != null) return false;
        if (petName != null ? !petName.equals(that.petName) : that.petName != null) return false;
        if (breeds != null ? !breeds.equals(that.breeds) : that.breeds != null) return false;
        if (medType != null ? !medType.equals(that.medType) : that.medType != null) return false;
        if (petWatch != null ? !petWatch.equals(that.petWatch) : that.petWatch != null) return false;
        if (activity != null ? !activity.equals(that.activity) : that.activity != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (userId != null ? userId.hashCode() : 0);
        result = 31 * result + (petName != null ? petName.hashCode() : 0);
        result = 31 * result + (breeds != null ? breeds.hashCode() : 0);
        result = 31 * result + (medType != null ? medType.hashCode() : 0);
        result = 31 * result + (petWatch != null ? petWatch.hashCode() : 0);
        result = 31 * result + (activity != null ? activity.hashCode() : 0);
        return result;
    }
}
