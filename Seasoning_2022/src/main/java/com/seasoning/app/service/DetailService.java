package com.seasoning.app.service;

import java.io.IOException;

import com.seasoning.app.model.CommonDetailVO;
import com.seasoning.app.model.FoodDetailVO;
import com.seasoning.app.model.LodgmentDetailVO;
import com.seasoning.app.model.TourDetailVO;

public interface DetailService {
	
	public TourDetailVO getTourDetail(String contentId) throws IOException;
	public FoodDetailVO getFoodDetail(String contentId) throws IOException;
	public LodgmentDetailVO getLodgmentDetail(String contentId) throws IOException;
	
	public CommonDetailVO getCommonDetail(String contentId) throws IOException;

}
