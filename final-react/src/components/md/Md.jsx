import React from 'react';
import Footer from '../Common/Footer';
import Header from '../Common/Header';
import DatePicker from "react-datepicker";

const Md = (props) => {
  return (
    <>
      <Header />
        <div className="body_container">
          <h4>상품 관리 페이지</h4>
          <div className="tb_search">
            <table>
              <tbody>
                <tr>
                  <th className="bdb bdr">검색</th>
                  <td className="bdb bdr">
                    <input type="text" name="s_keyword" className="AXInput" style={{width:'95%'}} placeholder="검색어를 입력해주세요"/>
                  </td>
                  <th>분류</th>
                  <td>
                    <select name="s_align" id="s_align" className="AXSelect">
                      <option value="0"></option>
                      <option value="1">탐폰</option>
                      <option value="2">생리대</option>
                      <option value="2">뭐시기</option>
                    </select>
                  </td>
                  <th className="bdb bdr">재고여부</th>
                  <td className="bdb bdr">
                    <select name="s_sort" id="s_sort" className="AXSelect">
                      <option value="0"></option>
                      <option value="1">있음</option>
                      <option value="2">없음</option>
                    </select>
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
          <div className="tb_list">
            <h4>상품 목록</h4>
            <table>
              <tbody>
                <tr>
                  <th className="bdr">
                    <input type="checkbox" name="all"  />
                  </th>
                  <th className="bdr">상품번호</th>
                  <th className="bdr">사진</th>
                  <th className="bdr">상품명</th>
                  <th className="bdr">가격</th>
                  <th className="bdr">조회수</th>
                  <th className="bdr">재고유무</th>
                  <th className="bdr">등록일</th>
                  <th className="bdr">관리</th>
                </tr>
                <tr>
                  <td colSpan={10} className="bdr bdt">상품이 존재하지 않습니다.</td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      <Footer />
    </>
  );
}

export default Md;