package com.icia.board.dto;

import lombok.Data;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@Data
public class BoardDTO {
    private Long id;
    private String boardTitle;
    private String boardWriter;
    private String boardContents;
    private String boardPassword;
    private Long boardHits;
    private String createdAt;
    private List<MultipartFile> boardFile;
    private int fileAttached = 0;

}
