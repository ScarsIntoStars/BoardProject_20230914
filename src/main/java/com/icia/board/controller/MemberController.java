package com.icia.board.controller;


import com.icia.board.dto.MemberDTO;
import com.icia.board.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class MemberController {
@Autowired
public MemberService memberService;

    @GetMapping("/member/memberSave")
    public String memberSave() {
        return "member/memberSave";
    }

    @PostMapping("/member/memberSave")
    public String memberSave(@ModelAttribute MemberDTO memberDTO){
        boolean result = memberService.save(memberDTO);
        if(result == true) {
            System.out.println("신규회원 등록 완료");
            return "index";
        } else {
            System.out.println("신규회원 등록 실패");
            return "member/memberSave";
        }
    }

    @GetMapping("/member/memberFindAll")
    public String findAll(Model model){
        List<MemberDTO> memberDTOList = memberService.findAll();
        model.addAttribute("memberDTOList", memberDTOList);
        return "member/memberFindAll";
    }

    @GetMapping("/member/memberDelete")
    public String delete(@RequestParam("id") Long id) {
        memberService.delete(id);
        return "redirect:/member/memberFindAll";
    }
}
