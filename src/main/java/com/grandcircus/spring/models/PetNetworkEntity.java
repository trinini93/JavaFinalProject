package com.grandcircus.spring.models;

import javax.persistence.*;

/**
 * Created by Pro on 5/23/17.
 */
@Entity
@Table(name = "PetNetwork", schema = "PETSITTER", catalog = "")
public class PetNetworkEntity {
    private int ntwkID;
    private int userIDnum;
    private String petName;
    private String breedis;
    private String parentName;
    private String parentAddr;
    private String parentZip;
    private String parentEmail;
    private int userIdent;
    private String sitterName;
    private String sitterEmail;

    @Basic
    @Column(name = "ntwkID", nullable = false)
    public int getNtwkID() {
        return ntwkID;
    }

    public void setNtwkID(int NtwkID) {
        this.ntwkID = NtwkID;
    }

    @Basic
    @Column(name = "UserIDnum", nullable = false)
    public int getUserIDnum() {
        return userIDnum;
    }

    public void setUserIDnum(int userIDnum) {
        this.userIDnum = userIDnum;
    }

    @Basic
    @Column(name = "Pet_Name", nullable = false, length = 30)
    public String getPetName() {
        return petName;
    }

    public void setPetName(String petName) {
        this.petName = petName;
    }

    @Basic
    @Column(name = "Breedis", nullable = false, length = 45)
    public String getBreedis() {
        return breedis;
    }

    public void setBreedis(String breedis) {
        this.breedis = breedis;
    }

    @Basic
    @Column(name = "ParentName", nullable = false, length = 45)
    public String getParentName() {
        return parentName;
    }

    public void setParentName(String parentName) {
        this.parentName = parentName;
    }

    @Basic
    @Column(name = "ParentAddr", nullable = false, length = 45)
    public String getParentAddr() {
        return parentAddr;
    }

    public void setParentAddr(String parentAddr) {
        this.parentAddr = parentAddr;
    }

    @Basic
    @Column(name = "ParentZip", nullable = false, length = 5)
    public String getParentZip() {
        return parentZip;
    }

    public void setParentZip(String parentZip) {
        this.parentZip = parentZip;
    }

    @Basic
    @Column(name = "ParentEmail", nullable = false, length = 45)
    public String getParentEmail() {
        return parentEmail;
    }

    public void setParentEmail(String parentEmail) {
        this.parentEmail = parentEmail;
    }

    @Basic
    @Column(name = "UserIdent", nullable = false)
    public int getUserIdent() {
        return userIdent;
    }

    public void setUserIdent(int userIdent) {
        this.userIdent = userIdent;
    }

    @Basic
    @Column(name = "SitterName", nullable = false, length = 45)
    public String getSitterName() {
        return sitterName;
    }

    public void setSitterName(String sitterName) {
        this.sitterName = sitterName;
    }

    @Basic
    @Column(name = "SitterEmail", nullable = false, length = 45)
    public String getSitterEmail() {
        return sitterEmail;
    }

    public void setSitterEmail(String sitterEmail) {
        this.sitterEmail = sitterEmail;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        PetNetworkEntity that = (PetNetworkEntity) o;

        if (userIDnum != that.userIDnum) return false;
        if (userIdent != that.userIdent) return false;
        if (petName != null ? !petName.equals(that.petName) : that.petName != null) return false;
        if (breedis != null ? !breedis.equals(that.breedis) : that.breedis != null) return false;
        if (parentName != null ? !parentName.equals(that.parentName) : that.parentName != null) return false;
        if (parentAddr != null ? !parentAddr.equals(that.parentAddr) : that.parentAddr != null) return false;
        if (parentZip != null ? !parentZip.equals(that.parentZip) : that.parentZip != null) return false;
        if (parentEmail != null ? !parentEmail.equals(that.parentEmail) : that.parentEmail != null) return false;
        if (sitterName != null ? !sitterName.equals(that.sitterName) : that.sitterName != null) return false;
        if (sitterEmail != null ? !sitterEmail.equals(that.sitterEmail) : that.sitterEmail != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = userIDnum;
        result = 31 * result + (petName != null ? petName.hashCode() : 0);
        result = 31 * result + (breedis != null ? breedis.hashCode() : 0);
        result = 31 * result + (parentName != null ? parentName.hashCode() : 0);
        result = 31 * result + (parentAddr != null ? parentAddr.hashCode() : 0);
        result = 31 * result + (parentZip != null ? parentZip.hashCode() : 0);
        result = 31 * result + (parentEmail != null ? parentEmail.hashCode() : 0);
        result = 31 * result + userIdent;
        result = 31 * result + (sitterName != null ? sitterName.hashCode() : 0);
        result = 31 * result + (sitterEmail != null ? sitterEmail.hashCode() : 0);
        return result;
    }

    private int ntwkId;

    @Id
    @Column(name = "NtwkID", nullable = false)
    public int getNtwkId() {
        return ntwkId;
    }

    public void setNtwkId(int ntwkId) {
        this.ntwkId = ntwkId;
    }
}
