package com.icia.board.controller;

import com.icia.board.dto.BoardDTO;
import com.icia.board.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.List;

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
    public String save(@ModelAttribute BoardDTO boardDTO) throws IOException {
        System.out.println(boardDTO + " post controller");
        boardService.save(boardDTO);
        return "redirect:/board/boardFindAll";
    }
//    @PostMapping("/board/boardSave")
//    public String save(@ModelAttribute BoardDTO boardDTO){
//        System.out.println(boardDTO + " post controller");
//        boardService.save(boardDTO);
//        return "index";
//    }

    @GetMapping("/board/boardFindAll")
    public String findAll(Model model){
        List<BoardDTO> boardDTOList = boardService.findAll();
        model.addAttribute("board", boardDTOList);
        return "board/boardFindAll";
    }

    @GetMapping("/board/boardFindById")
    public String findById(@RequestParam("id") Long id, Model model){
        BoardDTO boardDTO = boardService.findById(id);
        model.addAttribute("board", boardDTO);
        return "board/boardFindById";
    }

    @GetMapping("/board/boardTotle")
    public @ResponseBody int getTotal(){
        int total = boardService.getTotal();
        System.out.println(total);
        return total;
    }

//    @PostMapping("/board/boardFindById")
//    public void update(@RequestParam("id") Long id){
//        System.out.println(id + " post");
//        boardService.update(id);
//    }

}
