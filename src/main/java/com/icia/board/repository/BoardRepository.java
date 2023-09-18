package com.icia.board.repository;

import com.icia.board.dto.BoardDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardRepository {
    @Autowired
    private SqlSessionTemplate sql;
    public int save(BoardDTO boardDTO) {
        System.out.println(boardDTO + " repository");
        int result = sql.insert("Board.save", boardDTO);
        return result;
    }
}
