package com.icia.board.controller;

import com.icia.board.dto.CommentDTO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class CommentController {
    @PostMapping("/comment/commentSave")
    public String save(CommentDTO commentDTO){
        System.out.println(commentDTO);
        return ("index");
    }
}
