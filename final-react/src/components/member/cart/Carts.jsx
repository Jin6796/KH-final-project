import React, { useEffect, useState } from "react";
import { Link } from "react-router-dom";
import { getAllMyCartAPI, insertCartAPI } from "../../../service/dbLogic";
import Cart from "./Cart";

const Carts = () => {
  const [carts, setCarts] = useState([]);

  const insertCart = async () => {
    await insertCartAPI().then((res) => {
     console.log(res)
    })
  }

  const getCartsData = async () => {
    await getAllMyCartAPI().then((res) => {
      if (res.data === null) {
        return () => {};
      } else {
        setCarts(res.data)
      }
    });
  };

  useEffect(() => {
    console.log("useEffet 호출");
    getCartsData();

  }, []);
  return (
    <>
    <div>
      <div className="cart_list_container">
        {carts && carts.length > 0 
          ? carts.map( e => (
          <div className="cart_list_wrapper" key={e.cartNo}>
           <Cart c={e} />
        </div>
        )) : "데이터 없음"} 
      </div>
    </div>
    </>
  );
};

export default Carts;
