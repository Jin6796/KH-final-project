package kh.sellermoon.member.logic;

import java.util.List;
import java.util.Map;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.sellermoon.member.dao.SubsDao;

@Service
public class SubsLogic {
	Logger logger = LogManager.getLogger(SubsLogic.class);
	
	@Autowired
	private SubsDao subsDao = null;

	public Map<String, Object> subsList(Map<String, Object> pMap) {
		logger.info("subsList 호출 성공");
		Map<String, Object> subsList = null;
		subsList = subsDao.subsList(pMap);
		return subsList;
	}

	public Map<String, Object> subsDeliver(Map<String, Object> pMap) {
		logger.info("subsDeliver 호출 성공");
		Map<String, Object> subsDeliver = null;
		subsDeliver = subsDao.subsDeliver(pMap);
		return subsDeliver;
	}

	public Map<String, Object> subsPurchase(Map<String, Object> pMap) {
		logger.info("subsPurchase 호출 성공");
		Map<String, Object> subsPurchase = null;
		subsPurchase = subsDao.subsPurchase(pMap);
		return subsPurchase;
	}
	
	

}
