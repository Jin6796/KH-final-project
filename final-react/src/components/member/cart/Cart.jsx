import React, { useEffect, useState } from "react";
import { Link } from "react-router-dom";
import { getAllMyCartAPI, insertCartAPI } from "../../../service/dbLogic";

const Cart = ({c}) => {
  const [cart, setCart] = useState({});
  const [md, setMd] = useState({});
  
  useEffect(() => {
    setCart(c)
    setMd(c.mdVO)
  }, [c]);

return (
  <div className="cart_container">

   <div className="cart_md_name">
      {md.mdName}
    </div>

    <div className="cart_qtt">
      {cart.cartQuantity}
    </div>

    
    <div className="cart_md_price">
      {md.mdPrice}
    </div>

    <div className="cart_md_discount">
      {md.mdDiscount}
    </div>

    <div className="cart_md_dcprice">
      {md.mdDcPrice}
    </div>  

    <div className="cart_md_image">
     <img src={md.mdImageUrl} alt="img"/>
    </div>  

    <div className="cart_btn_container">
      <button>삭제</button>
    </div>

  </div>



)
};
export default Cart;
