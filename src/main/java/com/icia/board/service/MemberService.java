package com.icia.board.service;

import com.icia.board.dto.MemberDTO;
import com.icia.board.repository.MemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MemberService {
    @Autowired
    public MemberRepository memberRepository;
    public boolean save(MemberDTO memberDTO) {
        int result = memberRepository.save(memberDTO);
        if(result > 0) {
            return true;
        } else {
            return false;
        }
    }

    public List<MemberDTO> findAll(){
        List<MemberDTO> memberDTOList = memberRepository.findAll();
        return memberDTOList;
    }
}
