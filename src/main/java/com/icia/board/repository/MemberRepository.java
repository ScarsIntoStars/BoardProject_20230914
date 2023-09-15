package com.icia.board.repository;


import com.icia.board.dto.MemberDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MemberRepository {
    @Autowired
    private SqlSessionTemplate sql;
    public int save(MemberDTO memberDTO) {
        int result =  sql.insert("Member.save", memberDTO);
        return result;
    }

    public List<MemberDTO> findAll(){
        List<MemberDTO> memberDTOList = sql.selectList("Member.findAll");
        return memberDTOList;
    }
}
