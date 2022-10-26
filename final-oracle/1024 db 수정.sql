-- timestamp -> varchar2(200)

ALTER TABLE tb_subs  MODIFY sub_start VARCHAR2(200);

ALTER TABLE tb_store  MODIFY store_start_date VARCHAR2(200);

ALTER TABLE tb_FAQ  MODIFY faq_write_date VARCHAR2(200);

ALTER TABLE tb_amsg  MODIFY msg_send_date VARCHAR2(200);

ALTER TABLE tb_mdreview  MODIFY md_review_written_date VARCHAR2(200);

ALTER TABLE tb_chatroom  MODIFY chatroom_date VARCHAR2(200);

ALTER TABLE tb_chatlog  MODIFY chat_date VARCHAR2(200);

ALTER TABLE tb_point  MODIFY point_date VARCHAR2(200);

ALTER TABLE tb_msg  MODIFY msg_send_date VARCHAR2(200);

ALTER TABLE tb_reply  MODIFY reply_date VARCHAR2(200);

ALTER TABLE tb_community  MODIFY board_written_date VARCHAR2(200);

----------------------------------------------------------------------

CREATE SEQUENCE SEQ_TB_MEMBER_MEMBER_NO


CREATE SEQUENCE SEQ_TB_MEMBER_POINT_NO


--- ��� �̸��� unique ���� �߰�

ALTER TABLE tb_member ADD UNIQUE (MEMBER_EMAIL);

-- ��� ���̺� ��й�ȣ ������ ����

ALTER TABLE tb_member MODIFY (member_password VARCHAR2(100));

-- ������(tb_point) ���̺��� POINT_TYPE �÷� �߰�

ALTER TABLE tb_point ADD POINT_TYPE NUMBER(20) DEFAULT '0' NOT NULL

-----------------------------------------------------------------------------

ALTER TABLE tb_community ADD board_hit NUMBER(30) DEFAULT '0' NOT NULL

ALTER TABLE tb_notice ADD notice_regdate varchar2(30)

ALTER TABLE tb_notice ADD filename varchar2(300) DEFAULT '0' NOT NULL

ALTER TABLE tb_notice ADD fileurl varchar2(300)

-----------------------------------------------------------------------------

-- tb_amd�� tb_store ���̺� �������� ����

ALTER TABLE TB_STORE DROP CONSTRAINT FK_TB_AMD_TO_TB_STORE_1;

-- tb_amd ���̺� store_no �÷� �߰�

ALTER TABLE tb_amd ADD STORE_NO NUMBER(20)

-- tb_store ���̺� md_no �÷� ���� �Ŀ�

ALTER TABLE TB_STORE DROP COLUMN MD_NO

-- �ٽ� ����Ű ���� ����

ALTER TABLE TB_AMD ADD
CONSTRAINT FK_TB_STORE_TO_TB_AMD_1
FOREIGN KEY (STORE_NO)
REFERENCES TB_STORE  (STORE_NO);

--

COMMIT;


CREATE SEQUENCE STORE_NO_SEQ