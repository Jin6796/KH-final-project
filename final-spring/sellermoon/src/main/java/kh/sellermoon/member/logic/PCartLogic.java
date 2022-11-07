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

	public List<CartVO> getAllCartsVO(Map<String, Object> pMap) {
	      return pCartDao.getAllCartsVO(pMap);
	}

	public void insertCart(Map<String, Object> pMap) {
		 pCartDao.insertCart(pMap);
		
	}
	
	public void updateCart(Map<String, Object> cartMap) {
		pCartDao.updateCart(cartMap);
		
	}

	public void deleteCart(Map<String, Object> cartMap) {
		pCartDao.deleteCart(cartMap);
	}
}
