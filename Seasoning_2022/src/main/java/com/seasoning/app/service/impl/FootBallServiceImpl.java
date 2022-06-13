package com.seasoning.app.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.seasoning.app.model.FootBallScheduleVO;
import com.seasoning.app.persistence.FootBallDao;
import com.seasoning.app.service.FootBallService;

@Service
public class FootBallServiceImpl implements FootBallService {

	@Autowired
	private FootBallDao fbDao;

	@Override
	public List<FootBallScheduleVO> findByTime(String time) {
		return null;
	}

	@Override
	public List<FootBallScheduleVO> selectSeoul() {
		List<FootBallScheduleVO> fbSchedule = fbDao.selectSeoul();
		return fbSchedule;
	}
	
	@Override
	public List<FootBallScheduleVO> selectSt_Seoul() {
		List<FootBallScheduleVO> fbSchedule = fbDao.selectSt_Seoul();
		return fbSchedule;
	}

	@Override
	public List<FootBallScheduleVO> selectJeonbuk() {
		List<FootBallScheduleVO> fbSchedule = fbDao.selectJeonbuk();
		return fbSchedule;
	}
	
	@Override
	public List<FootBallScheduleVO> selectSt_Jeonbuk() {
		List<FootBallScheduleVO> fbSchedule = fbDao.selectSt_Jeonbuk();
		return fbSchedule;
	}

	@Override
	public List<FootBallScheduleVO> selectGangwon1() {
		List<FootBallScheduleVO> fbSchedule = fbDao.selectGangwon1();
		return fbSchedule;
	}

	@Override
	public List<FootBallScheduleVO> selectGangwon2() {
		List<FootBallScheduleVO> fbSchedule = fbDao.selectGangwon2();
		return fbSchedule;
	}

	@Override
	public FootBallScheduleVO findById(String id) {
		return null;
	}

	@Override
	public List<FootBallScheduleVO> findByName(String name) {
		return null;
	}

	@Override
	public List<FootBallScheduleVO> findByDate(String date) {
		return null;
	}

	@Override
	public List<FootBallScheduleVO> findByMatch(String match) {
		return null;
	}

	@Override
	public List<FootBallScheduleVO> selectAll() {
		return null;
	}

}
