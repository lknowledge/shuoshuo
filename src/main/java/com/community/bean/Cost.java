package com.community.bean;

public class Cost {
    private Integer costId;

    private String electricity;

    private String gas;

    private String water;

    private String fee;

    private Integer houseId;

    public Integer getCostId() {
        return costId;
    }

    public void setCostId(Integer costId) {
        this.costId = costId;
    }

    public String getElectricity() {
        return electricity;
    }

    public void setElectricity(String electricity) {
        this.electricity = electricity == null ? null : electricity.trim();
    }

    public String getGas() {
        return gas;
    }

    public void setGas(String gas) {
        this.gas = gas == null ? null : gas.trim();
    }

    public String getWater() {
        return water;
    }

    public void setWater(String water) {
        this.water = water == null ? null : water.trim();
    }

    public String getFee() {
        return fee;
    }

    public void setFee(String fee) {
        this.fee = fee == null ? null : fee.trim();
    }

    public Integer getHouseId() {
        return houseId;
    }

    public void setHouseId(Integer houseId) {
        this.houseId = houseId;
    }

    public Cost(Integer costId, String electricity, String gas, String water, String fee, Integer houseId) {
        this.costId = costId;
        this.electricity = electricity;
        this.gas = gas;
        this.water = water;
        this.fee = fee;
        this.houseId = houseId;
    }

    public Cost() {
    }

    @Override
    public String toString() {
        return "Cost{" +
                "costId=" + costId +
                ", electricity='" + electricity + '\'' +
                ", gas='" + gas + '\'' +
                ", water='" + water + '\'' +
                ", fee='" + fee + '\'' +
                ", houseId=" + houseId +
                '}';
    }
}