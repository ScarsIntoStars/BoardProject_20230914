package com.icia.board.dto;

import lombok.Data;

@Data
public class MemberDTO {
        private Long id;
        private String memberEmail;
        private String memberPassword;
        private String memberName;
        private String memberMobile;
}
