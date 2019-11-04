package com.community.bean;

public class holderUser {
    private Integer houseId;

    private String username;

    private String password;

    private String image;

    public Integer getHouseId() {
        return houseId;
    }

    public void setHouseId(Integer houseId) {
        this.houseId = houseId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image == null ? null : image.trim();
    }

    public holderUser() {
    }

    public holderUser(Integer houseId, String username, String password, String image) {
        this.houseId = houseId;
        this.username = username;
        this.password = password;
        this.image = image;
    }

    @Override
    public String toString() {
        return "holderUser{" +
                "houseId=" + houseId +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", image='" + image + '\'' +
                '}';
    }
}