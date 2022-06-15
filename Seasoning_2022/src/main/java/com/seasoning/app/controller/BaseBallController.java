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
		model.addAttribute("LAYOUT", "DUSAN_IMG");

		return null;
	}
	
	@RequestMapping(value = "/bb-lg")
	public String lg(Model model) {
		
		List<BaseBallScheduleVO> bblist = bbService.selectLg();
		List<BaseBallScheduleVO> bbst = bbService.selectSt_Lg();
		
		model.addAttribute("BB_LG", bblist);
		model.addAttribute("ST_LG", bbst);
		model.addAttribute("LAYOUT", "LG_IMG");
		
		return null;
	}
	
	@RequestMapping(value = "/bb-kia")
	public String kia(Model model) {

		List<BaseBallScheduleVO> bblist = bbService.selectKia();
		List<BaseBallScheduleVO> bbst = bbService.selectSt_Kia();

		model.addAttribute("BB_KIA", bblist);
		model.addAttribute("ST_KIA", bbst);
		model.addAttribute("LAYOUT", "KIA_IMG");

		return null;
	}

	@RequestMapping(value = "/bb-ssg")
	public String ssg(Model model) {
		
		List<BaseBallScheduleVO> bblist = bbService.selectSsg();
		List<BaseBallScheduleVO> bbst = bbService.selectSt_Ssg();
		
		model.addAttribute("BB_SSG", bblist);
		model.addAttribute("ST_SSG", bbst);
		model.addAttribute("LAYOUT", "SSG_IMG");
		
		return null;
	}

	@RequestMapping(value = "/bb-kiwoom")
	public String kiwoom(Model model) {
		
		List<BaseBallScheduleVO> bblist = bbService.selectKiwoom();
		List<BaseBallScheduleVO> bbst = bbService.selectSt_Kiwoom();
		
		model.addAttribute("BB_KIWOOM", bblist);
		model.addAttribute("ST_KIWOOM", bbst);
		model.addAttribute("LAYOUT", "KIWOOM_IMG");
		
		return null;
	}

	@RequestMapping(value = "/bb-kt")
	public String kt(Model model) {
		
		List<BaseBallScheduleVO> bblist = bbService.selectKt();
		List<BaseBallScheduleVO> bbst = bbService.selectSt_Kt();
		
		model.addAttribute("BB_KT", bblist);
		model.addAttribute("ST_KT", bbst);
		model.addAttribute("LAYOUT", "KT_IMG");
		
		return null;
	}

	@RequestMapping(value = "/bb-hanwha")
	public String hanwha(Model model) {
		
		List<BaseBallScheduleVO> bblist = bbService.selectHanwha();
		List<BaseBallScheduleVO> bbst = bbService.selectSt_Hanwha();
		
		model.addAttribute("BB_HANWHA", bblist);
		model.addAttribute("ST_HANWHA", bbst);
		model.addAttribute("LAYOUT", "HANWHA_IMG");
		
		return null;
	}

	@RequestMapping(value = "/bb-samsung")
	public String samsung(Model model) {
		
		List<BaseBallScheduleVO> bblist = bbService.selectSamsung();
		List<BaseBallScheduleVO> bbst = bbService.selectSt_Samsung();
		
		model.addAttribute("BB_SAMSUNG", bblist);
		model.addAttribute("ST_SAMSUNG", bbst);
		model.addAttribute("LAYOUT", "SAMSUNG_IMG");
		
		return null;
	}

	@RequestMapping(value = "/bb-lotte")
	public String lotte(Model model) {
		
		List<BaseBallScheduleVO> bblist = bbService.selectLotte();
		List<BaseBallScheduleVO> bbst = bbService.selectSt_Lotte();
		
		model.addAttribute("BB_LOTTE", bblist);
		model.addAttribute("ST_LOTTE", bbst);
		model.addAttribute("LAYOUT", "LOTTE_IMG");
		
		return null;
	}

	@RequestMapping(value = "/bb-nc")
	public String nc(Model model) {
		
		List<BaseBallScheduleVO> bblist = bbService.selectNc();
		List<BaseBallScheduleVO> bbst = bbService.selectSt_Nc();
		
		model.addAttribute("BB_NC", bblist);
		model.addAttribute("ST_NC", bbst);
		model.addAttribute("LAYOUT", "NC_IMG");
		
		return null;
	}

}
