package com.seasoning.app.persistence;

import java.util.List;

import com.seasoning.app.model.FootBallScheduleVO;

public interface FootBallDao extends GenericDao<FootBallScheduleVO, String> {

	public List<FootBallScheduleVO> findByTime(String time); // 경기 시간

	public List<FootBallScheduleVO> selectJeonbuk();
	
	public List<FootBallScheduleVO> selectSt_Jeonbuk();

	public List<FootBallScheduleVO> selectSeoul();

	public List<FootBallScheduleVO> selectSt_Seoul();

	public List<FootBallScheduleVO> selectGangwon1();

	public List<FootBallScheduleVO> selectGangwon2();

}
