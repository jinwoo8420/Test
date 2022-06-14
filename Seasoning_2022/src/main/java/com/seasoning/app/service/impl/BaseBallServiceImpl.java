package com.seasoning.app.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.seasoning.app.model.BaseBallScheduleVO;
import com.seasoning.app.persistence.BaseBallDao;
import com.seasoning.app.service.BaseBallService;

@Service
public class BaseBallServiceImpl implements BaseBallService {
	@Autowired
	private BaseBallDao bbDao;

	@Override
	public List<BaseBallScheduleVO> selectDusan() {
		List<BaseBallScheduleVO> bbSchedule = bbDao.selectDusan();
		return bbSchedule;
	}
	
	@Override
	public List<BaseBallScheduleVO> selectSt_Dusan() {
		List<BaseBallScheduleVO> bbSchedule = bbDao.selectSt_Dusan();
		return bbSchedule;
	}
	
	@Override
	public List<BaseBallScheduleVO> selectLg() {
		List<BaseBallScheduleVO> bbSchedule = bbDao.selectLg();
		return bbSchedule;
	}
	
	@Override
	public List<BaseBallScheduleVO> selectSt_Lg() {
		List<BaseBallScheduleVO> bbSchedule = bbDao.selectSt_Lg();
		return bbSchedule;
	}

	@Override
	public List<BaseBallScheduleVO> selectKia() {
		List<BaseBallScheduleVO> bbSchedule = bbDao.selectKia();
		return bbSchedule;
	}
	
	@Override
	public List<BaseBallScheduleVO> selectSt_Kia() {
		List<BaseBallScheduleVO> bbSchedule = bbDao.selectSt_Kia();
		return bbSchedule;
	}
	
	@Override
	public List<BaseBallScheduleVO> selectAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public BaseBallScheduleVO findById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BaseBallScheduleVO> findByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BaseBallScheduleVO> findByDate(String date) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BaseBallScheduleVO> findByMatch(String match) {
		// TODO Auto-generated method stub
		return null;
	}

}
