package com.example.repository;

import com.example.domain.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UserMapper {

    public int createUser(User user);
    public User getUserByAccountId(String account_id);

    //redis 대신 사용
    public String getJwtTokenByAccountId(String account_id);
    public int setJwtTokenByAccountId(@Param("jwt_token")String token, @Param("account_id")String account_id);

}
