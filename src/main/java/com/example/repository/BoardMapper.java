package com.example.repository;


import com.example.domain.Board;
import com.example.domain.User;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BoardMapper {
    public List<Board> getList();
    public Board getBoard(Long id);
    public int createBoard(Board board);


}
