select * from tb_point

-- point와 member 테이블 제약조건 삭제

ALTER TABLE tb_member DROP CONSTRAINT FK_TB_POINT_TO_TB_MEMBER_1;

-- point 테이블에 member_no 컬럼 추가, member 테이블에 point_no 컬럼 삭제 후에 

ALTER TABLE tb_point ADD CONSTRAINT FK_tb_member_TO_tb_point_1 FOREIGN KEY (
    MEMBER_NO
)
REFERENCES tb_member (
    MEMBER_NO
);

-- 다시 참조키 조건 설정