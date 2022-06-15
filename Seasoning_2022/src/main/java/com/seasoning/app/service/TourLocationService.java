package com.seasoning.app.service;

import java.io.IOException;
import java.util.List;

import com.seasoning.app.model.LocationVO;

public interface TourLocationService {

	public List<LocationVO> get_TourLocation(String location) throws IOException;

}
