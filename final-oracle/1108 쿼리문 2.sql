    select 
            c.cart_no, c.member_no, c.cart_quantity, c.order_type, 
            m.md_no, m.md_Image_Url, m.md_discount, m.md_price, m.md_name,
            (md_price -  (md_price* md_discount * 0.01)) dcprice
        from 
            tb_cart c
            join tb_md m on C.MD_NO = m.MD_NO
        where 
            c.member_no = 1
            and c.order_type = 'T';
            
            select * from tb_md;
            
            select * from tb_md
        where 1 = 1;