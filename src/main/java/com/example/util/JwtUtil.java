package com.example.util;

import com.example.domain.User;
import com.example.repository.UserMapper;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import io.jsonwebtoken.security.Keys;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.xml.bind.DatatypeConverter;
import java.security.Key;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@Component
public class JwtUtil {

    @Autowired
    private UserMapper userMapper;

    @Value("${JWT_SECRET_KEY}")
    private String myKey;
    private Key key;

    public JwtUtil() {
    }

    @PostConstruct
    public void JwtUtil() {
        this.key = Keys.hmacShaKeyFor(myKey.getBytes());
    }

    public String generate(String id) {
        // header
        Map<String, Object> headers = new HashMap<>();
        headers.put("typ", "JWT");
        headers.put("alg", "HS256");

        // payload
        Map<String, Object> claims = new HashMap<>();
        claims.put("sub", id);
        claims.put("exp", DateUtil.addHoursToJavaUtilDate(new Date(), 24));

        // Generate token
        String token = Jwts.builder()
                .setHeader(headers)
                .setClaims(claims)
                .signWith(key, SignatureAlgorithm.HS256)
                .compact();

        return token;
    }

    public boolean isExpired(String token){
        Claims claims  = Jwts.parser().setSigningKey(this.key).parseClaimsJws(token).getBody();
        Date exp = claims .get("exp", Date.class);
        Date now = new Date();
        if( exp.getTime() < now.getTime()){
            return true;
        }
        else
            return false;
    }

    public User getUserByHeader(){
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes()).getRequest();
        String header = request.getHeader("Authorization");
        return getUserByToken(header);
    }

    public User getUserByToken(String header){
        if (header == null || !header.startsWith("Bearer "))
            return null;

        String authToken = header.substring(7);

        if(isExpired(authToken)==false){
            Claims claims  = Jwts.parser().setSigningKey(this.key).parseClaimsJws(authToken).getBody();
            String account_id = claims.getSubject();
            User user = userMapper.getUserByAccountId(account_id);
            return user;
        }
        else
            return null;

    }




}
