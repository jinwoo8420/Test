package com.seasoning.app.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.seasoning.app.model.AroundVO;
import com.seasoning.app.model.CommonDetailVO;
import com.seasoning.app.model.FoodDetailVO;
import com.seasoning.app.model.LodgmentDetailVO;
import com.seasoning.app.model.TourDetailVO;
import com.seasoning.app.service.AroundService;
import com.seasoning.app.service.DetailService;

import lombok.extern.slf4j.Slf4j;


@Slf4j
@RequestMapping(value="/detail")
@Controller
public class DetailController {
	
	@Autowired
	public DetailService detailService;
	
	@Autowired
	private AroundService aroundService;
	
	@RequestMapping(value="/fooddetail/{contentid}")
	public String detail(@PathVariable("contentid") String contentid, Model model) throws IOException {
		
		FoodDetailVO foodDetailVO = detailService.getFoodDetail(contentid) ;
		CommonDetailVO CommonDetailVO = detailService.getCommonDetail(contentid);
		List<AroundVO> AroundList = aroundService.getDetailAround(CommonDetailVO.mapx, CommonDetailVO.mapy, CommonDetailVO.contenttypeid );
		
		model.addAttribute("FOODDETAIL",foodDetailVO);
		model.addAttribute("COMMONDETAIL",CommonDetailVO);
		model.addAttribute("AROUND",AroundList);
		return "/detail/fooddetail";
	}
	
	@RequestMapping(value ="/tour_detail")
	public String tour_detail(Model model, String contentid) throws IOException{
		
		TourDetailVO TourDetailVO = detailService.getTourDetail(contentid) ;
		CommonDetailVO CommonDetailVO = detailService.getCommonDetail(contentid);
		
		model.addAttribute("TOURDETAIL",TourDetailVO);
		model.addAttribute("COMMONDETAIL",CommonDetailVO);
		
		
		return "/detail/tour_detail";
	}
	
	@RequestMapping(value ="/food_detail")
	public String food_detail(Model model, String contentid) throws IOException{
		
		FoodDetailVO foodDetailVO = detailService.getFoodDetail(contentid) ;
		CommonDetailVO CommonDetailVO = detailService.getCommonDetail(contentid);
		
		model.addAttribute("FOODDETAIL",foodDetailVO);
		model.addAttribute("COMMONDETAIL",CommonDetailVO);
		
		
		return "/detail/food_detail";
	}
	
	@RequestMapping(value ="/lodgment_detail")
	public String lodgment_detail(Model model, String contentid) throws IOException{
		
		LodgmentDetailVO lodgmentDetailVO = detailService.getLodgmentDetail(contentid);
		CommonDetailVO CommonDetailVO = detailService.getCommonDetail(contentid);
		
		model.addAttribute("LODGMENTDETAIL",lodgmentDetailVO);
		model.addAttribute("COMMONDETAIL",CommonDetailVO);
		
		return "/detail/lodgment_detail";
	}
	

}
