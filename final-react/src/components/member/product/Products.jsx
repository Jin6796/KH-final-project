import React, { useEffect, useState } from "react";
import { Link } from "react-router-dom";
import { getAllProductAPI} from "../../../service/dbLogic";
import Product from "./Product";

const Products = () => {
  const [products, setProducts] = useState([]);
 
  // 모든 상품 불러오기 
  const getProduct = async () => {
    await getAllProductAPI().then((res) => {
      if (res.data === null) {
        return () => {};
      } else {
        setProducts(res.data);
      }
    });
  };
  
  

  useEffect(() => {
    console.log("useEffet 호출");
   
    getProduct();
  }, []);
  return (
    <>
    <div className="product_list_container">
      {products && products.length > 0
            ? products.map(p => (
              <div className="product_list_wrap" key={p.mdNo}>
                <Product p={p}/>
                </div>

              ))
            : '결과 없음'}
     </div>
    </>
  );
};

export default Products;
