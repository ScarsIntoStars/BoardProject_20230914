package com.icia.board.dto;

import lombok.Data;

@Data
public class BoardDTO {
    private Long id;
    private String boardTitle;
    private String boardWriter;
    private String boardContents;
    private String boardPassword;
    private Long boardHits;
    private String createdAt;
    private int fileAttached = 0;

}
