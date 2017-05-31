package com.grandcircus.spring.models;

import javax.persistence.*;

/**
 * Created by trina2 on 5/30/17.
 */
@Entity
@Table(name = "AddSitter", schema = "PETSITTER", catalog = "")
public class AddSitterEntity {
    private int idAddSitter;
    private String sitterName;
    private String sitterEmail;
    private String googIdParent;

    @Id
    @Column(name = "idAddSitter", nullable = false)
    public int getIdAddSitter() {
        return idAddSitter;
    }

    public void setIdAddSitter(int idAddSitter) {
        this.idAddSitter = idAddSitter;
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

        AddSitterEntity that = (AddSitterEntity) o;

        if (idAddSitter != that.idAddSitter) return false;
        if (sitterName != null ? !sitterName.equals(that.sitterName) : that.sitterName != null) return false;
        if (sitterEmail != null ? !sitterEmail.equals(that.sitterEmail) : that.sitterEmail != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = idAddSitter;
        result = 31 * result + (sitterName != null ? sitterName.hashCode() : 0);
        result = 31 * result + (sitterEmail != null ? sitterEmail.hashCode() : 0);
        return result;
    }

    @Basic
    @Column(name = "googIDParent", nullable = true, length = 255)
    public String getGoogIdParent() {
        return googIdParent;
    }

    public void setGoogIdParent(String googIdParent) {
        this.googIdParent = googIdParent;
    }
}
