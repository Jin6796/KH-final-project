package kh.sellermoon.member.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import kh.sellermoon.member.vo.CartVO;
import kh.sellermoon.member.vo.MdVO;
import org.apache.logging.log4j.LogManager;

@Service
public class PCartDao {
	Logger logger = LoggerFactory.getLogger(PCartDao.class);

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	
	public List<Map<String, Object>> pCartlist(int no) {
	      List<Map<String, Object>> pCartlist = null;
	      pCartlist = sqlSessionTemplate.selectList("getAllPCartList",no);
	         return pCartlist;
	   }
	   
	public List<Map<String, Object>> getAllCarts(int no) {
		return sqlSessionTemplate.selectList("getAllPCartList", no);
	}

	public List<CartVO> getAllCartsVO(Map<String, Object> map) {
		return sqlSessionTemplate.selectList("getAllPCartListVO", map);
	}
	
	public void insertCart(Map<String, Object> pMap) {
		sqlSessionTemplate.insert("insertCart", pMap);
	}

	public void updateCart(Map<String, Object> cartMap) {
		sqlSessionTemplate.update("updateCart", cartMap);
	}

	public void deleteCart(Map<String, Object> cartMap) {
		sqlSessionTemplate.delete("deleteCart", cartMap);
	}
}