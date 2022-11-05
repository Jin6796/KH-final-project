-- ���� ���� ����(����Ʈ)
ALTER TABLE tb_point DROP CONSTRAINT FK_tb_member_TO_tb_point_1;

-- ���� ���� �߰�(����Ʈ)
ALTER TABLE tb_point ADD CONSTRAINT FK_tb_member_TO_tb_point_1 FOREIGN KEY (member_no) 
REFERENCES tb_member(member_no) ON DELETE CASCADE;

-- ���� ���� ����(Ŀ�´�Ƽ)
ALTER TABLE tb_community DROP CONSTRAINT FK_tb_member_TO_tb_community_1;

-- ���� ���� �߰�(Ŀ�´�Ƽ)
ALTER TABLE tb_community ADD CONSTRAINT FK_tb_member_TO_tb_community_1 FOREIGN KEY (member_no) 
REFERENCES tb_member(member_no) ON DELETE CASCADE;

-- ���� ���� ����(����)
ALTER TABLE tb_msg DROP CONSTRAINT FK_tb_member_TO_tb_msg_1;

-- ���� ���� �߰�(����)
ALTER TABLE tb_msg ADD CONSTRAINT FK_tb_member_TO_tb_msg_1 FOREIGN KEY (member_no2) 
REFERENCES tb_member(member_no) ON DELETE CASCADE;

-- ���� ���� ����(ī�����)
ALTER TABLE tb_cardapi DROP CONSTRAINT FK_tb_member_TO_tb_cardapi_1;

-- ���� ���� �߰�(ī�����)
ALTER TABLE tb_cardapi ADD CONSTRAINT FK_tb_member_TO_tb_cardapi_1 FOREIGN KEY (member_no) 
REFERENCES tb_member(member_no) ON DELETE CASCADE;

-- ���� ���� ����(�ֹ�)
ALTER TABLE tb_order DROP CONSTRAINT FK_tb_member_TO_tb_order_1;

-- ���� ���� �߰�(�ֹ�)
ALTER TABLE tb_order ADD CONSTRAINT FK_tb_member_TO_tb_order_1 FOREIGN KEY (member_no) 
REFERENCES tb_member(member_no) ON DELETE CASCADE;

-- ���� ���� ����(���������̷�)
ALTER TABLE tb_substory DROP CONSTRAINT FK_tb_member_TO_tb_substory_1;

-- ���� ���� �߰�(���������̷�)
ALTER TABLE tb_substory ADD CONSTRAINT FK_tb_member_TO_tb_substory_1 FOREIGN KEY (member_no) 
REFERENCES tb_member(member_no) ON DELETE CASCADE;

-- ���� ���� ����(��������)
ALTER TABLE tb_subs DROP CONSTRAINT FK_tb_member_TO_tb_subs_1;

-- ���� ���� �߰�(��������)
ALTER TABLE tb_subs ADD CONSTRAINT FK_tb_member_TO_tb_subs_1 FOREIGN KEY (member_no) 
REFERENCES tb_member(member_no) ON DELETE CASCADE;

-- ���� ���� ����(��ǰ�ı�)
ALTER TABLE tb_mdreview DROP CONSTRAINT FK_tb_member_TO_tb_mdreview_1;

-- ���� ���� �߰�(��ǰ�ı�)
ALTER TABLE tb_mdreview ADD CONSTRAINT FK_tb_member_TO_tb_mdreview_1 FOREIGN KEY (member_no) 
REFERENCES tb_member(member_no) ON DELETE CASCADE;

-- ���� ���� ����(ä�ø��)
ALTER TABLE tb_chatmem DROP CONSTRAINT FK_tb_member_TO_tb_chatmem_1;

-- ���� ���� �߰�(ä�ø��)
ALTER TABLE tb_chatmem ADD CONSTRAINT FK_tb_member_TO_tb_chatmem_1 FOREIGN KEY (member_no) 
REFERENCES tb_member(member_no) ON DELETE CASCADE;

-- ȸ������ �� ������ ��õ�� �ڵ��÷�
ALTER TABLE tb_member ADD member_code VARCHAR2(200)

--ȸ������ �� ��õ�� �ڵ尡 �ִٸ� ���� �÷�
ALTER TABLE tb_member ADD member_recommend VARCHAR2(200)

ALTER TABLE TB_COMMUNITY 

MODIFY board_report_count DEFAULT 0

ALTER TABLE tb_reply DROP COLUMN reply_writer

ALTER TABLE tb_reply ADD member_no NUMBER(20) NOT NULL

ALTER TABLE tb_reply ADD CONSTRAINT FK_tb_member_TO_tb_reply_1 FOREIGN KEY (
    member_no
)
REFERENCES tb_member (
    member_no
);

 --ȸ���� MD �÷� �߰�
  ALTER TABLE TB_MD ADD MD_IMAGE_URL         VARCHAR2(4000 BYTE)
  
    ALTER TABLE TB_MD ADD MD_DETAIL_IMAGE_URL  VARCHAR2(4000 BYTE)
    
      ALTER TABLE TB_MD ADD ST_AMOUNT            NUMBER
      
      --�����ڴ� MD �÷� �߰�
        ALTER TABLE TB_AMD ADD MD_IMAGE_URL         VARCHAR2(4000 BYTE)
        
    ALTER TABLE TB_AMD ADD MD_DETAIL_IMAGE_URL  VARCHAR2(4000 BYTE)
    
      ALTER TABLE TB_AMD ADD ST_AMOUNT            NUMBER
      
      --ȸ����, �����ڴ� ������̺� ����
      drop table TB_ASTOCK ;
      
drop table TB_STOCK   ;

ALTER TABLE tb_msg RENAME COLUMN member_no2 TO member_no

ALTER TABLE TB_ORDER MODIFY ORDER_DATE VARCHAR2(200);

ALTER TABLE TB_MEMBER MODIFY member_address null;

ALTER TABLE TB_MEMBER MODIFY member_password null;

ALTER TABLE TB_MEMBER MODIFY member_phone null;

ALTER TABLE TB_MEMBER MODIFY member_address VARCHAR2(500)

commit;


ALTER TABLE TB_DELIVERY  DROP PRIMARY KEY; TB_MD 

CREATE SEQUENCE MD_NO_SEQ