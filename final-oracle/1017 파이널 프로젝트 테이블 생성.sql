CREATE TABLE tb_member (
   member_no   NUMBER(20)      NOT NULL,
   point_no   NUMBER(20)      NOT NULL,
   member_address   VARCHAR2(50)      NOT NULL,
   member_method   VARCHAR2(100)      NOT NULL,
   member_level   NUMBER(20)      NOT NULL,
   member_password   VARCHAR2(50)      NOT NULL,
   member_name   VARCHAR2(30)      NOT NULL,
   member_phone   NUMBER(30)      NOT NULL,
   member_birth   VARCHAR2(20)      NULL,
   member_zipcode   NUMBER(20)      NULL,
   member_email   VARCHAR2(50)      NOT NULL
);

CREATE TABLE tb_md (
   md_no   NUMBER(20)      NOT NULL,
   md_content   VARCHAR2(4000)      NOT NULL,
   md_price   NUMBER(10)      NOT NULL,
   md_category   VARCHAR2(100)      NOT NULL,
   md_image   VARCHAR2(100)      NOT NULL,
   md_detail_image   VARCHAR2(100)      NOT NULL,
   md_discount   NUMBER(20)      NULL,
   md_cost   NUMBER(20)      NULL,
   md_brand   VARCHAR2(100)      NOT NULL,
   md_name   VARCHAR2(100)      NOT NULL
);

CREATE TABLE tb_notice (
   notice_no   NUMBER(20)      NOT NULL,
   admin_id   VARCHAR2(100)      NOT NULL,
   notice_title   VARCHAR2(100)      NOT NULL,
   notice_content   VARCHAR2(4000)      NOT NULL,
   notice_hit   NUMBER(20)   DEFAULT 0   NOT NULL,
   notice_category   VARCHAR2(100)      NOT NULL
);

CREATE TABLE tb_mdreview (
   md_review_no   NUMBER(20)      NOT NULL,
   member_no   NUMBER(20)      NOT NULL,
   md_no   NUMBER(20)      NOT NULL,
   md_review_title   VARCHAR2(100)      NOT NULL,
   md_review_content   VARCHAR2(4000)      NOT NULL,
   md_review_written_date   TIMESTAMP      NOT NULL,
   md_review_like   NUMBER(20)   DEFAULT 0   NOT NULL,
   purchase_detail_no   NUMBER(20)      NOT NULL,
   md_star   NUMBER(20)   DEFAULT 0   NULL,
   best_review   VARCHAR2(100)   DEFAULT 'N'   NOT NULL
);

CREATE TABLE tb_point (
   point_no   NUMBER(20)      NOT NULL,
   member_point   NUMBER(20)      NOT NULL,
   point_date   TIMESTAMP      NOT NULL,
   point_used_saved   NUMBER(20)      NULL
);

CREATE TABLE tb_FAQ (
   faq_no   NUMBER(20)      NOT NULL,
   admin_id   VARCHAR2(100)      NOT NULL,
   faq_category   VARCHAR2(100)      NOT NULL,
   faq_title   VARCHAR2(100)      NOT NULL,
   faq_content   VARCHAR2(4000)      NOT NULL,
   faq_write_date   TIMESTAMP      NOT NULL,
   faq_view_count   NUMBER(20)   DEFAULT 0   NOT NULL
);

CREATE TABLE tb_order_de (
   order_de_no   VARCHAR2(100)      NOT NULL,
   order_no   VARCHAR2(100)      NOT NULL,
   order_de_quantity   NUMBER(5)   DEFAULT 0   NOT NULL,
   order_de_price   NUMBER(20)      NOT NULL,
   order_de_cancel   VARCHAR2(100)   DEFAULT 'N'   NULL
);

CREATE TABLE tb_order (
   order_no   VARCHAR2(100)      NOT NULL,
   member_no   NUMBER(20)      NOT NULL,
   cart_no   VARCHAR2(100)      NOT NULL,
   order_payment   NUMBER(20)      NOT NULL,
   order_date   NUMBER(20)      NOT NULL,
   order_amount   NUMBER(20)      NOT NULL,
   order_used_point   NUMBER(20)      NULL
);

CREATE TABLE tb_cart (
   cart_no   VARCHAR2(100)      NOT NULL,
   member_no   NUMBER(20)      NOT NULL,
   md_no   NUMBER(20)      NOT NULL,
   cart_quantity   NUMBER(5)      NOT NULL,
   order_type   VARCHAR2(20)      NOT NULL
);

CREATE TABLE tb_admin (
   admin_id   VARCHAR2(100)      NOT NULL,
   admin_pw   VARCHAR2(100)      NOT NULL,
   admin_name   VARCHAR2(100)      NULL,
   admin_tel   VARCHAR2(100)      NULL
);

CREATE TABLE tb_community (
   board_no   NUMBER(20)      NOT NULL,
   member_no   NUMBER(20)      NOT NULL,
   board_title   VARCHAR2(100)      NOT NULL,
   board_content   VARCHAR2(4000)      NOT NULL,
   board_written_date   TIMESTAMP      NOT NULL,
   board_like   NUMBER(20)   DEFAULT 0   NOT NULL,
   board_dislike   NUMBER(20)   DEFAULT 0   NOT NULL,
   board_category   VARCHAR(20)      NOT NULL,
   board_blind   VARCHAR(20)   DEFAULT 'N'   NOT NULL,
   board_report_count   NUMBER(2)      NULL
);

CREATE TABLE tb_subs (
   sub_no   NUMBER(20)      NOT NULL,
   md_no   NUMBER(20)      NOT NULL,
   member_no   NUMBER(20)      NOT NULL,
   sub_start   TIMESTAMP      NULL,
   sub_end   VARCHAR2(100)      NULL,
   sub_period   NUMBER(20)      NULL
);

CREATE TABLE tb_msg (
   msg_no   NUMBER(20)      NOT NULL,
   member_no2   NUMBER(20)      NOT NULL,
   msg_to_member_no   VARCHAR2(20)      NOT NULL,
   msg_content   VARCHAR2(4000)      NULL,
   msg_send_date   TIMESTAMP      NOT NULL,
   read_yn   VARCHAR2(20)   DEFAULT 'N'   NOT NULL
);

CREATE TABLE tb_sales (
   sales_no   NUMBER(20)      NOT NULL,
   md_no   NUMBER(20)      NOT NULL,
   sales_cost   NUMBER(20)      NOT NULL,
   sales_price   NUMBER(20)      NOT NULL,
   donation   NUMBER(20)      NULL
);

CREATE TABLE tb_store (
   store_no   NUMBER(20)      NOT NULL,
   md_no   NUMBER(20)      NOT NULL,
   store_contact   VARCHAR2(20)      NOT NULL,
   store_manager   VARCHAR2(20)      NULL,
   store_memo   VARCHAR2(1000)      NULL,
   store_yn   VARCHAR2(50)      NOT NULL,
   store_start_date   TIMESTAMP      NOT NULL,
   Field   VARCHAR2(100)      NOT NULL
);

CREATE TABLE tb_amd (
   md_no   NUMBER(20)      NOT NULL,
   md_content   VARCHAR2(4000)      NOT NULL,
   md_price   NUMBER(10)      NOT NULL,
   md_image   VARCHAR2(100)      NOT NULL,
   md_detail_image   VARCHAR2(100)      NOT NULL,
   md_cost   NUMBER(20)      NOT NULL,
   md_category   VARCHAR2(100)      NOT NULL,
   md_discount   NUMBER(20)      NULL,
   md_name   VARCHAR2(100)      NOT NULL,
   md_brand   VARCHAR2(100)      NOT NULL
);

CREATE TABLE tb_purchase (
   purchase_no   VARCHAR2(100)      NOT NULL,
   order_no   VARCHAR2(100)      NOT NULL,
   purchase_method   VARCHAR2(50)      NOT NULL
);

CREATE TABLE tb_delivery (
   delivery_status   VARCHAR2(100)      NOT NULL,
   order_no   VARCHAR2(100)      NOT NULL,
   delivery_date   VARCHAR2(100)      NULL,
   delivery_fee   VARCHAR2(100)      NULL,
   delivery_no   VARCHAR2(100)      NULL,
   delivery_company   VARCHAR2(100)      NULL
);

CREATE TABLE tb_amsg (
   msg_no   NUMBER(20)      NOT NULL,
   admin_id   VARCHAR2(100)      NOT NULL,
   msg_title   VARCHAR2(100)      NOT NULL,
   msg_content   VARCHAR2(4000)      NOT NULL,
   msg_to_member_no   VARCHAR2(20)      NOT NULL,
   msg_send_date   TIMESTAMP      NOT NULL,
   read_yn   VARCHAR2(20)   DEFAULT 'N'   NOT NULL
);

CREATE TABLE tb_kakao (
   kakao_no   NUMBER(20)      NOT NULL,
   kakao_date   VARCHAR2(100)      NOT NULL,
   kakao_content   VARCHAR2(4000)      NOT NULL,
   kakao_cate   VARCHAR2(100)      NOT NULL
);

CREATE TABLE tb_chatlog (
   chat_no   NUMBER(20)      NOT NULL,
   chatroom_no   NUMBER(20)      NOT NULL,
   chat_content   VARCHAR2(4000)      NOT NULL,
   chat_date   TIMESTAMP      NOT NULL,
   send_mem   VARCHAR2(100)      NOT NULL
);

CREATE TABLE tb_chatroom (
   chatroom_no   NUMBER(20)      NOT NULL,
   chatroom_name   VARCHAR2(4000)      NOT NULL,
   chatroom_date   TIMESTAMP      NOT NULL
);

CREATE TABLE tb_chatmem (
   member_no   NUMBER(20)      NOT NULL,
   admin_id   VARCHAR2(100)      NOT NULL,
   chatroom_no   NUMBER(20)      NOT NULL
);

CREATE TABLE tb_reply (
   reply_no   NUMBER(20)      NOT NULL,
   board_no   NUMBER(20)      NOT NULL,
   reply_writer   VARCHAR2(100)      NOT NULL,
   reply_content   VARCHAR2(4000)      NOT NULL,
   reply_date   TIMESTAMP      NOT NULL,
   reply_blind   VARCHAR2(20)   DEFAULT 'N'   NOT NULL,
   reply_like   NUMBER(20)   DEFAULT 0   NULL,
   reply_dislike   NUMBER(20)   DEFAULT 0   NULL,
   reply_report_count   NUMBER(2)      NULL
);

CREATE TABLE tb_report (
   report_no   NUMBER(20)      NOT NULL,
   board_no   NUMBER(20)      NOT NULL,
   member_no   NUMBER(20)      NOT NULL,
   member_no2   NUMBER(20)      NOT NULL,
   report_reason   VARCHAR2(200)      NOT NULL,
   report_date   TIMESTAMP      NOT NULL,
   report_sort   NUMBER(2)      NOT NULL
);

CREATE TABLE tb_astock (
   st_amount   VARCHAR2(100)   DEFAULT 0   NOT NULL,
   md_no   NUMBER(20)      NOT NULL
);

CREATE TABLE tb_stock (
   st_amount   VARCHAR2(100)   DEFAULT 0   NOT NULL,
   md_no   NUMBER(20)      NOT NULL
);

CREATE TABLE tb_substory (
   sub_his_no   NUMBER(20)      NOT NULL,
   member_no   NUMBER(20)      NOT NULL,
   md_no   NUMBER(20)      NOT NULL
);

CREATE TABLE tb_cardapi (
   merchant_uid   VARCHAR2(100)      NULL,
   member_no   NUMBER(20)      NOT NULL
);

ALTER TABLE tb_member ADD CONSTRAINT PK_TB_MEMBER PRIMARY KEY (
   member_no
);

ALTER TABLE tb_md ADD CONSTRAINT PK_TB_MD PRIMARY KEY (
   md_no
);

ALTER TABLE tb_notice ADD CONSTRAINT PK_TB_NOTICE PRIMARY KEY (
   notice_no
);

ALTER TABLE tb_mdreview ADD CONSTRAINT PK_TB_MDREVIEW PRIMARY KEY (
   md_review_no
);

ALTER TABLE tb_point ADD CONSTRAINT PK_TB_POINT PRIMARY KEY (
   point_no
);

ALTER TABLE tb_FAQ ADD CONSTRAINT PK_TB_FAQ PRIMARY KEY (
   faq_no
);

ALTER TABLE tb_order_de ADD CONSTRAINT PK_TB_ORDER_DE PRIMARY KEY (
   order_de_no
);

ALTER TABLE tb_order ADD CONSTRAINT PK_TB_ORDER PRIMARY KEY (
   order_no
);

ALTER TABLE tb_cart ADD CONSTRAINT PK_TB_CART PRIMARY KEY (
   cart_no
);

ALTER TABLE tb_admin ADD CONSTRAINT PK_TB_ADMIN PRIMARY KEY (
   admin_id
);

ALTER TABLE tb_community ADD CONSTRAINT PK_TB_COMMUNITY PRIMARY KEY (
   board_no
);

ALTER TABLE tb_subs ADD CONSTRAINT PK_TB_SUBS PRIMARY KEY (
   sub_no
);

ALTER TABLE tb_msg ADD CONSTRAINT PK_TB_MSG PRIMARY KEY (
   msg_no
);

ALTER TABLE tb_sales ADD CONSTRAINT PK_TB_SALES PRIMARY KEY (
   sales_no
);

ALTER TABLE tb_store ADD CONSTRAINT PK_TB_STORE PRIMARY KEY (
   store_no
);

ALTER TABLE tb_amd ADD CONSTRAINT PK_TB_AMD PRIMARY KEY (
   md_no
);

ALTER TABLE tb_purchase ADD CONSTRAINT PK_TB_PURCHASE PRIMARY KEY (
   purchase_no
);

ALTER TABLE tb_delivery ADD CONSTRAINT PK_TB_DELIVERY PRIMARY KEY (
   delivery_status
);

ALTER TABLE tb_amsg ADD CONSTRAINT PK_TB_AMSG PRIMARY KEY (
   msg_no
);

ALTER TABLE tb_kakao ADD CONSTRAINT PK_TB_KAKAO PRIMARY KEY (
   kakao_no
);

ALTER TABLE tb_chatlog ADD CONSTRAINT PK_TB_CHATLOG PRIMARY KEY (
   chat_no
);

ALTER TABLE tb_chatroom ADD CONSTRAINT PK_TB_CHATROOM PRIMARY KEY (
   chatroom_no
);

ALTER TABLE tb_reply ADD CONSTRAINT PK_TB_REPLY PRIMARY KEY (
   reply_no
);

ALTER TABLE tb_report ADD CONSTRAINT PK_TB_REPORT PRIMARY KEY (
   report_no
);

ALTER TABLE tb_substory ADD CONSTRAINT PK_TB_SUBSTORY PRIMARY KEY (
   sub_his_no
);

ALTER TABLE tb_member ADD CONSTRAINT FK_tb_point_TO_tb_member_1 FOREIGN KEY (
   point_no
)
REFERENCES tb_point (
   point_no
);

ALTER TABLE tb_notice ADD CONSTRAINT FK_tb_admin_TO_tb_notice_1 FOREIGN KEY (
   admin_id
)
REFERENCES tb_admin (
   admin_id
);

ALTER TABLE tb_mdreview ADD CONSTRAINT FK_tb_member_TO_tb_mdreview_1 FOREIGN KEY (
   member_no
)
REFERENCES tb_member (
   member_no
);

ALTER TABLE tb_mdreview ADD CONSTRAINT FK_tb_md_TO_tb_mdreview_1 FOREIGN KEY (
   md_no
)
REFERENCES tb_md (
   md_no
);

ALTER TABLE tb_FAQ ADD CONSTRAINT FK_tb_admin_TO_tb_FAQ_1 FOREIGN KEY (
   admin_id
)
REFERENCES tb_admin (
   admin_id
);

ALTER TABLE tb_order_de ADD CONSTRAINT FK_tb_order_TO_tb_order_de_1 FOREIGN KEY (
   order_no
)
REFERENCES tb_order (
   order_no
);

ALTER TABLE tb_order ADD CONSTRAINT FK_tb_member_TO_tb_order_1 FOREIGN KEY (
   member_no
)
REFERENCES tb_member (
   member_no
);

ALTER TABLE tb_order ADD CONSTRAINT FK_tb_cart_TO_tb_order_1 FOREIGN KEY (
   cart_no
)
REFERENCES tb_cart (
   cart_no
);

ALTER TABLE tb_cart ADD CONSTRAINT FK_tb_member_TO_tb_cart_1 FOREIGN KEY (
   member_no
)
REFERENCES tb_member (
   member_no
);

ALTER TABLE tb_cart ADD CONSTRAINT FK_tb_md_TO_tb_cart_1 FOREIGN KEY (
   md_no
)
REFERENCES tb_md (
   md_no
);

ALTER TABLE tb_community ADD CONSTRAINT FK_tb_member_TO_tb_community_1 FOREIGN KEY (
   member_no
)
REFERENCES tb_member (
   member_no
);

ALTER TABLE tb_subs ADD CONSTRAINT FK_tb_md_TO_tb_subs_1 FOREIGN KEY (
   md_no
)
REFERENCES tb_md (
   md_no
);

ALTER TABLE tb_subs ADD CONSTRAINT FK_tb_member_TO_tb_subs_1 FOREIGN KEY (
   member_no
)
REFERENCES tb_member (
   member_no
);

ALTER TABLE tb_msg ADD CONSTRAINT FK_tb_member_TO_tb_msg_1 FOREIGN KEY (
   member_no2
)
REFERENCES tb_member (
   member_no
);

ALTER TABLE tb_sales ADD CONSTRAINT FK_tb_amd_TO_tb_sales_1 FOREIGN KEY (
   md_no
)
REFERENCES tb_amd (
   md_no
);

ALTER TABLE tb_store ADD CONSTRAINT FK_tb_amd_TO_tb_store_1 FOREIGN KEY (
   md_no
)
REFERENCES tb_amd (
   md_no
);

ALTER TABLE tb_purchase ADD CONSTRAINT FK_tb_order_TO_tb_purchase_1 FOREIGN KEY (
   order_no
)
REFERENCES tb_order (
   order_no
);

ALTER TABLE tb_delivery ADD CONSTRAINT FK_tb_order_TO_tb_delivery_1 FOREIGN KEY (
   order_no
)
REFERENCES tb_order (
   order_no
);

ALTER TABLE tb_amsg ADD CONSTRAINT FK_tb_admin_TO_tb_amsg_1 FOREIGN KEY (
   admin_id
)
REFERENCES tb_admin (
   admin_id
);

ALTER TABLE tb_chatlog ADD CONSTRAINT FK_tb_chatroom_TO_tb_chatlog_1 FOREIGN KEY (
   chatroom_no
)
REFERENCES tb_chatroom (
   chatroom_no
);

ALTER TABLE tb_chatmem ADD CONSTRAINT FK_tb_member_TO_tb_chatmem_1 FOREIGN KEY (
   member_no
)
REFERENCES tb_member (
   member_no
);

ALTER TABLE tb_chatmem ADD CONSTRAINT FK_tb_admin_TO_tb_chatmem_1 FOREIGN KEY (
   admin_id
)
REFERENCES tb_admin (
   admin_id
);

ALTER TABLE tb_chatmem ADD CONSTRAINT FK_tb_chatroom_TO_tb_chatmem_1 FOREIGN KEY (
   chatroom_no
)
REFERENCES tb_chatroom (
   chatroom_no
);

ALTER TABLE tb_reply ADD CONSTRAINT FK_tb_community_TO_tb_reply_1 FOREIGN KEY (
   board_no
)
REFERENCES tb_community (
   board_no
);

ALTER TABLE tb_report ADD CONSTRAINT FK_tb_community_TO_tb_report_1 FOREIGN KEY (
   board_no
)
REFERENCES tb_community (
   board_no
);

ALTER TABLE tb_astock ADD CONSTRAINT FK_tb_amd_TO_tb_astock_1 FOREIGN KEY (
   md_no
)
REFERENCES tb_amd (
   md_no
);

ALTER TABLE tb_stock ADD CONSTRAINT FK_tb_md_TO_tb_stock_1 FOREIGN KEY (
   md_no
)
REFERENCES tb_md (
   md_no
);

ALTER TABLE tb_substory ADD CONSTRAINT FK_tb_member_TO_tb_substory_1 FOREIGN KEY (
   member_no
)
REFERENCES tb_member (
   member_no
);

ALTER TABLE tb_cardapi ADD CONSTRAINT FK_tb_member_TO_tb_cardapi_1 FOREIGN KEY (
   member_no
)
REFERENCES tb_member (
   member_no
);

