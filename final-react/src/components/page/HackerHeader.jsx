import React from 'react';
import { Button, Container, Nav, Navbar } from 'react-bootstrap';
import { Link } from 'react-router-dom';
// 헤더에는 구글 인증(유지)을 위해 authLogic이 필요할 것

const HackerHeader = ({userId, onLogout}) => {
// const HackerHeader = (props) => {

  const ccc = () => {
    console.log('홈 로고 클릭');
  }
  return (
    <>
      <Navbar bg="white" expand="lg">
        <Container>
          <Navbar.Brand href="#home">
            <h1 onClick={ccc}>
              <i className="fa-solid fa-cloud-moon"></i>
              <small>월간; 문(moon)</small>
            </h1>
          </Navbar.Brand>
          <Navbar.Toggle aria-controls="basic-navbar-nav" />
          <Navbar.Collapse id="basic-navbar-nav">
            <Nav className="me-auto">
              <h5><Link to="/youtube" className="nav-link">Store</Link></h5>
              <h5><Link to="/dept" className="nav-link">부서관리</Link></h5>
              <h5><Link to="/hackernews/:userId" className="nav-link">MOON story</Link></h5>
            </Nav>
            <div>
              <Button onClick={ccc}><i className="fa-solid fa-basket-shopping"></i>&nbsp;</Button>
              <Button><i className="fa-solid fa-envelope"></i>&nbsp;</Button>
              <Button><i className="fa-solid fa-user"></i>&nbsp;</Button>
              {/* {onLogout && (<Button variant="primary" onClick={onLogout}>Logout</Button>)} */}
            </div>
          </Navbar.Collapse>
        </Container>
      </Navbar>
    </>
  );
};

export default HackerHeader;