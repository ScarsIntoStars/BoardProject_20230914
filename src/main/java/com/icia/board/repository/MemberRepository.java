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

    public void delete(Long id) {
        sql.delete("Member.delete", id);
    }

    public MemberDTO update(Long id) {
        MemberDTO result = sql.selectOne("Member.memberOne", id);
        return result;
    }

    public void updateApp(MemberDTO memberDTO) {
        sql.update("Member.updateApp", memberDTO);
    }

    public MemberDTO login(MemberDTO memberDTO) {
        MemberDTO result = sql.selectOne("Member.login", memberDTO);
        return result;
    }
}
