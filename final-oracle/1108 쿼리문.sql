select * from tb_md;

select *
from tb_cart c
join tb_amd m on C.MD_NO = m.MD_NO;


select 
           c.cart_no, c.member_no, c.cart_quantity, 
          -- sum(C.CART_QUANTITY ) sum,
            m.md_no, m.md_Image_Url, m.md_discount, m.md_price, m.md_name,
            (md_price -  (md_price* md_discount * 0.01)) dcprice
   from 
            tb_cart c
            join tb_md m on C.MD_NO = m.MD_NO
     group by m.md_no ;

            
           -- group by  m.MD_NO;
         --  order by cart_no asc;

select C.CART_QUANTITY, c.cart_no
from tb_cart  c  
 join tb_md m on C.MD_NO = m.MD_NO 
where c.member_no = 1 and m.md_no = 4;

select 
            c.cart_no, c.member_no, c.cart_quantity, c.order_type, 
            m.md_no, m.md_Image_Url, m.md_discount, m.md_price, m.md_name,
            (md_price -  (md_price* md_discount * 0.01)) dcprice
        from 
            tb_cart c
            join tb_md m on C.MD_NO = m.MD_NO;