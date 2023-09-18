package com.icia.board.controller;

import com.icia.board.dto.BoardDTO;
import com.icia.board.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class BoardController {
    @Autowired
    public BoardService boardService;

    @GetMapping("/board/boardSave")
    public String save(){
        System.out.println();
        return "board/boardSave";
    }

    @PostMapping("/board/boardSave")
    public String save(@ModelAttribute BoardDTO boardDTO){
        System.out.println(boardDTO + " post controller");
        boardService.save(boardDTO);
        return "index";
    }
}
