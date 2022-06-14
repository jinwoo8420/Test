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
		return "football/fb-seoul";
	}

	@RequestMapping(value = "/fb-seoul")
	public String seoul(Model model) {

		List<FootBallScheduleVO> fblist = fbService.selectSeoul();
		List<FootBallScheduleVO> fbst = fbService.selectSt_Seoul();

		model.addAttribute("FB_SEOUL", fblist);
		model.addAttribute("ST_SEOUL", fbst);

		return null;
	}

	@RequestMapping(value = "/fb-daegu")
	public String daegu(Model model) {

		List<FootBallScheduleVO> fblist = fbService.selectDaegu();
		List<FootBallScheduleVO> fbst = fbService.selectSt_Daegu();

		model.addAttribute("FB_DAEGU", fblist);
		model.addAttribute("ST_DAEGU", fbst);

		return null;
	}

	@RequestMapping(value = "/fb-gangwon1")
	public String gangwon1(Model model) {

		List<FootBallScheduleVO> fblist = fbService.selectGangwon1();
		List<FootBallScheduleVO> fbst = fbService.selectSt_Gangwon1();

		model.addAttribute("FB_GANGWON1", fblist);
		model.addAttribute("ST_GANGWON1", fbst);

		return null;
	}

	@RequestMapping(value = "/fb-gangwon2")
	public String gangwon2(Model model) {

		List<FootBallScheduleVO> fblist = fbService.selectGangwon2();
		List<FootBallScheduleVO> fbst = fbService.selectSt_Gangwon2();

		model.addAttribute("FB_GANGWON2", fblist);
		model.addAttribute("ST_GANGWON2", fbst);

		return null;
	}

	@RequestMapping(value = "/fb-gimcheon")
	public String gimcheon(Model model) {

		List<FootBallScheduleVO> fblist = fbService.selectGimcheon();
		List<FootBallScheduleVO> fbst = fbService.selectSt_Gimcheon();

		model.addAttribute("FB_GIMCHEON", fblist);
		model.addAttribute("ST_GIMCHEON", fbst);

		return null;
	}

	@RequestMapping(value = "/fb-incheon")
	public String incheon(Model model) {

		List<FootBallScheduleVO> fblist = fbService.selectIncheon();
		List<FootBallScheduleVO> fbst = fbService.selectSt_Incheon();

		model.addAttribute("FB_INCHEON", fblist);
		model.addAttribute("ST_INCHEON", fbst);

		return null;
	}

	@RequestMapping(value = "/fb-jeju")
	public String jeju(Model model) {

		List<FootBallScheduleVO> fblist = fbService.selectJeju();
		List<FootBallScheduleVO> fbst = fbService.selectSt_Jeju();

		model.addAttribute("FB_JEJU", fblist);
		model.addAttribute("ST_JEJU", fbst);

		return null;
	}

	@RequestMapping(value = "/fb-jeonbuk")
	public String jeonbuk(Model model) {

		List<FootBallScheduleVO> fblist = fbService.selectJeonbuk();
		List<FootBallScheduleVO> fbst = fbService.selectSt_Jeonbuk();

		model.addAttribute("FB_JEONBUK", fblist);
		model.addAttribute("ST_JEONBUK", fbst);

		return null;
	}

	@RequestMapping(value = "/fb-pohang")
	public String pohang(Model model) {

		List<FootBallScheduleVO> fblist = fbService.selectPohang();
		List<FootBallScheduleVO> fbst = fbService.selectSt_Pohang();

		model.addAttribute("FB_POHANG", fblist);
		model.addAttribute("ST_POHANG", fbst);

		return null;
	}

	@RequestMapping(value = "/fb-seongnam")
	public String seongnam(Model model) {

		List<FootBallScheduleVO> fblist = fbService.selectSeongnam();
		List<FootBallScheduleVO> fbst = fbService.selectSt_Seongnam();

		model.addAttribute("FB_SEONGNAM", fblist);
		model.addAttribute("ST_SEONGNAM", fbst);

		return null;
	}

	@RequestMapping(value = "/fb-suwon_ss")
	public String suwon_ss(Model model) {

		List<FootBallScheduleVO> fblist = fbService.selectSuwon_ss();
		List<FootBallScheduleVO> fbst = fbService.selectSt_Suwon_ss();

		model.addAttribute("FB_SUWON_SS", fblist);
		model.addAttribute("ST_SUWON_SS", fbst);

		return null;
	}

	@RequestMapping(value = "/fb-suwon")
	public String suwon(Model model) {

		List<FootBallScheduleVO> fblist = fbService.selectSuwon();
		List<FootBallScheduleVO> fbst = fbService.selectSt_Suwon();

		model.addAttribute("FB_SUWON", fblist);
		model.addAttribute("ST_SUWON", fbst);

		return null;
	}

	@RequestMapping(value = "/fb-ulsan")
	public String ulsan(Model model) {

		List<FootBallScheduleVO> fblist = fbService.selectUlsan();
		List<FootBallScheduleVO> fbst = fbService.selectSt_Ulsan();

		model.addAttribute("FB_ULSAN", fblist);
		model.addAttribute("ST_ULSAN", fbst);

		return null;
	}

}
