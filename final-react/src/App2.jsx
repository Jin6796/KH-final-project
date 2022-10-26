import "./App.css";
import { useState } from "react";
import Bottom from "./components/include/Bottom";
import Header from "./components/include/Header";
import "bootstrap/dist/css/bootstrap.min.css";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { Button } from "react-bootstrap";

const App = () => {
  const [number, setNumber] = useState(1); // 초기값 1
  const increase = () => {
    setNumber(number+1);
  }
  const decrease = () => {
    setNumber(number-1);
  }
  const ccc = () => {
    console.log('장바구니 클릭');
  }
  return (
    <div className="container">
      <h1>
        <i className="fa-solid fa-cloud-moon"></i>
        <small> 월간; 문(moon)</small>
      </h1>
      <div>
        <h4>
          <i className="fa-solid fa-basket-shopping" onClick={ccc}></i>&nbsp;
          <Button onClick={ccc}><i className="fa-solid fa-basket-shopping"></i>&nbsp;</Button>
          <Button><i className="fa-solid fa-envelope"></i>&nbsp;</Button>
          <Button><i className="fa-solid fa-user"></i>&nbsp;</Button>
          <button><i className="fa-solid fa-user"></i>&nbsp;</button>
        </h4>
      </div>
      <Header number={number} />
      <Bottom increase={increase} decrease={decrease}/>
    </div>
  );
}

export default App;
