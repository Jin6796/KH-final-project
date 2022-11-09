import React, { useEffect, useState } from "react";
import { Link } from "react-router-dom";
import { useLocation } from "react-router-dom";
import { Button, Modal } from "react-bootstrap";
import queryString from 'query-string'
import { getAllMyCartAPI, deleteCartAPI  } from "../../../service/dbLogic";
import Cart from "./Cart";
import Header from "../Common/Header";
import Footer from "../Common/Footer";

const Carts = () => {
  const [carts, setCarts] = useState([]);
  
  // get param by queryString
  const location = useLocation();
  const query = queryString.parse(location.search)

  // 장바구니 타입
  const type = query.type;

  // 장바구니 금액정보
  const [sum, setSum] = useState(0);
  const [shipFee, setShipFee] = useState(0);
  
  // 체크박스
  const[checkItems, setCheckItems] = useState([])
  const [allCheck, setAllCheck] = useState(true)

  // 장바구니 삭제 모달 
  const [show, setShow] = useState(false);
  const handleClose = () => setShow(false);
  const handleShow = () => setShow(true);


  const getCartsData = async () => {
    await getAllMyCartAPI(type).then((res) => {
      if (res.data === null) {
        return () => {};
      } else {
        setCarts(res.data)
      }
    });
  };

  // 카트 리스트 데이터 다시 불러오기
  const pReload = () => {
    getCartsData();
    setSum(0)
  }

  const pSum = (e) => {
    setSum(sum => e + sum)
  }
  
// 체크박스 단일 개체 선택
const handleSingleCheck = (checked, id) => {
  setAllCheck(false)
  console.log(allCheck, checked)
  if (checked) {
    setCheckItems([...checkItems, id]);
  } else {
    // 체크 해제
    setCheckItems(checkItems.filter((el) => el !== id));
  }
};

// 체크박스 전체 선택
const handleAllCheck = () => {
  // 체크박스 클릭시 현재 값과 반대 값이 check변수에 저장 
  //(현재 전체 선택 되어있다면 check변수의 값은 false)
  // state에 allCheck 다시 저장
  const check = !allCheck
  setAllCheck(check)
  console.log("change "+check)
 // 전체 체크 박스가 체크되면 모든 Cart의 cartNo를 배열에 넣어줌
  if (check) {
    const idArray = [];
    carts.forEach((el) => idArray.push(el.cartNo));
    setCheckItems(idArray);
  }
  // 반대의 경우 배열 값 삭제
  else {
    setCheckItems([]);
  }
}

const handleSelectDelete = () => {
  checkItems.forEach( e => deleteCartAPI({cartNo : e})
  .then(() => pReload())) 
  setShow(false)
}

useEffect(() => {
  console.log("useEffet 호출");
  getCartsData();
}, []);

useEffect(() => {
  const idArray = [];
  carts.forEach((el) => idArray.push(el.cartNo));
  setCheckItems(idArray);
}, [carts]);

useEffect(() => {
  
  // 개별구매 총액이 30000원 이상이거나 정기배송일 경우 배송비 0원
  setShipFee((sum < 30000) &&  type != 'T'? 3000 : 0)
}, [sum]);

return (
    <>
      <Header />
      <div className="body_container">
        <div>
          <div className="cart_list_container">
            {carts && carts.length > 0 
              ? carts.map( c => (
              <div className="cart_list_wrapper" key={c.cartNo}>
                <input type="checkbox" value={c.cartNo} checked={checkItems.includes(c.cartNo)} onChange={(e) => handleSingleCheck(e.target.checked, c.cartNo)}/>
                 <Cart c={c} pReload={pReload} pSum={pSum}/>  
            </div>
            )) : "장바구니가 비어있습니다."} 
          </div>
        </div>
        <div className="cart_list_footer">
          <div className="cart_list_btn_container"> 
            <button className="cart_list_all" onClick={handleAllCheck}>전체 선택</button> 
            <button className="cart_list_delete" onClick={handleShow}>선택 삭제</button>
          </div>
          <div className="cart_list_sum_price_container">
            <div className="cart_list_price">총 상품 금액 : {sum}원</div>
            <div className="cart_list_ship_fee">배송비 : {shipFee}원</div>
            <div className="cart_list_sum">총 주문금액 : {sum +shipFee}원</div>   
          </div>
        </div>
      </div>
      <Footer />

      {/* =========================== [[ 장바구니 삭제 완료 모달 시작 ]] =========================== */}
      <Modal size="md" show={show} onHide={handleClose} animation={false}>
      <Modal.Header closeButton>
        <Modal.Title id="example-modal-sizes-title-md">장바구니 삭제</Modal.Title>
      </Modal.Header>
      <Modal.Body>
        <div className="modal-body-container">
          <span>해당 장바구니를 삭제하시겠습니까?</span>
        </div>
      </Modal.Body>
      <Modal.Footer>
        <Button variant="secondary" onClick={handleClose}>
          취소
        </Button>
        <Button variant="primary" onClick={() => {handleSelectDelete()}}>
          삭제 
        </Button>
      </Modal.Footer>
    </Modal>
    {/* =========================== [[ 장바구니 삭제 완료 모달 종료 ]] =========================== */}      
    </>
  );
};

export default Carts;
