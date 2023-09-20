package com.icia.board.controller;

import com.icia.board.dto.CommentDTO;
import com.icia.board.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
public class CommentController {
    @Autowired
    public CommentService commentService;
    @PostMapping("/comment/commentSave")
    public ResponseEntity save(@ModelAttribute CommentDTO commentDTO) {
        System.out.println(commentDTO + " controller");
        commentService.save(commentDTO);
        List<CommentDTO> commentDTOList = commentService.findAll(commentDTO.getBoardId());
        System.out.println(commentDTOList + " DTOList");
        return new ResponseEntity<>(commentDTOList, HttpStatus.OK);
    }
}
