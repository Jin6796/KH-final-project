import { Route, Routes } from "react-router-dom";
import 'bootstrap/dist/css/bootstrap.min.css';
import Main from './pages/Main';
import "./App.css"
import Notice from './pages/Notice';
import axios from "axios"
import NoticeDetail from './pages/NoticeDetail';
import Statics from "./components/statics/Statics";
import Customer from "./components/customer/Customer";
import Md from "./components/md/Md";
import Order from "./components/order/Order";
import Board from "./components/board/Board";
import Store from "./components/store/Store";

function App() {
  return (
    <>
      <Routes>

        <Route path="" element={<Main />}/> {/* 404페이지 */}
        
        <Route path="/statics" element={<Statics />}/> {/* 404페이지 */}

        <Route path="/customer" element={<Customer />}/>
        
        <Route path="/md" element={<Md />} />

        <Route path="/order" element={<Order />} />

        <Route path="/board" element={<Board />} />

        <Route path="/store" element={<Store />} />

      </Routes>
    </>
  );
}

export default App;
