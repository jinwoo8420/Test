package com.seasoning.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.seasoning.app.model.FootBallScheduleVO;
import com.seasoning.app.service.FootBallService;

@RequestMapping(value = "/football")
@Controller
public class FootBallController {

	@Autowired
	private FootBallService fbService;

	@RequestMapping(value = { "/", "" })
	public String home() {
		return "football/football-seoul";
	}

	@RequestMapping(value = "/football-seoul")
	public String seoul(Model model) {

		List<FootBallScheduleVO> fblist = fbService.selectAll();

		model.addAttribute("FOOTBALL", fblist);
		
		return null;
	}


}
