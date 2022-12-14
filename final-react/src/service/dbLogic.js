import axios from "axios";

export const RegisterMember = (params) => {
  return new Promise((resolve, reject) => {
    try {
      const response = axios({
        method: "post",
        url: process.env.REACT_APP_SPRING_IP + "register",
        params: params,
      });
      resolve(response);
    } catch (error) {
      reject(error);
    }
  });
};

export const loginMember = (params) => {
  return new Promise((resolve, reject) => {
    try {
      const response = axios({
        method: "post",
        url: process.env.REACT_APP_SPRING_IP + "login",
        params: params,
      });
      resolve(response);
    } catch (error) {
      reject(error);
    }
  });
};

export const adminLogin = (params) => {
  return new Promise((resolve, reject) => {
    try {
      const response = axios({
        method: "post",
        url: process.env.REACT_APP_SPRING_IP + "admin/login",
        params: params,
      });
      resolve(response);
    } catch (error) {
      reject(error);
    }
  });
};

export const memberProfile = (params) => {
  return new Promise((resolve, reject) => {
    try {
      const response = axios({
        method: "post",
        url: process.env.REACT_APP_SPRING_IP + "meminfo",
        params: params,
      });
      resolve(response);
    } catch (error) {
      reject(error);
    }
  });
};

export const modifyProfile = (params) => {
  return new Promise((resolve, reject) => {
    try {
      const response = axios({
        method: "post",
        url: process.env.REACT_APP_SPRING_IP + "membermodify",
        params: params,
      });
      resolve(response);
    } catch (error) {
      reject(error);
    }
  });
};

export const modifyPass = (params) => {
  return new Promise((resolve, reject) => {
    try {
      const response = axios({
        method: "post",
        url: process.env.REACT_APP_SPRING_IP + "updpass",
        params: params,
      });
      resolve(response);
    } catch (error) {
      reject(error);
    }
  });
};

export const delMember = (params) => {
  return new Promise((resolve, reject) => {
    try {
      const response = axios({
        method: "post",
        url: process.env.REACT_APP_SPRING_IP + "deletemember",
        params: params,
      });
      resolve(response);
    } catch (error) {
      reject(error);
    }
  });
};

export const noticelist = (params) => {
  return new Promise((resolve, reject) => {
    try {
      const response = axios({
        method: "get",
        url: process.env.REACT_APP_SPRING_IP + "notice/noticelist",
        params: params,
      });

      resolve(response);
    } catch (error) {
      reject(error);
    }
  });
};

export const faqlist = (params) => {
  return new Promise((resolve, reject) => {
    try {
      const response = axios({
        method: "get",
        url: process.env.REACT_APP_SPRING_IP + "faq/faqlist",
        params: params,
      });

      resolve(response);
    } catch (error) {
      reject(error);
    }
  });
};

export const pointlist = (params) => {
  return new Promise((resolve, reject) => {
    try {
      const response = axios({
        method: "get",
        url: process.env.REACT_APP_SPRING_IP + "point/pointlist",
        params: params,
      });

      resolve(response);
    } catch (error) {
      reject(error);
    }
  });
};

export const memberList = (params) => {
  return new Promise((resolve, reject) => {
    try {
      const response = axios({
        method: "get",
        url: process.env.REACT_APP_SPRING_IP + "admin/member",
        params: params,
      });

      resolve(response);
    } catch (error) {
      reject(error);
    }
  });
};

export const jsonStoreList = (params) => {
  return new Promise((resolve, reject) => {
    try {
      const response = axios({
        method: "get",
        url: process.env.REACT_APP_SPRING_IP + "admin/store/jsonStoreList",
        params: params,
      });

      resolve(response);
    } catch (error) {
      reject(error);
    }
  });
};
export const jsonStoreDetail = (params) => {
  return new Promise((resolve, reject) => {
    try {
      const response = axios({
        method: "get",
        url: process.env.REACT_APP_SPRING_IP + "admin/store/jsonStoreDetail",
        params: params,
      });

      resolve(response);
    } catch (error) {
      reject(error);
    }
  });
};
export const jsonAmdList = (params) => {
  return new Promise((resolve, reject) => {
    try {
      const response = axios({
        method: "get",
        url: process.env.REACT_APP_SPRING_IP + "admin/amd/jsonAmdList",
        params: params,
      });

      resolve(response);
    } catch (error) {
      reject(error);
    }
  });
};
export const amdInsert = (params) => {
  return new Promise((resolve, reject) => {
    try {
      const response = axios({
        method: "get",
        url: process.env.REACT_APP_SPRING_IP + "admin/amd/amdInsert",
        params: params,
      });

      resolve(response);
    } catch (error) {
      reject(error);
    }
  });
};

/*  ?????? ???????????? ????????? ???????????? ?????? ??????   */
export const getAllMyCartAPI = (type, no) => {
  const data = {
    no : no,
    orderType :type
  }
  return new Promise((resolve, reject) => {
    try {
      const response = axios({
        method: "post",
        url: process.env.REACT_APP_SPRING_IP + "cart/list",
        data: data
      });

      resolve(response);
    } catch (error) {
      reject(error);
    }
  });
};

/*  ???????????? ??????   */
export const insertCartAPI = (data) => {
  return new Promise((resolve, reject) => {
    try {
      const response = axios({
        method: "post",
        url: process.env.REACT_APP_SPRING_IP + "cart",
        data: data,
      });

      resolve(response);
    } catch (error) {
      reject(error);
    }
  });
};

/*  ???????????? ??????   */
export const updateCartAPI = (data) => {
  return new Promise((resolve, reject) => {
    try {
      const response = axios({
        method: "put",
        url: process.env.REACT_APP_SPRING_IP + "cart",
        data: data,
      });

      resolve(response);
    } catch (error) {
      reject(error);
    }
  });
};

/*  ???????????? ??????   */
export const deleteCartAPI = (data) => {
  console.log("deleteNo :" + data)
  return new Promise((resolve, reject) => {
    try {
      const response = axios({
        method: "delete",
        url: process.env.REACT_APP_SPRING_IP + "cart",
        data: data,
      });

      resolve(response);
    } catch (error) {
      reject(error);
    }
  });
};

/*  ?????? ?????? ?????? ?????? (??????????????????, ??????, ?????????)  */
export const getAllProductAPI = (e) => {
  console.log(e);
  return new Promise((resolve, reject) => {
    var url = process.env.REACT_APP_SPRING_IP + "product/list";
    url += "?page=" + e.page;
    url += "&category=" + e.category;
    url += "&sort=" + e.sort;

    try {
      const response = axios({
        method: "get",
        url: url,
      });

      resolve(response);
    } catch (error) {
      reject(error);
    }
  });
};

/*  ?????? ?????? ??????  */
export const getProductDetailAPI = (no) => {
  const url = process.env.REACT_APP_SPRING_IP + "product/detail?no=" + no;
  console.log(url);
  return new Promise((resolve, reject) => {
    try {
      const response = axios({
        method: "get",
        url: url,
      });

      resolve(response);
    } catch (error) {
      reject(error);
    }
  });
};

/*  ???????????? ?????? (???????????? ??????)   */
export const orderCartAPI = (data) => {
  return new Promise((resolve, reject) => {
    try {
      const response = axios({
        method: "post",
        url: process.env.REACT_APP_SPRING_IP + "cart/order",
        data: data,
      });

      resolve(response);
    } catch (error) {
      reject(error);
    }
  });
};

export const mypoint = (params) => {
  return new Promise((resolve, reject) => {
    try {
      const response = axios({
        method: "get",
        url: process.env.REACT_APP_SPRING_IP + "point/mypoint",
        params: params,
      });

      resolve(response);
    } catch (error) {
      reject(error);
    }
  });
};

/* ??????????????? ???????????? ???????????? */
export const subslist = (params) => {
  return new Promise((resolve, reject) => {
    try {
      const response = axios({
        method: "get",
        url: process.env.REACT_APP_SPRING_IP + "subs/subslist",
        params: params,
      });

      resolve(response);
    } catch (error) {
      reject(error);
    }
  });
};

/* ??????????????? ???????????? ???????????? */
export const subsdeliver = (params) => {
  return new Promise((resolve, reject) => {
    try {
      const response = axios({
        method: "get",
        url: process.env.REACT_APP_SPRING_IP + "subs/subsdeliver",
        params: params,
      });

      resolve(response);
    } catch (error) {
      reject(error);
    }
  });
};

/* ??????????????? ???????????? ???????????? */
export const subspurchase = (params) => {
  return new Promise((resolve, reject) => {
    try {
      const response = axios({
        method: "get",
        url: process.env.REACT_APP_SPRING_IP + "subs/subspurchase",
        params: params,
      });

      resolve(response);
    } catch (error) {
      reject(error);
    }
  });
};

//????????? ????????????/????????????/????????????
export const jsonBoardList = (params) => {
  return new Promise((resolve, reject) => {
    try {
      const bList = axios({
        method: "get",
        url: process.env.REACT_APP_SPRING_IP + "admin/board/jsonBoardList",
        params: params,
      });
      resolve(bList);
    } catch (error) {
      reject(error);
    }
  });
};

// ?????? ?????? ??????
export const jsonReplyList = (params) => {
  return new Promise((resolve, reject) => {
    try {
      const rList = axios({
        method: "get",
        url: process.env.REACT_APP_SPRING_IP + "admin/board/jsonReplyList",
        params: params,
      });
      resolve(rList);
    } catch (error) {
      reject(error);
    }
  });
};

// ?????? ??????
export const reviewList = (params) => {
  return new Promise((resolve, reject) => {
    try {
      const response = axios({
        method: "post",
        url: process.env.REACT_APP_SPRING_IP + "onemdallreview",
        params: params,
      });
      resolve(response);
    } catch (error) {
      reject(error);
    }
  });
};
// ?????? ??????
export const reviewInsert = (params) => {
  return new Promise((resolve, reject) => {
    try {
      const response = axios({
        method: "post",
        url: process.env.REACT_APP_SPRING_IP + "insertreview",
        params: params,
      });
      resolve(response);
    } catch (error) {
      reject(error);
    }
  });
};
// ?????? ??????
export const reviewModify = (params) => {
  return new Promise((resolve, reject) => {
    try {
      const response = axios({
        method: "post",
        url: process.env.REACT_APP_SPRING_IP + "modreview",
        params: params,
      });
      resolve(response);
    } catch (error) {
      reject(error);
    }
  });
};
// ?????? ?????? ?????? view
export const modReview = (params) => {
  return new Promise((resolve, reject) => {
    try {
      const response = axios({
        method: "post",
        url: process.env.REACT_APP_SPRING_IP + "modviewreview",
        params: params,
      });
      resolve(response);
    } catch (error) {
      reject(error);
    }
  });
};
// ?????? ??????
export const reviewDelete = (params) => {
  return new Promise((resolve, reject) => {
    try {
      const response = axios({
        method: "post",
        url: process.env.REACT_APP_SPRING_IP + "delreview",
        params: params,
      });
      resolve(response);
    } catch (error) {
      reject(error);
    }
  });
};
// ?????? ?????????
export const likeReview = (params) => {
  return new Promise((resolve, reject) => {
    try {
      const response = axios({
        method: "post",
        url: process.env.REACT_APP_SPRING_IP + "likereview",
        params: params,
      });
      resolve(response);
    } catch (error) {
      reject(error);
    }
  });
};
// ??????????????? ??????
export const myReview = (params) => {
  return new Promise((resolve, reject) => {
    try {
      const response = axios({
        method: "post",
        url: process.env.REACT_APP_SPRING_IP + "memreview",
        params: params,
      });
      resolve(response);
    } catch (error) {
      reject(error);
    }
  });
};

export const jsonOrderDetail = (params) => {
  return new Promise((resolve, reject) => {
    try {
      const response = axios({
        method: "get",
        url: process.env.REACT_APP_SPRING_IP + "jsonOrderDetailList",
        params: params,
      });
      resolve(response);
    } catch (error) {
      reject(error);
    }
  });
};

export const jsonOrderDetail2 = (params) => {
  return new Promise((resolve, reject) => {
    try {
      const response = axios({
        method: "get",
        url: process.env.REACT_APP_SPRING_IP + "jsonOrderDetailList2",
        params: params,
      });
      resolve(response);
    } catch (error) {
      reject(error);
    }
  });
};

/* ??????,?????? - ???????????? */
export const paymentlist = (params) => {
  return new Promise((resolve, reject) => {
    try {
      const response = axios({
        method: "get",
        url: process.env.REACT_APP_SPRING_IP + "paymentlist",
        params: params,
      });

      resolve(response);
    } catch (error) {
      reject(error);
    }
  });
};

/* ??????????????? - ???????????? */
export const paytotal = (params) => {
  return new Promise((resolve, reject) => {
    try {
      const response = axios({
        method: "get",
        url: process.env.REACT_APP_SPRING_IP + "paytotal",
        params: params,
      });

      resolve(response);
    } catch (error) {
      reject(error);
    }
  });
};

/* ??????????????? - ???????????? */
export const spaymentlist = (params) => {
  return new Promise((resolve, reject) => {
    try {
      const response = axios({
        method: "get",
        url: process.env.REACT_APP_SPRING_IP + "spaymentlist",
        params: params,
      });

      resolve(response);
    } catch (error) {
      reject(error);
    }
  });
};

/* ??????,?????? - ???????????? */
export const spaytotal = (params) => {
  return new Promise((resolve, reject) => {
    try {
      const response = axios({
        method: "get",
        url: process.env.REACT_APP_SPRING_IP + "spaytotal",
        params: params,
      });

      resolve(response);
    } catch (error) {
      reject(error);
    }
  });
};
