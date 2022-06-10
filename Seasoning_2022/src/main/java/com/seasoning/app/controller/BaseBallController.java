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
		return "baseball/baseball-seoul";
	}

	@RequestMapping(value = "/baseball-seoul")
	public String seoul(Model model) {

		List<BaseBallScheduleVO> bblist = bbService.selectJun();
		List<BaseBallScheduleVO> bblist2 = bbService.selectJul();
		List<BaseBallScheduleVO> bblist3 = bbService.selectAug();
		List<BaseBallScheduleVO> bblist4 = bbService.selectSept();

		model.addAttribute("BASEBALL", bblist);
		model.addAttribute("BASEBALL2", bblist2);
		model.addAttribute("BASEBALL3", bblist3);
		model.addAttribute("BASEBALL4", bblist4);

		return null;
	}

}