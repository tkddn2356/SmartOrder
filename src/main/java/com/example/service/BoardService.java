package com.example.service;



import com.example.domain.Board;

import java.util.List;

public interface BoardService {

    public List<Board> getList();
    public Board getBoard(Long id);
    public boolean createBoard(Board board);



}
