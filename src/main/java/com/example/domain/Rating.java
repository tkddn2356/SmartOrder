package com.example.domain;

public class Rating {
    private Long user_id;
    private Long menu_id;
    private int rating;

    public Long getUser_id() {
        return user_id;
    }

    public Long getMenu_id() {
        return menu_id;
    }

    public int getRating() {
        return rating;
    }

    public void setUser_id(Long user_id) {
        this.user_id = user_id;
    }

    public void setMenu_id(Long menu_id) {
        this.menu_id = menu_id;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }
}
