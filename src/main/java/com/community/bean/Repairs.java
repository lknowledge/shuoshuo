package com.community.bean;

public class Repairs {
    private Integer repairsId;

    private String address;

    private String linkmen;

    private String linktelephone;

    private String malfunction;

    private String state;

    private String fee;

    public Integer getRepairsId() {
        return repairsId;
    }

    public void setRepairsId(Integer repairsId) {
        this.repairsId = repairsId;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getLinkmen() {
        return linkmen;
    }

    public void setLinkmen(String linkmen) {
        this.linkmen = linkmen == null ? null : linkmen.trim();
    }

    public String getLinktelephone() {
        return linktelephone;
    }

    public void setLinktelephone(String linktelephone) {
        this.linktelephone = linktelephone == null ? null : linktelephone.trim();
    }

    public String getMalfunction() {
        return malfunction;
    }

    public void setMalfunction(String malfunction) {
        this.malfunction = malfunction == null ? null : malfunction.trim();
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state == null ? null : state.trim();
    }

    public String getFee() {
        return fee;
    }

    public void setFee(String fee) {
        this.fee = fee == null ? null : fee.trim();
    }

    @Override
    public String toString() {
        return "Repairs{" +
                "repairsId=" + repairsId +
                ", address='" + address + '\'' +
                ", linkmen='" + linkmen + '\'' +
                ", linktelephone='" + linktelephone + '\'' +
                ", malfunction='" + malfunction + '\'' +
                ", state='" + state + '\'' +
                ", fee='" + fee + '\'' +
                '}';
    }
}