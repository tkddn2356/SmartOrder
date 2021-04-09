package com.example.repository;

import com.example.domain.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UserMapper {

    public int createUser(User user);
    public int createRandomRating(@Param("user_id")Long user_id, @Param("menu_id")Long menu_id, @Param("rating")int rating);
    public User getUserById(String account_id); // 요거는 모바일페이지로 자기정보 확인할때
    public User getUserByPhone_number(String phone_number); // 요거는 키오스크에서 간단 로그인할때

    public int createRating(@Param("user_id")Long user_id, @Param("menu_id")Long menu_id, @Param("rating")int rating);
    public Long getRecentUserId();


}
