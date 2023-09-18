package com.icia.board.service;

import com.icia.board.dto.BoardDTO;
import com.icia.board.repository.BoardRepository;
import com.icia.board.repository.MemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardService {
    @Autowired
    public BoardRepository boardRepository;
    public void save(BoardDTO boardDTO) {
        boardRepository.save(boardDTO);
    }
}
