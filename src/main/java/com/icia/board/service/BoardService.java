package com.icia.board.service;

import com.icia.board.dto.BoardDTO;
import com.icia.board.dto.BoardFileDTO;

import com.icia.board.repository.BoardRepository;
import com.icia.board.repository.MemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.*;
import java.util.*;

@Service
public class BoardService {
    @Autowired
    public BoardRepository boardRepository;
    public void save(BoardDTO boardDTO) {
        int result = boardRepository.save(boardDTO);
        if(result>0) System.out.println("글쓰기 성공");


//        if (boardDTO.getBoardFile().get(0).isEmpty()){
//            // 파일이 없는 경우
//            boardDTO.setFileAttached(0);
//            boardRepository.save(boardDTO);
//        } else {
//            // 파일이 있는 경우
//            boardDTO.setFileAttached(1);
//            // 게시글 저장 후 id값 활용을 위해 리턴
//            BoardDTO savedBoard = boardRepository.save(boardDTO);
//            // 파일이 여러개이기 때문에 반복문으로 하나씩 꺼내서 저장
//            for(MultipartFile boardFile: boardDTO.getBoardFile()) {
//                // 파일 이름 가져오기
//                String originalFileName = boardFile.getOriginalFilename();
//                System.out.println("originalFileName = " + originalFileName);
//                // 저장용 이름 만들기
//                System.out.println(System.currentTimeMillis());
//                String storedFileName = System.currentTimeMillis() + "-" + originalFileName;
//                System.out.println("storedFileName = " + storedFileName);
//                // BoardFileDTO 세팅
//                BoardFileDTO boardFileDTO = new BoardFileDTO();
//                boardFileDTO.setOriginalFileName(originalFileName);
//                boardFileDTO.setStoredFileName(storedFileName);
//                boardFileDTO.setBoardId(savedBoard.getId());
//                // 파일 저장용 폴더에 파일 저장 처리
//                String savePath = "D:\\spring_img\\" + storedFileName;
//                boardFile.transferTo(new File(savePath));              // 여기서 transferTo가 안됨 ㅠㅠ
//                // board_file_table 저장
//                boardRepository.saveFile(boardFileDTO);
//            }
//        }


    }

    public List findAll() {
        List<BoardDTO> boardDTOList = boardRepository.findAll();
        return boardDTOList;
    }

    public BoardDTO findById(Long id) {
        BoardDTO boardDTO = boardRepository.findById(id);
        return boardDTO;
    }


    public int getTotal() {
        int total = boardRepository.getTotal();
        return total;
    }
}
