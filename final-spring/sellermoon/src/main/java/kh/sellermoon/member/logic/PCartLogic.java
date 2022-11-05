package kh.sellermoon.member.logic;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.sellermoon.member.dao.CartDao;
import kh.sellermoon.member.dao.PCartDao;
import kh.sellermoon.member.dao.ProductDao;
import kh.sellermoon.member.vo.CartVO;
import kh.sellermoon.member.vo.MdVO;

@Service
public class PCartLogic {
	Logger logger = LoggerFactory.getLogger(PCartLogic.class);

	@Autowired
	private PCartDao pCartDao;
	
	
	  //public List<Map<String, Object>> pCartlist(Map<String, Object> pMap) {
	//	  logger.info("pointList 호출 성공");
	 //     List<Map<String, Object>> pointList = null;
	 //     pointList = pCartDao.pCartlist(pMap);
	 //     return pCartlist;
	//   }


	public List<Map<String, Object>> pCartlist(Map<String, Object> pMap) {
		 logger.info("pointList 호출 성공");
	      List<Map<String, Object>> pCartlist = null;
	      pCartlist = pCartDao.pCartlist(pMap);
	      return pCartlist;
	}
	  
	//public List<CartVO> getAllCartList(int no) throws Exception {
	//	return pCartDao.getAllCarts(no);
	//}
	

}
