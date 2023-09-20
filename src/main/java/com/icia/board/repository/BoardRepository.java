package com.icia.board.repository;

import com.icia.board.dto.BoardDTO;
import com.icia.board.dto.BoardFileDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BoardRepository {
    @Autowired
    private SqlSessionTemplate sql;
    public BoardDTO save(BoardDTO boardDTO) {
        sql.insert("Board.save", boardDTO);
        return boardDTO;
    }

    public List<BoardDTO> findAll() {
        List<BoardDTO> boardDTO = sql.selectList("Board.findAll");
        return boardDTO;
    }

    public BoardDTO findById(Long id) {
        sql.update("Board.update", id);
        BoardDTO boardDTO = sql.selectOne("Board.findById", id);
        return boardDTO;
    }


    public void saveFile(BoardFileDTO boardFileDTO) {
        sql.insert("Board.saveFile", boardFileDTO);
    }

    public int getTotal() {
        int total = sql.selectOne("Board.total");
        return total;
    }
}
