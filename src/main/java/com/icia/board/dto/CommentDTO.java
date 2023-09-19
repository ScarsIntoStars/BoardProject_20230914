package com.icia.board.dto;

import lombok.Data;

@Data
public class CommentDTO {
    private Long id;
    private Long boardId;
    private String commentText;
    private String commentWriter;
    private String createdAt;
}
