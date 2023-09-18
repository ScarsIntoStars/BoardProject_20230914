package com.icia.board.service;

import com.icia.board.dto.BoardDTO;
import com.icia.board.repository.BoardRepository;
import com.icia.board.repository.MemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BoardService {
    @Autowired
    public BoardRepository boardRepository;
    public void save(BoardDTO boardDTO) {
        boardRepository.save(boardDTO);
    }

    public List findAll() {
        List<BoardDTO> boardDTOList = boardRepository.findAll();
        return boardDTOList;
    }

    public void findById(Long id) {
        boardRepository.findById(id);

    }
}
