package kh.sellermoon.member.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

@Service
public class CartDao {
	Logger logger = LoggerFactory.getLogger(CartDao.class);

	@Autowired(required = false)
	private SqlSessionTemplate sqlSessionTemplate = null;

	public List<Map<String, Object>> pro_cartlist(Map<String, Object> pMap) {
		logger.info("pro_cartList 호출 성공");
		List<Map<String, Object>> cartList = null;
		try {
			sqlSessionTemplate.selectOne("proc_cartlist", pMap);
			cartList = (List<Map<String, Object>>)pMap.get("key");
			// insert here
			logger.info(cartList.toString());
		} catch (DataAccessException e) {
			logger.info("Exception : "+e.toString());
		} 
		return cartList;
	}
	
	public int pro_cartMinsert(Map<String, Object> pMap) {
		logger.info("pro_cartinsert 호출 성공 ==> "+ pMap);
		int result = 0;
		try {
			sqlSessionTemplate.selectOne("proc_cartinsert", pMap);
			if(pMap.get("result")!=null) {
				result = Integer.parseInt(pMap.get("result").toString());				
			}
			logger.info("result : "+result);
		} catch (DataAccessException e) {
			logger.info("Exception : "+e.toString());
		} 
		return result;
	}
	
	public List<Map<String, Object>> cartList(Map<String, Object> pMap) {
		logger.info("cartList 호출 성공");
		List<Map<String, Object>> cartList = null;
		try {
			cartList = sqlSessionTemplate.selectList("cartList", pMap);
			logger.info(cartList.toString());
		} catch (DataAccessException e) {
			logger.info("Exception : "+e.toString());
		} 
		return cartList;
	}

	public int getBNo() {
		logger.info("getBNo 호출 성공");
		int result = 0;
		try {
			result = sqlSessionTemplate.selectOne("getBNo");
			logger.info(result+"");
		} catch (Exception e) {
			logger.info("Exception: " + e.toString());
		}
		return result;
	}
	
	public int bStepUpdate(Map<String, Object> pMap) {
		int result = 0;
		try {
			result = sqlSessionTemplate.update("bStepUpdate", pMap);
//			sqlSessionTemplate.commit(); // commit default가 true이기 때문에 굳이 안써도 됨
			logger.info("result: "+result);
		} catch (Exception e) {
			logger.info("Exception: " + e.toString());
		}
		return result;
	}
	
	public int getBGroup() {
		logger.info("getBGroup 호출 성공");
		int result = 0;
		try {
			result = sqlSessionTemplate.selectOne("getBGroup");
			logger.info(result+"");
		} catch (Exception e) {
			logger.info("Exception: " + e.toString());
		}
		return result;
	}
	
	public int cartInsert(Map<String, Object> pMap) {
		int result = 0;
		try {
			result = sqlSessionTemplate.update("cartInsert", pMap);
			logger.info("result: "+result);
		} catch (Exception e) {
			logger.info("Exception: " + e.toString());
		}
		return result;
	}

	public int cartUpdate(Map<String, Object> pMap) {
		int result = 0;
		try {
			result = sqlSessionTemplate.update("cartUpdate", pMap);
			logger.info("result: "+result);
		} catch (Exception e) {
			logger.info("Exception: "+ e.toString());
		}		
		return result;
	}

	public int cartDelete(Map<String, Object> pMap) {
		int result = 0;
		try {
			result = sqlSessionTemplate.delete("cartDelete", pMap);
			logger.info("result: "+result);
		} catch (Exception e) {
			logger.info("Exception: " + e.toString());
		}
		return result;
	}

	public int hitCount(Map<String, Object> pMap) {
		int result = 0;
		try {
			result = sqlSessionTemplate.update("hitCount", pMap);
			logger.info("result: "+result);
		} catch (Exception e) {
			logger.info("Exception: " + e.toString());
		}
		return result;
	}

	public int cartSInsert(Map<String, Object> pMap) {
		int result = 0;
		try {
			// 현재는 첨부파일이 한 개!니까 그냥 상수 처리~
			// TODO - 멀티 처리를 위해서는 무엇을 해야할까?
			pMap.put("bs_seq", 1);
			result = sqlSessionTemplate.update("cartInsert", pMap);
			logger.info("result: "+result);
		} catch (Exception e) {
			logger.info("Exception: " + e.toString());
		}
		return result; 
	}
}