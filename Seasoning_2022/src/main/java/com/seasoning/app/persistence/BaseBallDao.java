package com.seasoning.app.persistence;

import java.util.List;

import com.seasoning.app.model.BaseBallScheduleVO;

public interface BaseBallDao extends GenericDao<BaseBallScheduleVO, String> {

	// 야구 월별로 불러오기 위해 Select 따로 지정해줌
	public List<BaseBallScheduleVO> selectDusan();
	
	public List<BaseBallScheduleVO> selectSt_Dusan();
	
	public List<BaseBallScheduleVO> selectLg();
	
	public List<BaseBallScheduleVO> selectSt_Lg();

	public List<BaseBallScheduleVO> selectKia();
	
	public List<BaseBallScheduleVO> selectSt_Kia();
}
