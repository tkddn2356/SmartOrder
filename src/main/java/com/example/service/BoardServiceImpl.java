package com.example.service;


import com.example.domain.Board;
import com.example.domain.User;
import com.example.repository.BoardMapper;
import com.example.repository.UserMapper;
import com.example.util.JwtUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.time.Instant;
import java.util.List;

@Service
public class BoardServiceImpl implements BoardService {
    @Autowired
    private BoardMapper boardMapper;

    @Autowired
    private JwtUtil jwtUtil;

    @Autowired
    private UserMapper userMapper;

    @Override
    public List<Board> getList() {
        return boardMapper.getList();
    }

    @Override
    public Board getBoard(Long id) {
        return boardMapper.getBoard(id);
    }

    @Override
    public boolean createBoard(Board board) {
        User user = userMapper.getUserById( jwtUtil.getTokenById() );
        board.setUser_id(user.getId());
        board.setNickname(user.getNickname());

        return boardMapper.createBoard(board) ==1;
    }


}
