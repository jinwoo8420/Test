package com.seasoning.app.service;

import java.io.IOException;

import com.seasoning.app.model.CommonDetailVO;
import com.seasoning.app.model.FoodVO;
import com.seasoning.app.model.LodgmentVO;
import com.seasoning.app.model.TourListVO;

public interface DetailService {
	
	public TourListVO getTourDetail(String contentId) throws IOException;
	public FoodVO getFoodDetail(String contentId) throws IOException;
	public LodgmentVO getLodgmentDetail(String contentId) throws IOException;
	
	public CommonDetailVO getCommonDetail(String contentId) throws IOException;

}
