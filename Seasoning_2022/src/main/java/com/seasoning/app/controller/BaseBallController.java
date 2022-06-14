package com.seasoning.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.seasoning.app.model.BaseBallScheduleVO;
import com.seasoning.app.service.BaseBallService;

@RequestMapping(value = "/baseball")
@Controller
public class BaseBallController {

	@Autowired
	private BaseBallService bbService;

	@RequestMapping(value = { "/", "" })
	public String home() {
		return "baseball/bb-kia";
	}

	@RequestMapping(value = "/bb-dusan")
	public String dusan(Model model) {

		List<BaseBallScheduleVO> bblist = bbService.selectDusan();
		List<BaseBallScheduleVO> bbst = bbService.selectSt_Dusan();

		model.addAttribute("BB_DUSAN", bblist);
		model.addAttribute("ST_DUSAN", bbst);

		return null;
	}
	
	@RequestMapping(value = "/bb-lg")
	public String lg(Model model) {
		
		List<BaseBallScheduleVO> bblist = bbService.selectLg();
		List<BaseBallScheduleVO> bbst = bbService.selectSt_Lg();
		
		model.addAttribute("BB_LG", bblist);
		model.addAttribute("ST_LG", bbst);
		
		return null;
	}
	
	@RequestMapping(value = "/bb-kia")
	public String kia(Model model) {

		List<BaseBallScheduleVO> bblist = bbService.selectKia();
		List<BaseBallScheduleVO> bbst = bbService.selectSt_Kia();

		model.addAttribute("BB_KIA", bblist);
		model.addAttribute("ST_KIA", bbst);

		return null;
	}

}
