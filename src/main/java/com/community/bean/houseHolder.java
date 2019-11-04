package com.community.bean;

public class houseHolder {
    private Integer houseId;

    private String name;

    private String gender;

    private Integer age;

    private Integer members;

    private String telephone;

    private String email;

    public Integer getHouseId() {
        return houseId;
    }

    public void setHouseId(Integer houseId) {
        this.houseId = houseId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender == null ? null : gender.trim();
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public Integer getMembers() {
        return members;
    }

    public void setMembers(Integer members) {
        this.members = members;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone == null ? null : telephone.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public houseHolder(Integer houseId, String name, String gender, Integer age, Integer members, String telephone, String email) {
        this.houseId = houseId;
        this.name = name;
        this.gender = gender;
        this.age = age;
        this.members = members;
        this.telephone = telephone;
        this.email = email;
    }

    public houseHolder() {
    }


    @Override
    public String toString() {
        return "houseHolder{" +
                "houseId=" + houseId +
                ", name='" + name + '\'' +
                ", gender='" + gender + '\'' +
                ", age=" + age +
                ", members=" + members +
                ", telephone='" + telephone + '\'' +
                ", email='" + email + '\'' +
                '}';
    }
}