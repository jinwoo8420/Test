package com.seasoning.app.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.seasoning.app.model.AroundVO;
import com.seasoning.app.model.FootBallScheduleVO;
import com.seasoning.app.model.LocationVO;
import com.seasoning.app.service.AroundService;
import com.seasoning.app.service.FoodLocationService;
import com.seasoning.app.service.FootBallService;
import com.seasoning.app.service.LodgmentLocationService;
import com.seasoning.app.service.TourLocationService;

@RequestMapping(value = "/football")
@Controller
public class FootBallController {

	@Autowired
	private FootBallService fbService;
	@Autowired
	private AroundService aroundService;
	@Autowired
	private TourLocationService tourService;
	@Autowired
	private FoodLocationService foodService;
	@Autowired
	private LodgmentLocationService lodgmentService;

	@RequestMapping(value = { "/", "" })
	public String home() {
		return "football/fb-seoul";
	}

	@RequestMapping(value = "/fb-seoul")
	public String seoul(Model model,String mapx, String mapy) throws IOException {

		List<FootBallScheduleVO> fblist = fbService.selectSeoul();
		List<FootBallScheduleVO> fbst = fbService.selectSt_Seoul();
//		List<AroundVO> AroundList = aroundService.getAround("126.897243", "37.56823");
		// 서울
		List<LocationVO> SeoulTourList = tourService.get_TourLocation("1");
		List<LocationVO> SeoulFoodList = foodService.get_FoodLocation("1");
		List<LocationVO> SeoulLodgmentList = lodgmentService.get_LodgmentLocation("1");
		
		List<LocationVO> DeaguTourList = tourService.get_TourLocation("4");
		List<LocationVO> DeaguFoodList = foodService.get_FoodLocation("4");
		List<LocationVO> DeaguLodgmentList = lodgmentService.get_LodgmentLocation("4");
		

		model.addAttribute("FB_SEOUL", fblist);
		model.addAttribute("ST_SEOUL", fbst);
		
//		model.addAttribute("SEOULaround",AroundList);
		//서울
		model.addAttribute("SEOULtour",SeoulTourList);
		model.addAttribute("SEOULfood",SeoulFoodList);
		model.addAttribute("SEOULlodgment",SeoulLodgmentList);
		
		model.addAttribute("DAEGUtour",DeaguTourList);
		model.addAttribute("DAEGUfood",DeaguFoodList);
		model.addAttribute("DAEGUlodgment",DeaguLodgmentList);
		
		return null;
	}

	@RequestMapping(value = "/fb-daegu")
	public String daegu(Model model) throws IOException {

		List<FootBallScheduleVO> fblist = fbService.selectDaegu();
		List<FootBallScheduleVO> fbst = fbService.selectSt_Daegu();
		List<AroundVO> AroundList = aroundService.getAround("128.588231", "35.881253");

		//대구
		List<LocationVO> DeaguTourList = tourService.get_TourLocation("4");
		List<LocationVO> DeaguFoodList = foodService.get_FoodLocation("4");
		List<LocationVO> DeaguLodgmentList = lodgmentService.get_LodgmentLocation("4");
		
		model.addAttribute("FB_DAEGU", fblist);
		model.addAttribute("ST_DAEGU", fbst);
		
		model.addAttribute("DEAGUAROUND",AroundList);
		
		//대구
		model.addAttribute("SEOULtour",DeaguTourList);
		model.addAttribute("SEOULfood",DeaguFoodList);
		model.addAttribute("SEOULlodgment",DeaguLodgmentList);

		return null;
	}

	@RequestMapping(value = "/fb-gangwon1")
	public String gangwon1(Model model)throws IOException {

		List<FootBallScheduleVO> fblist = fbService.selectGangwon1();
		List<FootBallScheduleVO> fbst = fbService.selectSt_Gangwon1();
		List<AroundVO> AroundList = aroundService.getAround("127.690945","37.855952");

		model.addAttribute("FB_GANGWON1", fblist);
		model.addAttribute("ST_GANGWON1", fbst);
		
		model.addAttribute("GANGWON1ROUND",AroundList);

		return null;
	}

	@RequestMapping(value = "/fb-gangwon2")
	public String gangwon2(Model model) throws IOException {

		List<FootBallScheduleVO> fblist = fbService.selectGangwon2();
		List<FootBallScheduleVO> fbst = fbService.selectSt_Gangwon2();
		List<AroundVO> AroundList = aroundService.getAround("128.897503","37.773561");

		model.addAttribute("FB_GANGWON2", fblist);
		model.addAttribute("ST_GANGWON2", fbst);
		
		model.addAttribute("GANGWON2ROUND",AroundList);

		return null;
	}

	@RequestMapping(value = "/fb-gimcheon")
	public String gimcheon(Model model) throws IOException {

		List<FootBallScheduleVO> fblist = fbService.selectGimcheon();
		List<FootBallScheduleVO> fbst = fbService.selectSt_Gimcheon();
		List<AroundVO> AroundList = aroundService.getAround("128.086509","36.139666");

		model.addAttribute("FB_GIMCHEON", fblist);
		model.addAttribute("ST_GIMCHEON", fbst);
		
		model.addAttribute("GIMCHEONAROUND",AroundList);

		return null;
	}

	@RequestMapping(value = "/fb-incheon")
	public String incheon(Model model) throws IOException {

		List<FootBallScheduleVO> fblist = fbService.selectIncheon();
		List<FootBallScheduleVO> fbst = fbService.selectSt_Incheon();
		List<AroundVO> AroundList = aroundService.getAround("126.643035","37.466131");

		model.addAttribute("FB_INCHEON", fblist);
		model.addAttribute("ST_INCHEON", fbst);
		
		model.addAttribute("INCHEONAROUND",AroundList);
		return null;
	}

	@RequestMapping(value = "/fb-jeju")
	public String jeju(Model model) throws IOException {

		List<FootBallScheduleVO> fblist = fbService.selectJeju();
		List<FootBallScheduleVO> fbst = fbService.selectSt_Jeju();
		List<AroundVO> AroundList = aroundService.getAround("126.509361","33.246212");

		model.addAttribute("FB_JEJU", fblist);
		model.addAttribute("ST_JEJU", fbst);
		
		model.addAttribute("JEJUAROUND",AroundList);

		return null;
	}

	@RequestMapping(value = "/fb-jeonbuk")
	public String jeonbuk(Model model) throws IOException {

		List<FootBallScheduleVO> fblist = fbService.selectJeonbuk();
		List<FootBallScheduleVO> fbst = fbService.selectSt_Jeonbuk();
		List<AroundVO> AroundList = aroundService.getAround("127.06448","35.868071");

		model.addAttribute("FB_JEONBUK", fblist);
		model.addAttribute("ST_JEONBUK", fbst);
		
		model.addAttribute("JEONBUKAROUND",AroundList);
		
		return null;
	}

	@RequestMapping(value = "/fb-pohang")
	public String pohang(Model model) throws IOException {

		List<FootBallScheduleVO> fblist = fbService.selectPohang();
		List<FootBallScheduleVO> fbst = fbService.selectSt_Pohang();
		List<AroundVO> AroundList = aroundService.getAround("129.384412","35.997745");
		
		model.addAttribute("FB_POHANG", fblist);
		model.addAttribute("ST_POHANG", fbst);
		

		model.addAttribute("POHANGAROUND",AroundList);
		return null;
	}

	@RequestMapping(value = "/fb-seongnam")
	public String seongnam(Model model) throws IOException {

		List<FootBallScheduleVO> fblist = fbService.selectSeongnam();
		List<FootBallScheduleVO> fbst = fbService.selectSt_Seongnam();
		List<AroundVO> AroundList = aroundService.getAround("127.121273","37.410166");

		model.addAttribute("FB_SEONGNAM", fblist);
		model.addAttribute("ST_SEONGNAM", fbst);
		
		model.addAttribute("SEONGNAMAROUND",AroundList);

		return null;
	}

	@RequestMapping(value = "/fb-suwon_ss")
	public String suwon_ss(Model model) throws IOException {

		List<FootBallScheduleVO> fblist = fbService.selectSuwon_ss();
		List<FootBallScheduleVO> fbst = fbService.selectSt_Suwon_ss();
		List<AroundVO> AroundList = aroundService.getAround("127.036855","37.286421");

		model.addAttribute("FB_SUWON_SS", fblist);
		model.addAttribute("ST_SUWON_SS", fbst);
		
		model.addAttribute("SUWONssAROUND",AroundList);

		return null;
	}

	@RequestMapping(value = "/fb-suwon")
	public String suwon(Model model) throws IOException {

		
		List<FootBallScheduleVO> fblist = fbService.selectSuwon();
		List<FootBallScheduleVO> fbst = fbService.selectSt_Suwon();
		List<AroundVO> AroundList = aroundService.getAround("127.011315","37.297746");

		model.addAttribute("FB_SUWON", fblist);
		model.addAttribute("ST_SUWON", fbst);
		
		model.addAttribute("SUWONAROUND",AroundList);

		return null;
	}

	@RequestMapping(value = "/fb-ulsan")
	public String ulsan(Model model) throws IOException {

		List<FootBallScheduleVO> fblist = fbService.selectUlsan();
		List<FootBallScheduleVO> fbst = fbService.selectSt_Ulsan();
		List<AroundVO> AroundList = aroundService.getAround("129.259512","35.535328");

		model.addAttribute("FB_ULSAN", fblist);
		model.addAttribute("ST_ULSAN", fbst);
		
		model.addAttribute("ULSANAROUND",AroundList);
		
		return null;
	}

}
