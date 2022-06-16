package com.seasoning.app.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
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

//	@RequestMapping(value = { "/", "" })
//	public String home() {
//		return "football/fb-seoul";
//	}

	@RequestMapping(value = "/get/{tour_location}/{food_location}/{lodgment_location}")
	public String seoul(
			@PathVariable("tour_location") String tour,
			@PathVariable("food_location") String food,
			@PathVariable("lodgment_location") String lodgment, 
			Model model) throws IOException {
		
		List<LocationVO> tourList = tourService.get_TourLocation(tour);
		List<LocationVO> foodList = foodService.get_FoodLocation(food);
		List<LocationVO> lodgmentList = lodgmentService.get_LodgmentLocation(lodgment);
//		
		model.addAttribute("TOURS",tourList);
		model.addAttribute("FOODS",foodList);
		model.addAttribute("LODGMENTS",lodgmentList);
		return "/popular/popular";
	}
		
		// TODO 서울

	
	
	@RequestMapping(value = "/fb-seoul")
	public String seoul(Model model,String mapx, String mapy) throws IOException {

		List<FootBallScheduleVO> fblist = fbService.selectSeoul();
		List<FootBallScheduleVO> fbst = fbService.selectSt_Seoul();
		List<AroundVO> AroundList = aroundService.getAround("126.897243", "37.56823");		

		model.addAttribute("FB_SEOUL", fblist);
		model.addAttribute("ST_SEOUL", fbst);
		
		model.addAttribute("SEOULaround",AroundList);
		

		return null;
	}

	@RequestMapping(value = "/fb-daegu")
	public String daegu(Model model) throws IOException {

		List<FootBallScheduleVO> fblist = fbService.selectDaegu();
		List<FootBallScheduleVO> fbst = fbService.selectSt_Daegu();
		List<AroundVO> AroundList = aroundService.getAround("128.588231", "35.881253");
		
		model.addAttribute("FB_DAEGU", fblist);
		model.addAttribute("ST_DAEGU", fbst);
		
		model.addAttribute("DEAGUAROUND",AroundList);
		
		// TODO 서울
				List<LocationVO> SeoulTourList = tourService.get_TourLocation("1");
				List<LocationVO> SeoulFoodList = foodService.get_FoodLocation("1");
				List<LocationVO> SeoulLodgmentList = lodgmentService.get_LodgmentLocation("1");
				
				model.addAttribute("SEOULtour",SeoulTourList);
				model.addAttribute("SEOULfood",SeoulFoodList);
				model.addAttribute("SEOULlodgment",SeoulLodgmentList);
				
				// TODO 인천
				List<LocationVO> IncheonTourList = tourService.get_TourLocation("2");
				List<LocationVO> IncheonFoodList = foodService.get_FoodLocation("2");
				List<LocationVO> IncheonLodgmentList = lodgmentService.get_LodgmentLocation("2");
				
				model.addAttribute("INCHEONtour",IncheonTourList);
				model.addAttribute("INCHEONfood",IncheonFoodList);
				model.addAttribute("INCHEONlodgment",IncheonLodgmentList);
				
				// TODO 대전
				List<LocationVO> DaejeonTourList = tourService.get_TourLocation("3");
				List<LocationVO> DaejeonFoodList = foodService.get_FoodLocation("3");
				List<LocationVO> DaejeonLodgmentList = lodgmentService.get_LodgmentLocation("3");
				
				model.addAttribute("DAEJEONtour",DaejeonTourList);
				model.addAttribute("DAEJEONfood",DaejeonFoodList);
				model.addAttribute("DAEJEONlodgment",DaejeonLodgmentList);
				
				// TODO 대구
				List<LocationVO> DaeguTourList = tourService.get_TourLocation("4");
				List<LocationVO> DaeguFoodList = foodService.get_FoodLocation("4");
				List<LocationVO> DaeguLodgmentList = lodgmentService.get_LodgmentLocation("4");
				
				model.addAttribute("DAEGUtour",DaeguTourList);
				model.addAttribute("DAEGUfood",DaeguFoodList);
				model.addAttribute("DAEGUlodgment",DaeguLodgmentList);
				
				// TODO 광주
				List<LocationVO> GwangjuTourList = tourService.get_TourLocation("5");
				List<LocationVO> GwangjuFoodList = foodService.get_FoodLocation("5");
				List<LocationVO> GwangjuLodgmentList = lodgmentService.get_LodgmentLocation("5");
				
				model.addAttribute("GWANGJUtour",GwangjuTourList);
				model.addAttribute("GWANGJUfood",GwangjuFoodList);
				model.addAttribute("GWANGJUlodgment",GwangjuLodgmentList);
				
				// TODO 부산
				List<LocationVO> BusanTourList = tourService.get_TourLocation("6");
				List<LocationVO> BusanFoodList = foodService.get_FoodLocation("6");
				List<LocationVO> BusanLodgmentList = lodgmentService.get_LodgmentLocation("6");
				
				model.addAttribute("BUSANtour",BusanTourList);
				model.addAttribute("BUSANfood",BusanFoodList);
				model.addAttribute("BUSANlodgment",BusanLodgmentList);
				
				// TODO 울산
				List<LocationVO> UlsanTourList = tourService.get_TourLocation("7");
				List<LocationVO> UlsanFoodList = foodService.get_FoodLocation("7");
				List<LocationVO> UlsanLodgmentList = lodgmentService.get_LodgmentLocation("7");
				
				model.addAttribute("ULSANtour",UlsanTourList);
				model.addAttribute("ULSANfood",UlsanFoodList);
				model.addAttribute("ULSANlodgment",UlsanLodgmentList);
				
				// TODO 세종
				List<LocationVO> SejongTourList = tourService.get_TourLocation("8");
				List<LocationVO> SejongFoodList = foodService.get_FoodLocation("8");
				List<LocationVO> SejongLodgmentList = lodgmentService.get_LodgmentLocation("8");
				
				model.addAttribute("SEJONGtour",SejongTourList);
				model.addAttribute("SEJONGfood",SejongFoodList);
				model.addAttribute("SEJONGlodgment",SejongLodgmentList);
				
				// TODO 경기
				List<LocationVO> GyeonggiTourList = tourService.get_TourLocation("31");
				List<LocationVO> GyeonggiFoodList = foodService.get_FoodLocation("31");
				List<LocationVO> GyeonggiLodgmentList = lodgmentService.get_LodgmentLocation("31");
				
				model.addAttribute("GYEONGGItour",GyeonggiTourList);
				model.addAttribute("GYEONGGIfood",GyeonggiFoodList);
				model.addAttribute("GYEONGGIlodgment",GyeonggiLodgmentList);
				
				// TODO 강원
				List<LocationVO> GangwonTourList = tourService.get_TourLocation("32");
				List<LocationVO> GangwonFoodList = foodService.get_FoodLocation("32");
				List<LocationVO> GangwonLodgmentList = lodgmentService.get_LodgmentLocation("32");
				
				model.addAttribute("GANGWONtour",GangwonTourList);
				model.addAttribute("GANGWONfood",GangwonFoodList);
				model.addAttribute("GANGWONlodgment",GangwonLodgmentList);
				
				// TODO 충북
				List<LocationVO> ChungbukTourList = tourService.get_TourLocation("33");
				List<LocationVO> ChungbukFoodList = foodService.get_FoodLocation("33");
				List<LocationVO> ChungbukLodgmentList = lodgmentService.get_LodgmentLocation("33");
				
				model.addAttribute("CHUNGBUKtour",ChungbukTourList);
				model.addAttribute("CHUNGBUKfood",ChungbukFoodList);
				model.addAttribute("CHUNGBUKlodgment",ChungbukLodgmentList);
				
				// TODO 충남
				List<LocationVO> ChungnamTourList = tourService.get_TourLocation("34");
				List<LocationVO> ChungnamFoodList = foodService.get_FoodLocation("34");
				List<LocationVO> ChungnamLodgmentList = lodgmentService.get_LodgmentLocation("34");
				
				model.addAttribute("CHUNGNAMtour",ChungnamTourList);
				model.addAttribute("CHUNGNAMfood",ChungnamFoodList);
				model.addAttribute("CHUNGNAMlodgment",ChungnamLodgmentList);
				
				// TODO 경북
				List<LocationVO> GyeongbukTourList = tourService.get_TourLocation("35");
				List<LocationVO> GyeongbukFoodList = foodService.get_FoodLocation("35");
				List<LocationVO> GyeongbukLodgmentList = lodgmentService.get_LodgmentLocation("35");
				
				model.addAttribute("GYEONGBUKtour",GyeongbukTourList);
				model.addAttribute("GYEONGBUKfood",GyeongbukFoodList);
				model.addAttribute("GYEONGBUKlodgment",GyeongbukLodgmentList);
				
				// TODO 경남
				List<LocationVO> GyeongnamTourList = tourService.get_TourLocation("36");
				List<LocationVO> GyeongnamFoodList = foodService.get_FoodLocation("36");
				List<LocationVO> GyeongnamLodgmentList = lodgmentService.get_LodgmentLocation("36");
				
				model.addAttribute("GYEONGNAMtour",GyeongnamTourList);
				model.addAttribute("GYEONGNAMfood",GyeongnamFoodList);
				model.addAttribute("GYEONGNAMlodgment",GyeongnamLodgmentList);
				
				// TODO 전북
				List<LocationVO> JeonbukTourList = tourService.get_TourLocation("37");
				List<LocationVO> JeonbukFoodList = foodService.get_FoodLocation("37");
				List<LocationVO> JeonbukLodgmentList = lodgmentService.get_LodgmentLocation("37");
				
				model.addAttribute("JEONBUKtour",JeonbukTourList);
				model.addAttribute("JEONBUKfood",JeonbukFoodList);
				model.addAttribute("JEONBUKlodgment",JeonbukLodgmentList);
				
				// TODO 전남
				List<LocationVO> JeonnamTourList = tourService.get_TourLocation("38");
				List<LocationVO> JeonnamFoodList = foodService.get_FoodLocation("38");
				List<LocationVO> JeonnamLodgmentList = lodgmentService.get_LodgmentLocation("38");
				
				model.addAttribute("JEONNAMtour",JeonnamTourList);
				model.addAttribute("JEONNAMfood",JeonnamFoodList);
				model.addAttribute("JEONNAMlodgment",JeonnamLodgmentList);
				
				// TODO 제주
				List<LocationVO> JejuTourList = tourService.get_TourLocation("39");
				List<LocationVO> JejuFoodList = foodService.get_FoodLocation("39");
				List<LocationVO> JejuLodgmentList = lodgmentService.get_LodgmentLocation("39");
				
				model.addAttribute("JEJUtour",JejuTourList);
				model.addAttribute("JEJUfood",JejuFoodList);
				model.addAttribute("JEJUlodgment",JejuLodgmentList);

		
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
		
		// TODO 서울
				List<LocationVO> SeoulTourList = tourService.get_TourLocation("1");
				List<LocationVO> SeoulFoodList = foodService.get_FoodLocation("1");
				List<LocationVO> SeoulLodgmentList = lodgmentService.get_LodgmentLocation("1");
				
				model.addAttribute("SEOULtour",SeoulTourList);
				model.addAttribute("SEOULfood",SeoulFoodList);
				model.addAttribute("SEOULlodgment",SeoulLodgmentList);
				
				// TODO 인천
				List<LocationVO> IncheonTourList = tourService.get_TourLocation("2");
				List<LocationVO> IncheonFoodList = foodService.get_FoodLocation("2");
				List<LocationVO> IncheonLodgmentList = lodgmentService.get_LodgmentLocation("2");
				
				model.addAttribute("INCHEONtour",IncheonTourList);
				model.addAttribute("INCHEONfood",IncheonFoodList);
				model.addAttribute("INCHEONlodgment",IncheonLodgmentList);
				
				// TODO 대전
				List<LocationVO> DaejeonTourList = tourService.get_TourLocation("3");
				List<LocationVO> DaejeonFoodList = foodService.get_FoodLocation("3");
				List<LocationVO> DaejeonLodgmentList = lodgmentService.get_LodgmentLocation("3");
				
				model.addAttribute("DAEJEONtour",DaejeonTourList);
				model.addAttribute("DAEJEONfood",DaejeonFoodList);
				model.addAttribute("DAEJEONlodgment",DaejeonLodgmentList);
				
				// TODO 대구
				List<LocationVO> DaeguTourList = tourService.get_TourLocation("4");
				List<LocationVO> DaeguFoodList = foodService.get_FoodLocation("4");
				List<LocationVO> DaeguLodgmentList = lodgmentService.get_LodgmentLocation("4");
				
				model.addAttribute("DAEGUtour",DaeguTourList);
				model.addAttribute("DAEGUfood",DaeguFoodList);
				model.addAttribute("DAEGUlodgment",DaeguLodgmentList);
				
				// TODO 광주
				List<LocationVO> GwangjuTourList = tourService.get_TourLocation("5");
				List<LocationVO> GwangjuFoodList = foodService.get_FoodLocation("5");
				List<LocationVO> GwangjuLodgmentList = lodgmentService.get_LodgmentLocation("5");
				
				model.addAttribute("GWANGJUtour",GwangjuTourList);
				model.addAttribute("GWANGJUfood",GwangjuFoodList);
				model.addAttribute("GWANGJUlodgment",GwangjuLodgmentList);
				
				// TODO 부산
				List<LocationVO> BusanTourList = tourService.get_TourLocation("6");
				List<LocationVO> BusanFoodList = foodService.get_FoodLocation("6");
				List<LocationVO> BusanLodgmentList = lodgmentService.get_LodgmentLocation("6");
				
				model.addAttribute("BUSANtour",BusanTourList);
				model.addAttribute("BUSANfood",BusanFoodList);
				model.addAttribute("BUSANlodgment",BusanLodgmentList);
				
				// TODO 울산
				List<LocationVO> UlsanTourList = tourService.get_TourLocation("7");
				List<LocationVO> UlsanFoodList = foodService.get_FoodLocation("7");
				List<LocationVO> UlsanLodgmentList = lodgmentService.get_LodgmentLocation("7");
				
				model.addAttribute("ULSANtour",UlsanTourList);
				model.addAttribute("ULSANfood",UlsanFoodList);
				model.addAttribute("ULSANlodgment",UlsanLodgmentList);
				
				// TODO 세종
				List<LocationVO> SejongTourList = tourService.get_TourLocation("8");
				List<LocationVO> SejongFoodList = foodService.get_FoodLocation("8");
				List<LocationVO> SejongLodgmentList = lodgmentService.get_LodgmentLocation("8");
				
				model.addAttribute("SEJONGtour",SejongTourList);
				model.addAttribute("SEJONGfood",SejongFoodList);
				model.addAttribute("SEJONGlodgment",SejongLodgmentList);
				
				// TODO 경기
				List<LocationVO> GyeonggiTourList = tourService.get_TourLocation("31");
				List<LocationVO> GyeonggiFoodList = foodService.get_FoodLocation("31");
				List<LocationVO> GyeonggiLodgmentList = lodgmentService.get_LodgmentLocation("31");
				
				model.addAttribute("GYEONGGItour",GyeonggiTourList);
				model.addAttribute("GYEONGGIfood",GyeonggiFoodList);
				model.addAttribute("GYEONGGIlodgment",GyeonggiLodgmentList);
				
				// TODO 강원
				List<LocationVO> GangwonTourList = tourService.get_TourLocation("32");
				List<LocationVO> GangwonFoodList = foodService.get_FoodLocation("32");
				List<LocationVO> GangwonLodgmentList = lodgmentService.get_LodgmentLocation("32");
				
				model.addAttribute("GANGWONtour",GangwonTourList);
				model.addAttribute("GANGWONfood",GangwonFoodList);
				model.addAttribute("GANGWONlodgment",GangwonLodgmentList);
				
				// TODO 충북
				List<LocationVO> ChungbukTourList = tourService.get_TourLocation("33");
				List<LocationVO> ChungbukFoodList = foodService.get_FoodLocation("33");
				List<LocationVO> ChungbukLodgmentList = lodgmentService.get_LodgmentLocation("33");
				
				model.addAttribute("CHUNGBUKtour",ChungbukTourList);
				model.addAttribute("CHUNGBUKfood",ChungbukFoodList);
				model.addAttribute("CHUNGBUKlodgment",ChungbukLodgmentList);
				
				// TODO 충남
				List<LocationVO> ChungnamTourList = tourService.get_TourLocation("34");
				List<LocationVO> ChungnamFoodList = foodService.get_FoodLocation("34");
				List<LocationVO> ChungnamLodgmentList = lodgmentService.get_LodgmentLocation("34");
				
				model.addAttribute("CHUNGNAMtour",ChungnamTourList);
				model.addAttribute("CHUNGNAMfood",ChungnamFoodList);
				model.addAttribute("CHUNGNAMlodgment",ChungnamLodgmentList);
				
				// TODO 경북
				List<LocationVO> GyeongbukTourList = tourService.get_TourLocation("35");
				List<LocationVO> GyeongbukFoodList = foodService.get_FoodLocation("35");
				List<LocationVO> GyeongbukLodgmentList = lodgmentService.get_LodgmentLocation("35");
				
				model.addAttribute("GYEONGBUKtour",GyeongbukTourList);
				model.addAttribute("GYEONGBUKfood",GyeongbukFoodList);
				model.addAttribute("GYEONGBUKlodgment",GyeongbukLodgmentList);
				
				// TODO 경남
				List<LocationVO> GyeongnamTourList = tourService.get_TourLocation("36");
				List<LocationVO> GyeongnamFoodList = foodService.get_FoodLocation("36");
				List<LocationVO> GyeongnamLodgmentList = lodgmentService.get_LodgmentLocation("36");
				
				model.addAttribute("GYEONGNAMtour",GyeongnamTourList);
				model.addAttribute("GYEONGNAMfood",GyeongnamFoodList);
				model.addAttribute("GYEONGNAMlodgment",GyeongnamLodgmentList);
				
				// TODO 전북
				List<LocationVO> JeonbukTourList = tourService.get_TourLocation("37");
				List<LocationVO> JeonbukFoodList = foodService.get_FoodLocation("37");
				List<LocationVO> JeonbukLodgmentList = lodgmentService.get_LodgmentLocation("37");
				
				model.addAttribute("JEONBUKtour",JeonbukTourList);
				model.addAttribute("JEONBUKfood",JeonbukFoodList);
				model.addAttribute("JEONBUKlodgment",JeonbukLodgmentList);
				
				// TODO 전남
				List<LocationVO> JeonnamTourList = tourService.get_TourLocation("38");
				List<LocationVO> JeonnamFoodList = foodService.get_FoodLocation("38");
				List<LocationVO> JeonnamLodgmentList = lodgmentService.get_LodgmentLocation("38");
				
				model.addAttribute("JEONNAMtour",JeonnamTourList);
				model.addAttribute("JEONNAMfood",JeonnamFoodList);
				model.addAttribute("JEONNAMlodgment",JeonnamLodgmentList);
				
				// TODO 제주
				List<LocationVO> JejuTourList = tourService.get_TourLocation("39");
				List<LocationVO> JejuFoodList = foodService.get_FoodLocation("39");
				List<LocationVO> JejuLodgmentList = lodgmentService.get_LodgmentLocation("39");
				
				model.addAttribute("JEJUtour",JejuTourList);
				model.addAttribute("JEJUfood",JejuFoodList);
				model.addAttribute("JEJUlodgment",JejuLodgmentList);


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
		
		// TODO 서울
				List<LocationVO> SeoulTourList = tourService.get_TourLocation("1");
				List<LocationVO> SeoulFoodList = foodService.get_FoodLocation("1");
				List<LocationVO> SeoulLodgmentList = lodgmentService.get_LodgmentLocation("1");
				
				model.addAttribute("SEOULtour",SeoulTourList);
				model.addAttribute("SEOULfood",SeoulFoodList);
				model.addAttribute("SEOULlodgment",SeoulLodgmentList);
				
				// TODO 인천
				List<LocationVO> IncheonTourList = tourService.get_TourLocation("2");
				List<LocationVO> IncheonFoodList = foodService.get_FoodLocation("2");
				List<LocationVO> IncheonLodgmentList = lodgmentService.get_LodgmentLocation("2");
				
				model.addAttribute("INCHEONtour",IncheonTourList);
				model.addAttribute("INCHEONfood",IncheonFoodList);
				model.addAttribute("INCHEONlodgment",IncheonLodgmentList);
				
				// TODO 대전
				List<LocationVO> DaejeonTourList = tourService.get_TourLocation("3");
				List<LocationVO> DaejeonFoodList = foodService.get_FoodLocation("3");
				List<LocationVO> DaejeonLodgmentList = lodgmentService.get_LodgmentLocation("3");
				
				model.addAttribute("DAEJEONtour",DaejeonTourList);
				model.addAttribute("DAEJEONfood",DaejeonFoodList);
				model.addAttribute("DAEJEONlodgment",DaejeonLodgmentList);
				
				// TODO 대구
				List<LocationVO> DaeguTourList = tourService.get_TourLocation("4");
				List<LocationVO> DaeguFoodList = foodService.get_FoodLocation("4");
				List<LocationVO> DaeguLodgmentList = lodgmentService.get_LodgmentLocation("4");
				
				model.addAttribute("DAEGUtour",DaeguTourList);
				model.addAttribute("DAEGUfood",DaeguFoodList);
				model.addAttribute("DAEGUlodgment",DaeguLodgmentList);
				
				// TODO 광주
				List<LocationVO> GwangjuTourList = tourService.get_TourLocation("5");
				List<LocationVO> GwangjuFoodList = foodService.get_FoodLocation("5");
				List<LocationVO> GwangjuLodgmentList = lodgmentService.get_LodgmentLocation("5");
				
				model.addAttribute("GWANGJUtour",GwangjuTourList);
				model.addAttribute("GWANGJUfood",GwangjuFoodList);
				model.addAttribute("GWANGJUlodgment",GwangjuLodgmentList);
				
				// TODO 부산
				List<LocationVO> BusanTourList = tourService.get_TourLocation("6");
				List<LocationVO> BusanFoodList = foodService.get_FoodLocation("6");
				List<LocationVO> BusanLodgmentList = lodgmentService.get_LodgmentLocation("6");
				
				model.addAttribute("BUSANtour",BusanTourList);
				model.addAttribute("BUSANfood",BusanFoodList);
				model.addAttribute("BUSANlodgment",BusanLodgmentList);
				
				// TODO 울산
				List<LocationVO> UlsanTourList = tourService.get_TourLocation("7");
				List<LocationVO> UlsanFoodList = foodService.get_FoodLocation("7");
				List<LocationVO> UlsanLodgmentList = lodgmentService.get_LodgmentLocation("7");
				
				model.addAttribute("ULSANtour",UlsanTourList);
				model.addAttribute("ULSANfood",UlsanFoodList);
				model.addAttribute("ULSANlodgment",UlsanLodgmentList);
				
				// TODO 세종
				List<LocationVO> SejongTourList = tourService.get_TourLocation("8");
				List<LocationVO> SejongFoodList = foodService.get_FoodLocation("8");
				List<LocationVO> SejongLodgmentList = lodgmentService.get_LodgmentLocation("8");
				
				model.addAttribute("SEJONGtour",SejongTourList);
				model.addAttribute("SEJONGfood",SejongFoodList);
				model.addAttribute("SEJONGlodgment",SejongLodgmentList);
				
				// TODO 경기
				List<LocationVO> GyeonggiTourList = tourService.get_TourLocation("31");
				List<LocationVO> GyeonggiFoodList = foodService.get_FoodLocation("31");
				List<LocationVO> GyeonggiLodgmentList = lodgmentService.get_LodgmentLocation("31");
				
				model.addAttribute("GYEONGGItour",GyeonggiTourList);
				model.addAttribute("GYEONGGIfood",GyeonggiFoodList);
				model.addAttribute("GYEONGGIlodgment",GyeonggiLodgmentList);
				
				// TODO 강원
				List<LocationVO> GangwonTourList = tourService.get_TourLocation("32");
				List<LocationVO> GangwonFoodList = foodService.get_FoodLocation("32");
				List<LocationVO> GangwonLodgmentList = lodgmentService.get_LodgmentLocation("32");
				
				model.addAttribute("GANGWONtour",GangwonTourList);
				model.addAttribute("GANGWONfood",GangwonFoodList);
				model.addAttribute("GANGWONlodgment",GangwonLodgmentList);
				
				// TODO 충북
				List<LocationVO> ChungbukTourList = tourService.get_TourLocation("33");
				List<LocationVO> ChungbukFoodList = foodService.get_FoodLocation("33");
				List<LocationVO> ChungbukLodgmentList = lodgmentService.get_LodgmentLocation("33");
				
				model.addAttribute("CHUNGBUKtour",ChungbukTourList);
				model.addAttribute("CHUNGBUKfood",ChungbukFoodList);
				model.addAttribute("CHUNGBUKlodgment",ChungbukLodgmentList);
				
				// TODO 충남
				List<LocationVO> ChungnamTourList = tourService.get_TourLocation("34");
				List<LocationVO> ChungnamFoodList = foodService.get_FoodLocation("34");
				List<LocationVO> ChungnamLodgmentList = lodgmentService.get_LodgmentLocation("34");
				
				model.addAttribute("CHUNGNAMtour",ChungnamTourList);
				model.addAttribute("CHUNGNAMfood",ChungnamFoodList);
				model.addAttribute("CHUNGNAMlodgment",ChungnamLodgmentList);
				
				// TODO 경북
				List<LocationVO> GyeongbukTourList = tourService.get_TourLocation("35");
				List<LocationVO> GyeongbukFoodList = foodService.get_FoodLocation("35");
				List<LocationVO> GyeongbukLodgmentList = lodgmentService.get_LodgmentLocation("35");
				
				model.addAttribute("GYEONGBUKtour",GyeongbukTourList);
				model.addAttribute("GYEONGBUKfood",GyeongbukFoodList);
				model.addAttribute("GYEONGBUKlodgment",GyeongbukLodgmentList);
				
				// TODO 경남
				List<LocationVO> GyeongnamTourList = tourService.get_TourLocation("36");
				List<LocationVO> GyeongnamFoodList = foodService.get_FoodLocation("36");
				List<LocationVO> GyeongnamLodgmentList = lodgmentService.get_LodgmentLocation("36");
				
				model.addAttribute("GYEONGNAMtour",GyeongnamTourList);
				model.addAttribute("GYEONGNAMfood",GyeongnamFoodList);
				model.addAttribute("GYEONGNAMlodgment",GyeongnamLodgmentList);
				
				// TODO 전북
				List<LocationVO> JeonbukTourList = tourService.get_TourLocation("37");
				List<LocationVO> JeonbukFoodList = foodService.get_FoodLocation("37");
				List<LocationVO> JeonbukLodgmentList = lodgmentService.get_LodgmentLocation("37");
				
				model.addAttribute("JEONBUKtour",JeonbukTourList);
				model.addAttribute("JEONBUKfood",JeonbukFoodList);
				model.addAttribute("JEONBUKlodgment",JeonbukLodgmentList);
				
				// TODO 전남
				List<LocationVO> JeonnamTourList = tourService.get_TourLocation("38");
				List<LocationVO> JeonnamFoodList = foodService.get_FoodLocation("38");
				List<LocationVO> JeonnamLodgmentList = lodgmentService.get_LodgmentLocation("38");
				
				model.addAttribute("JEONNAMtour",JeonnamTourList);
				model.addAttribute("JEONNAMfood",JeonnamFoodList);
				model.addAttribute("JEONNAMlodgment",JeonnamLodgmentList);
				
				// TODO 제주
				List<LocationVO> JejuTourList = tourService.get_TourLocation("39");
				List<LocationVO> JejuFoodList = foodService.get_FoodLocation("39");
				List<LocationVO> JejuLodgmentList = lodgmentService.get_LodgmentLocation("39");
				
				model.addAttribute("JEJUtour",JejuTourList);
				model.addAttribute("JEJUfood",JejuFoodList);
				model.addAttribute("JEJUlodgment",JejuLodgmentList);


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
		
		// TODO 서울
				List<LocationVO> SeoulTourList = tourService.get_TourLocation("1");
				List<LocationVO> SeoulFoodList = foodService.get_FoodLocation("1");
				List<LocationVO> SeoulLodgmentList = lodgmentService.get_LodgmentLocation("1");
				
				model.addAttribute("SEOULtour",SeoulTourList);
				model.addAttribute("SEOULfood",SeoulFoodList);
				model.addAttribute("SEOULlodgment",SeoulLodgmentList);
				
				// TODO 인천
				List<LocationVO> IncheonTourList = tourService.get_TourLocation("2");
				List<LocationVO> IncheonFoodList = foodService.get_FoodLocation("2");
				List<LocationVO> IncheonLodgmentList = lodgmentService.get_LodgmentLocation("2");
				
				model.addAttribute("INCHEONtour",IncheonTourList);
				model.addAttribute("INCHEONfood",IncheonFoodList);
				model.addAttribute("INCHEONlodgment",IncheonLodgmentList);
				
				// TODO 대전
				List<LocationVO> DaejeonTourList = tourService.get_TourLocation("3");
				List<LocationVO> DaejeonFoodList = foodService.get_FoodLocation("3");
				List<LocationVO> DaejeonLodgmentList = lodgmentService.get_LodgmentLocation("3");
				
				model.addAttribute("DAEJEONtour",DaejeonTourList);
				model.addAttribute("DAEJEONfood",DaejeonFoodList);
				model.addAttribute("DAEJEONlodgment",DaejeonLodgmentList);
				
				// TODO 대구
				List<LocationVO> DaeguTourList = tourService.get_TourLocation("4");
				List<LocationVO> DaeguFoodList = foodService.get_FoodLocation("4");
				List<LocationVO> DaeguLodgmentList = lodgmentService.get_LodgmentLocation("4");
				
				model.addAttribute("DAEGUtour",DaeguTourList);
				model.addAttribute("DAEGUfood",DaeguFoodList);
				model.addAttribute("DAEGUlodgment",DaeguLodgmentList);
				
				// TODO 광주
				List<LocationVO> GwangjuTourList = tourService.get_TourLocation("5");
				List<LocationVO> GwangjuFoodList = foodService.get_FoodLocation("5");
				List<LocationVO> GwangjuLodgmentList = lodgmentService.get_LodgmentLocation("5");
				
				model.addAttribute("GWANGJUtour",GwangjuTourList);
				model.addAttribute("GWANGJUfood",GwangjuFoodList);
				model.addAttribute("GWANGJUlodgment",GwangjuLodgmentList);
				
				// TODO 부산
				List<LocationVO> BusanTourList = tourService.get_TourLocation("6");
				List<LocationVO> BusanFoodList = foodService.get_FoodLocation("6");
				List<LocationVO> BusanLodgmentList = lodgmentService.get_LodgmentLocation("6");
				
				model.addAttribute("BUSANtour",BusanTourList);
				model.addAttribute("BUSANfood",BusanFoodList);
				model.addAttribute("BUSANlodgment",BusanLodgmentList);
				
				// TODO 울산
				List<LocationVO> UlsanTourList = tourService.get_TourLocation("7");
				List<LocationVO> UlsanFoodList = foodService.get_FoodLocation("7");
				List<LocationVO> UlsanLodgmentList = lodgmentService.get_LodgmentLocation("7");
				
				model.addAttribute("ULSANtour",UlsanTourList);
				model.addAttribute("ULSANfood",UlsanFoodList);
				model.addAttribute("ULSANlodgment",UlsanLodgmentList);
				
				// TODO 세종
				List<LocationVO> SejongTourList = tourService.get_TourLocation("8");
				List<LocationVO> SejongFoodList = foodService.get_FoodLocation("8");
				List<LocationVO> SejongLodgmentList = lodgmentService.get_LodgmentLocation("8");
				
				model.addAttribute("SEJONGtour",SejongTourList);
				model.addAttribute("SEJONGfood",SejongFoodList);
				model.addAttribute("SEJONGlodgment",SejongLodgmentList);
				
				// TODO 경기
				List<LocationVO> GyeonggiTourList = tourService.get_TourLocation("31");
				List<LocationVO> GyeonggiFoodList = foodService.get_FoodLocation("31");
				List<LocationVO> GyeonggiLodgmentList = lodgmentService.get_LodgmentLocation("31");
				
				model.addAttribute("GYEONGGItour",GyeonggiTourList);
				model.addAttribute("GYEONGGIfood",GyeonggiFoodList);
				model.addAttribute("GYEONGGIlodgment",GyeonggiLodgmentList);
				
				// TODO 강원
				List<LocationVO> GangwonTourList = tourService.get_TourLocation("32");
				List<LocationVO> GangwonFoodList = foodService.get_FoodLocation("32");
				List<LocationVO> GangwonLodgmentList = lodgmentService.get_LodgmentLocation("32");
				
				model.addAttribute("GANGWONtour",GangwonTourList);
				model.addAttribute("GANGWONfood",GangwonFoodList);
				model.addAttribute("GANGWONlodgment",GangwonLodgmentList);
				
				// TODO 충북
				List<LocationVO> ChungbukTourList = tourService.get_TourLocation("33");
				List<LocationVO> ChungbukFoodList = foodService.get_FoodLocation("33");
				List<LocationVO> ChungbukLodgmentList = lodgmentService.get_LodgmentLocation("33");
				
				model.addAttribute("CHUNGBUKtour",ChungbukTourList);
				model.addAttribute("CHUNGBUKfood",ChungbukFoodList);
				model.addAttribute("CHUNGBUKlodgment",ChungbukLodgmentList);
				
				// TODO 충남
				List<LocationVO> ChungnamTourList = tourService.get_TourLocation("34");
				List<LocationVO> ChungnamFoodList = foodService.get_FoodLocation("34");
				List<LocationVO> ChungnamLodgmentList = lodgmentService.get_LodgmentLocation("34");
				
				model.addAttribute("CHUNGNAMtour",ChungnamTourList);
				model.addAttribute("CHUNGNAMfood",ChungnamFoodList);
				model.addAttribute("CHUNGNAMlodgment",ChungnamLodgmentList);
				
				// TODO 경북
				List<LocationVO> GyeongbukTourList = tourService.get_TourLocation("35");
				List<LocationVO> GyeongbukFoodList = foodService.get_FoodLocation("35");
				List<LocationVO> GyeongbukLodgmentList = lodgmentService.get_LodgmentLocation("35");
				
				model.addAttribute("GYEONGBUKtour",GyeongbukTourList);
				model.addAttribute("GYEONGBUKfood",GyeongbukFoodList);
				model.addAttribute("GYEONGBUKlodgment",GyeongbukLodgmentList);
				
				// TODO 경남
				List<LocationVO> GyeongnamTourList = tourService.get_TourLocation("36");
				List<LocationVO> GyeongnamFoodList = foodService.get_FoodLocation("36");
				List<LocationVO> GyeongnamLodgmentList = lodgmentService.get_LodgmentLocation("36");
				
				model.addAttribute("GYEONGNAMtour",GyeongnamTourList);
				model.addAttribute("GYEONGNAMfood",GyeongnamFoodList);
				model.addAttribute("GYEONGNAMlodgment",GyeongnamLodgmentList);
				
				// TODO 전북
				List<LocationVO> JeonbukTourList = tourService.get_TourLocation("37");
				List<LocationVO> JeonbukFoodList = foodService.get_FoodLocation("37");
				List<LocationVO> JeonbukLodgmentList = lodgmentService.get_LodgmentLocation("37");
				
				model.addAttribute("JEONBUKtour",JeonbukTourList);
				model.addAttribute("JEONBUKfood",JeonbukFoodList);
				model.addAttribute("JEONBUKlodgment",JeonbukLodgmentList);
				
				// TODO 전남
				List<LocationVO> JeonnamTourList = tourService.get_TourLocation("38");
				List<LocationVO> JeonnamFoodList = foodService.get_FoodLocation("38");
				List<LocationVO> JeonnamLodgmentList = lodgmentService.get_LodgmentLocation("38");
				
				model.addAttribute("JEONNAMtour",JeonnamTourList);
				model.addAttribute("JEONNAMfood",JeonnamFoodList);
				model.addAttribute("JEONNAMlodgment",JeonnamLodgmentList);
				
				// TODO 제주
				List<LocationVO> JejuTourList = tourService.get_TourLocation("39");
				List<LocationVO> JejuFoodList = foodService.get_FoodLocation("39");
				List<LocationVO> JejuLodgmentList = lodgmentService.get_LodgmentLocation("39");
				
				model.addAttribute("JEJUtour",JejuTourList);
				model.addAttribute("JEJUfood",JejuFoodList);
				model.addAttribute("JEJUlodgment",JejuLodgmentList);


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
		
		// TODO 서울
				List<LocationVO> SeoulTourList = tourService.get_TourLocation("1");
				List<LocationVO> SeoulFoodList = foodService.get_FoodLocation("1");
				List<LocationVO> SeoulLodgmentList = lodgmentService.get_LodgmentLocation("1");
				
				model.addAttribute("SEOULtour",SeoulTourList);
				model.addAttribute("SEOULfood",SeoulFoodList);
				model.addAttribute("SEOULlodgment",SeoulLodgmentList);
				
				// TODO 인천
				List<LocationVO> IncheonTourList = tourService.get_TourLocation("2");
				List<LocationVO> IncheonFoodList = foodService.get_FoodLocation("2");
				List<LocationVO> IncheonLodgmentList = lodgmentService.get_LodgmentLocation("2");
				
				model.addAttribute("INCHEONtour",IncheonTourList);
				model.addAttribute("INCHEONfood",IncheonFoodList);
				model.addAttribute("INCHEONlodgment",IncheonLodgmentList);
				
				// TODO 대전
				List<LocationVO> DaejeonTourList = tourService.get_TourLocation("3");
				List<LocationVO> DaejeonFoodList = foodService.get_FoodLocation("3");
				List<LocationVO> DaejeonLodgmentList = lodgmentService.get_LodgmentLocation("3");
				
				model.addAttribute("DAEJEONtour",DaejeonTourList);
				model.addAttribute("DAEJEONfood",DaejeonFoodList);
				model.addAttribute("DAEJEONlodgment",DaejeonLodgmentList);
				
				// TODO 대구
				List<LocationVO> DaeguTourList = tourService.get_TourLocation("4");
				List<LocationVO> DaeguFoodList = foodService.get_FoodLocation("4");
				List<LocationVO> DaeguLodgmentList = lodgmentService.get_LodgmentLocation("4");
				
				model.addAttribute("DAEGUtour",DaeguTourList);
				model.addAttribute("DAEGUfood",DaeguFoodList);
				model.addAttribute("DAEGUlodgment",DaeguLodgmentList);
				
				// TODO 광주
				List<LocationVO> GwangjuTourList = tourService.get_TourLocation("5");
				List<LocationVO> GwangjuFoodList = foodService.get_FoodLocation("5");
				List<LocationVO> GwangjuLodgmentList = lodgmentService.get_LodgmentLocation("5");
				
				model.addAttribute("GWANGJUtour",GwangjuTourList);
				model.addAttribute("GWANGJUfood",GwangjuFoodList);
				model.addAttribute("GWANGJUlodgment",GwangjuLodgmentList);
				
				// TODO 부산
				List<LocationVO> BusanTourList = tourService.get_TourLocation("6");
				List<LocationVO> BusanFoodList = foodService.get_FoodLocation("6");
				List<LocationVO> BusanLodgmentList = lodgmentService.get_LodgmentLocation("6");
				
				model.addAttribute("BUSANtour",BusanTourList);
				model.addAttribute("BUSANfood",BusanFoodList);
				model.addAttribute("BUSANlodgment",BusanLodgmentList);
				
				// TODO 울산
				List<LocationVO> UlsanTourList = tourService.get_TourLocation("7");
				List<LocationVO> UlsanFoodList = foodService.get_FoodLocation("7");
				List<LocationVO> UlsanLodgmentList = lodgmentService.get_LodgmentLocation("7");
				
				model.addAttribute("ULSANtour",UlsanTourList);
				model.addAttribute("ULSANfood",UlsanFoodList);
				model.addAttribute("ULSANlodgment",UlsanLodgmentList);
				
				// TODO 세종
				List<LocationVO> SejongTourList = tourService.get_TourLocation("8");
				List<LocationVO> SejongFoodList = foodService.get_FoodLocation("8");
				List<LocationVO> SejongLodgmentList = lodgmentService.get_LodgmentLocation("8");
				
				model.addAttribute("SEJONGtour",SejongTourList);
				model.addAttribute("SEJONGfood",SejongFoodList);
				model.addAttribute("SEJONGlodgment",SejongLodgmentList);
				
				// TODO 경기
				List<LocationVO> GyeonggiTourList = tourService.get_TourLocation("31");
				List<LocationVO> GyeonggiFoodList = foodService.get_FoodLocation("31");
				List<LocationVO> GyeonggiLodgmentList = lodgmentService.get_LodgmentLocation("31");
				
				model.addAttribute("GYEONGGItour",GyeonggiTourList);
				model.addAttribute("GYEONGGIfood",GyeonggiFoodList);
				model.addAttribute("GYEONGGIlodgment",GyeonggiLodgmentList);
				
				// TODO 강원
				List<LocationVO> GangwonTourList = tourService.get_TourLocation("32");
				List<LocationVO> GangwonFoodList = foodService.get_FoodLocation("32");
				List<LocationVO> GangwonLodgmentList = lodgmentService.get_LodgmentLocation("32");
				
				model.addAttribute("GANGWONtour",GangwonTourList);
				model.addAttribute("GANGWONfood",GangwonFoodList);
				model.addAttribute("GANGWONlodgment",GangwonLodgmentList);
				
				// TODO 충북
				List<LocationVO> ChungbukTourList = tourService.get_TourLocation("33");
				List<LocationVO> ChungbukFoodList = foodService.get_FoodLocation("33");
				List<LocationVO> ChungbukLodgmentList = lodgmentService.get_LodgmentLocation("33");
				
				model.addAttribute("CHUNGBUKtour",ChungbukTourList);
				model.addAttribute("CHUNGBUKfood",ChungbukFoodList);
				model.addAttribute("CHUNGBUKlodgment",ChungbukLodgmentList);
				
				// TODO 충남
				List<LocationVO> ChungnamTourList = tourService.get_TourLocation("34");
				List<LocationVO> ChungnamFoodList = foodService.get_FoodLocation("34");
				List<LocationVO> ChungnamLodgmentList = lodgmentService.get_LodgmentLocation("34");
				
				model.addAttribute("CHUNGNAMtour",ChungnamTourList);
				model.addAttribute("CHUNGNAMfood",ChungnamFoodList);
				model.addAttribute("CHUNGNAMlodgment",ChungnamLodgmentList);
				
				// TODO 경북
				List<LocationVO> GyeongbukTourList = tourService.get_TourLocation("35");
				List<LocationVO> GyeongbukFoodList = foodService.get_FoodLocation("35");
				List<LocationVO> GyeongbukLodgmentList = lodgmentService.get_LodgmentLocation("35");
				
				model.addAttribute("GYEONGBUKtour",GyeongbukTourList);
				model.addAttribute("GYEONGBUKfood",GyeongbukFoodList);
				model.addAttribute("GYEONGBUKlodgment",GyeongbukLodgmentList);
				
				// TODO 경남
				List<LocationVO> GyeongnamTourList = tourService.get_TourLocation("36");
				List<LocationVO> GyeongnamFoodList = foodService.get_FoodLocation("36");
				List<LocationVO> GyeongnamLodgmentList = lodgmentService.get_LodgmentLocation("36");
				
				model.addAttribute("GYEONGNAMtour",GyeongnamTourList);
				model.addAttribute("GYEONGNAMfood",GyeongnamFoodList);
				model.addAttribute("GYEONGNAMlodgment",GyeongnamLodgmentList);
				
				// TODO 전북
				List<LocationVO> JeonbukTourList = tourService.get_TourLocation("37");
				List<LocationVO> JeonbukFoodList = foodService.get_FoodLocation("37");
				List<LocationVO> JeonbukLodgmentList = lodgmentService.get_LodgmentLocation("37");
				
				model.addAttribute("JEONBUKtour",JeonbukTourList);
				model.addAttribute("JEONBUKfood",JeonbukFoodList);
				model.addAttribute("JEONBUKlodgment",JeonbukLodgmentList);
				
				// TODO 전남
				List<LocationVO> JeonnamTourList = tourService.get_TourLocation("38");
				List<LocationVO> JeonnamFoodList = foodService.get_FoodLocation("38");
				List<LocationVO> JeonnamLodgmentList = lodgmentService.get_LodgmentLocation("38");
				
				model.addAttribute("JEONNAMtour",JeonnamTourList);
				model.addAttribute("JEONNAMfood",JeonnamFoodList);
				model.addAttribute("JEONNAMlodgment",JeonnamLodgmentList);
				
				// TODO 제주
				List<LocationVO> JejuTourList = tourService.get_TourLocation("39");
				List<LocationVO> JejuFoodList = foodService.get_FoodLocation("39");
				List<LocationVO> JejuLodgmentList = lodgmentService.get_LodgmentLocation("39");
				
				model.addAttribute("JEJUtour",JejuTourList);
				model.addAttribute("JEJUfood",JejuFoodList);
				model.addAttribute("JEJUlodgment",JejuLodgmentList);

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
		
		
		// TODO 서울
				List<LocationVO> SeoulTourList = tourService.get_TourLocation("1");
				List<LocationVO> SeoulFoodList = foodService.get_FoodLocation("1");
				List<LocationVO> SeoulLodgmentList = lodgmentService.get_LodgmentLocation("1");
				
				model.addAttribute("SEOULtour",SeoulTourList);
				model.addAttribute("SEOULfood",SeoulFoodList);
				model.addAttribute("SEOULlodgment",SeoulLodgmentList);
				
				// TODO 인천
				List<LocationVO> IncheonTourList = tourService.get_TourLocation("2");
				List<LocationVO> IncheonFoodList = foodService.get_FoodLocation("2");
				List<LocationVO> IncheonLodgmentList = lodgmentService.get_LodgmentLocation("2");
				
				model.addAttribute("INCHEONtour",IncheonTourList);
				model.addAttribute("INCHEONfood",IncheonFoodList);
				model.addAttribute("INCHEONlodgment",IncheonLodgmentList);
				
				// TODO 대전
				List<LocationVO> DaejeonTourList = tourService.get_TourLocation("3");
				List<LocationVO> DaejeonFoodList = foodService.get_FoodLocation("3");
				List<LocationVO> DaejeonLodgmentList = lodgmentService.get_LodgmentLocation("3");
				
				model.addAttribute("DAEJEONtour",DaejeonTourList);
				model.addAttribute("DAEJEONfood",DaejeonFoodList);
				model.addAttribute("DAEJEONlodgment",DaejeonLodgmentList);
				
				// TODO 대구
				List<LocationVO> DaeguTourList = tourService.get_TourLocation("4");
				List<LocationVO> DaeguFoodList = foodService.get_FoodLocation("4");
				List<LocationVO> DaeguLodgmentList = lodgmentService.get_LodgmentLocation("4");
				
				model.addAttribute("DAEGUtour",DaeguTourList);
				model.addAttribute("DAEGUfood",DaeguFoodList);
				model.addAttribute("DAEGUlodgment",DaeguLodgmentList);
				
				// TODO 광주
				List<LocationVO> GwangjuTourList = tourService.get_TourLocation("5");
				List<LocationVO> GwangjuFoodList = foodService.get_FoodLocation("5");
				List<LocationVO> GwangjuLodgmentList = lodgmentService.get_LodgmentLocation("5");
				
				model.addAttribute("GWANGJUtour",GwangjuTourList);
				model.addAttribute("GWANGJUfood",GwangjuFoodList);
				model.addAttribute("GWANGJUlodgment",GwangjuLodgmentList);
				
				// TODO 부산
				List<LocationVO> BusanTourList = tourService.get_TourLocation("6");
				List<LocationVO> BusanFoodList = foodService.get_FoodLocation("6");
				List<LocationVO> BusanLodgmentList = lodgmentService.get_LodgmentLocation("6");
				
				model.addAttribute("BUSANtour",BusanTourList);
				model.addAttribute("BUSANfood",BusanFoodList);
				model.addAttribute("BUSANlodgment",BusanLodgmentList);
				
				// TODO 울산
				List<LocationVO> UlsanTourList = tourService.get_TourLocation("7");
				List<LocationVO> UlsanFoodList = foodService.get_FoodLocation("7");
				List<LocationVO> UlsanLodgmentList = lodgmentService.get_LodgmentLocation("7");
				
				model.addAttribute("ULSANtour",UlsanTourList);
				model.addAttribute("ULSANfood",UlsanFoodList);
				model.addAttribute("ULSANlodgment",UlsanLodgmentList);
				
				// TODO 세종
				List<LocationVO> SejongTourList = tourService.get_TourLocation("8");
				List<LocationVO> SejongFoodList = foodService.get_FoodLocation("8");
				List<LocationVO> SejongLodgmentList = lodgmentService.get_LodgmentLocation("8");
				
				model.addAttribute("SEJONGtour",SejongTourList);
				model.addAttribute("SEJONGfood",SejongFoodList);
				model.addAttribute("SEJONGlodgment",SejongLodgmentList);
				
				// TODO 경기
				List<LocationVO> GyeonggiTourList = tourService.get_TourLocation("31");
				List<LocationVO> GyeonggiFoodList = foodService.get_FoodLocation("31");
				List<LocationVO> GyeonggiLodgmentList = lodgmentService.get_LodgmentLocation("31");
				
				model.addAttribute("GYEONGGItour",GyeonggiTourList);
				model.addAttribute("GYEONGGIfood",GyeonggiFoodList);
				model.addAttribute("GYEONGGIlodgment",GyeonggiLodgmentList);
				
				// TODO 강원
				List<LocationVO> GangwonTourList = tourService.get_TourLocation("32");
				List<LocationVO> GangwonFoodList = foodService.get_FoodLocation("32");
				List<LocationVO> GangwonLodgmentList = lodgmentService.get_LodgmentLocation("32");
				
				model.addAttribute("GANGWONtour",GangwonTourList);
				model.addAttribute("GANGWONfood",GangwonFoodList);
				model.addAttribute("GANGWONlodgment",GangwonLodgmentList);
				
				// TODO 충북
				List<LocationVO> ChungbukTourList = tourService.get_TourLocation("33");
				List<LocationVO> ChungbukFoodList = foodService.get_FoodLocation("33");
				List<LocationVO> ChungbukLodgmentList = lodgmentService.get_LodgmentLocation("33");
				
				model.addAttribute("CHUNGBUKtour",ChungbukTourList);
				model.addAttribute("CHUNGBUKfood",ChungbukFoodList);
				model.addAttribute("CHUNGBUKlodgment",ChungbukLodgmentList);
				
				// TODO 충남
				List<LocationVO> ChungnamTourList = tourService.get_TourLocation("34");
				List<LocationVO> ChungnamFoodList = foodService.get_FoodLocation("34");
				List<LocationVO> ChungnamLodgmentList = lodgmentService.get_LodgmentLocation("34");
				
				model.addAttribute("CHUNGNAMtour",ChungnamTourList);
				model.addAttribute("CHUNGNAMfood",ChungnamFoodList);
				model.addAttribute("CHUNGNAMlodgment",ChungnamLodgmentList);
				
				// TODO 경북
				List<LocationVO> GyeongbukTourList = tourService.get_TourLocation("35");
				List<LocationVO> GyeongbukFoodList = foodService.get_FoodLocation("35");
				List<LocationVO> GyeongbukLodgmentList = lodgmentService.get_LodgmentLocation("35");
				
				model.addAttribute("GYEONGBUKtour",GyeongbukTourList);
				model.addAttribute("GYEONGBUKfood",GyeongbukFoodList);
				model.addAttribute("GYEONGBUKlodgment",GyeongbukLodgmentList);
				
				// TODO 경남
				List<LocationVO> GyeongnamTourList = tourService.get_TourLocation("36");
				List<LocationVO> GyeongnamFoodList = foodService.get_FoodLocation("36");
				List<LocationVO> GyeongnamLodgmentList = lodgmentService.get_LodgmentLocation("36");
				
				model.addAttribute("GYEONGNAMtour",GyeongnamTourList);
				model.addAttribute("GYEONGNAMfood",GyeongnamFoodList);
				model.addAttribute("GYEONGNAMlodgment",GyeongnamLodgmentList);
				
				// TODO 전북
				List<LocationVO> JeonbukTourList = tourService.get_TourLocation("37");
				List<LocationVO> JeonbukFoodList = foodService.get_FoodLocation("37");
				List<LocationVO> JeonbukLodgmentList = lodgmentService.get_LodgmentLocation("37");
				
				model.addAttribute("JEONBUKtour",JeonbukTourList);
				model.addAttribute("JEONBUKfood",JeonbukFoodList);
				model.addAttribute("JEONBUKlodgment",JeonbukLodgmentList);
				
				// TODO 전남
				List<LocationVO> JeonnamTourList = tourService.get_TourLocation("38");
				List<LocationVO> JeonnamFoodList = foodService.get_FoodLocation("38");
				List<LocationVO> JeonnamLodgmentList = lodgmentService.get_LodgmentLocation("38");
				
				model.addAttribute("JEONNAMtour",JeonnamTourList);
				model.addAttribute("JEONNAMfood",JeonnamFoodList);
				model.addAttribute("JEONNAMlodgment",JeonnamLodgmentList);
				
				// TODO 제주
				List<LocationVO> JejuTourList = tourService.get_TourLocation("39");
				List<LocationVO> JejuFoodList = foodService.get_FoodLocation("39");
				List<LocationVO> JejuLodgmentList = lodgmentService.get_LodgmentLocation("39");
				
				model.addAttribute("JEJUtour",JejuTourList);
				model.addAttribute("JEJUfood",JejuFoodList);
				model.addAttribute("JEJUlodgment",JejuLodgmentList);


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
		
		// TODO 서울
				List<LocationVO> SeoulTourList = tourService.get_TourLocation("1");
				List<LocationVO> SeoulFoodList = foodService.get_FoodLocation("1");
				List<LocationVO> SeoulLodgmentList = lodgmentService.get_LodgmentLocation("1");
				
				model.addAttribute("SEOULtour",SeoulTourList);
				model.addAttribute("SEOULfood",SeoulFoodList);
				model.addAttribute("SEOULlodgment",SeoulLodgmentList);
				
				// TODO 인천
				List<LocationVO> IncheonTourList = tourService.get_TourLocation("2");
				List<LocationVO> IncheonFoodList = foodService.get_FoodLocation("2");
				List<LocationVO> IncheonLodgmentList = lodgmentService.get_LodgmentLocation("2");
				
				model.addAttribute("INCHEONtour",IncheonTourList);
				model.addAttribute("INCHEONfood",IncheonFoodList);
				model.addAttribute("INCHEONlodgment",IncheonLodgmentList);
				
				// TODO 대전
				List<LocationVO> DaejeonTourList = tourService.get_TourLocation("3");
				List<LocationVO> DaejeonFoodList = foodService.get_FoodLocation("3");
				List<LocationVO> DaejeonLodgmentList = lodgmentService.get_LodgmentLocation("3");
				
				model.addAttribute("DAEJEONtour",DaejeonTourList);
				model.addAttribute("DAEJEONfood",DaejeonFoodList);
				model.addAttribute("DAEJEONlodgment",DaejeonLodgmentList);
				
				// TODO 대구
				List<LocationVO> DaeguTourList = tourService.get_TourLocation("4");
				List<LocationVO> DaeguFoodList = foodService.get_FoodLocation("4");
				List<LocationVO> DaeguLodgmentList = lodgmentService.get_LodgmentLocation("4");
				
				model.addAttribute("DAEGUtour",DaeguTourList);
				model.addAttribute("DAEGUfood",DaeguFoodList);
				model.addAttribute("DAEGUlodgment",DaeguLodgmentList);
				
				// TODO 광주
				List<LocationVO> GwangjuTourList = tourService.get_TourLocation("5");
				List<LocationVO> GwangjuFoodList = foodService.get_FoodLocation("5");
				List<LocationVO> GwangjuLodgmentList = lodgmentService.get_LodgmentLocation("5");
				
				model.addAttribute("GWANGJUtour",GwangjuTourList);
				model.addAttribute("GWANGJUfood",GwangjuFoodList);
				model.addAttribute("GWANGJUlodgment",GwangjuLodgmentList);
				
				// TODO 부산
				List<LocationVO> BusanTourList = tourService.get_TourLocation("6");
				List<LocationVO> BusanFoodList = foodService.get_FoodLocation("6");
				List<LocationVO> BusanLodgmentList = lodgmentService.get_LodgmentLocation("6");
				
				model.addAttribute("BUSANtour",BusanTourList);
				model.addAttribute("BUSANfood",BusanFoodList);
				model.addAttribute("BUSANlodgment",BusanLodgmentList);
				
				// TODO 울산
				List<LocationVO> UlsanTourList = tourService.get_TourLocation("7");
				List<LocationVO> UlsanFoodList = foodService.get_FoodLocation("7");
				List<LocationVO> UlsanLodgmentList = lodgmentService.get_LodgmentLocation("7");
				
				model.addAttribute("ULSANtour",UlsanTourList);
				model.addAttribute("ULSANfood",UlsanFoodList);
				model.addAttribute("ULSANlodgment",UlsanLodgmentList);
				
				// TODO 세종
				List<LocationVO> SejongTourList = tourService.get_TourLocation("8");
				List<LocationVO> SejongFoodList = foodService.get_FoodLocation("8");
				List<LocationVO> SejongLodgmentList = lodgmentService.get_LodgmentLocation("8");
				
				model.addAttribute("SEJONGtour",SejongTourList);
				model.addAttribute("SEJONGfood",SejongFoodList);
				model.addAttribute("SEJONGlodgment",SejongLodgmentList);
				
				// TODO 경기
				List<LocationVO> GyeonggiTourList = tourService.get_TourLocation("31");
				List<LocationVO> GyeonggiFoodList = foodService.get_FoodLocation("31");
				List<LocationVO> GyeonggiLodgmentList = lodgmentService.get_LodgmentLocation("31");
				
				model.addAttribute("GYEONGGItour",GyeonggiTourList);
				model.addAttribute("GYEONGGIfood",GyeonggiFoodList);
				model.addAttribute("GYEONGGIlodgment",GyeonggiLodgmentList);
				
				// TODO 강원
				List<LocationVO> GangwonTourList = tourService.get_TourLocation("32");
				List<LocationVO> GangwonFoodList = foodService.get_FoodLocation("32");
				List<LocationVO> GangwonLodgmentList = lodgmentService.get_LodgmentLocation("32");
				
				model.addAttribute("GANGWONtour",GangwonTourList);
				model.addAttribute("GANGWONfood",GangwonFoodList);
				model.addAttribute("GANGWONlodgment",GangwonLodgmentList);
				
				// TODO 충북
				List<LocationVO> ChungbukTourList = tourService.get_TourLocation("33");
				List<LocationVO> ChungbukFoodList = foodService.get_FoodLocation("33");
				List<LocationVO> ChungbukLodgmentList = lodgmentService.get_LodgmentLocation("33");
				
				model.addAttribute("CHUNGBUKtour",ChungbukTourList);
				model.addAttribute("CHUNGBUKfood",ChungbukFoodList);
				model.addAttribute("CHUNGBUKlodgment",ChungbukLodgmentList);
				
				// TODO 충남
				List<LocationVO> ChungnamTourList = tourService.get_TourLocation("34");
				List<LocationVO> ChungnamFoodList = foodService.get_FoodLocation("34");
				List<LocationVO> ChungnamLodgmentList = lodgmentService.get_LodgmentLocation("34");
				
				model.addAttribute("CHUNGNAMtour",ChungnamTourList);
				model.addAttribute("CHUNGNAMfood",ChungnamFoodList);
				model.addAttribute("CHUNGNAMlodgment",ChungnamLodgmentList);
				
				// TODO 경북
				List<LocationVO> GyeongbukTourList = tourService.get_TourLocation("35");
				List<LocationVO> GyeongbukFoodList = foodService.get_FoodLocation("35");
				List<LocationVO> GyeongbukLodgmentList = lodgmentService.get_LodgmentLocation("35");
				
				model.addAttribute("GYEONGBUKtour",GyeongbukTourList);
				model.addAttribute("GYEONGBUKfood",GyeongbukFoodList);
				model.addAttribute("GYEONGBUKlodgment",GyeongbukLodgmentList);
				
				// TODO 경남
				List<LocationVO> GyeongnamTourList = tourService.get_TourLocation("36");
				List<LocationVO> GyeongnamFoodList = foodService.get_FoodLocation("36");
				List<LocationVO> GyeongnamLodgmentList = lodgmentService.get_LodgmentLocation("36");
				
				model.addAttribute("GYEONGNAMtour",GyeongnamTourList);
				model.addAttribute("GYEONGNAMfood",GyeongnamFoodList);
				model.addAttribute("GYEONGNAMlodgment",GyeongnamLodgmentList);
				
				// TODO 전북
				List<LocationVO> JeonbukTourList = tourService.get_TourLocation("37");
				List<LocationVO> JeonbukFoodList = foodService.get_FoodLocation("37");
				List<LocationVO> JeonbukLodgmentList = lodgmentService.get_LodgmentLocation("37");
				
				model.addAttribute("JEONBUKtour",JeonbukTourList);
				model.addAttribute("JEONBUKfood",JeonbukFoodList);
				model.addAttribute("JEONBUKlodgment",JeonbukLodgmentList);
				
				// TODO 전남
				List<LocationVO> JeonnamTourList = tourService.get_TourLocation("38");
				List<LocationVO> JeonnamFoodList = foodService.get_FoodLocation("38");
				List<LocationVO> JeonnamLodgmentList = lodgmentService.get_LodgmentLocation("38");
				
				model.addAttribute("JEONNAMtour",JeonnamTourList);
				model.addAttribute("JEONNAMfood",JeonnamFoodList);
				model.addAttribute("JEONNAMlodgment",JeonnamLodgmentList);
				
				// TODO 제주
				List<LocationVO> JejuTourList = tourService.get_TourLocation("39");
				List<LocationVO> JejuFoodList = foodService.get_FoodLocation("39");
				List<LocationVO> JejuLodgmentList = lodgmentService.get_LodgmentLocation("39");
				
				model.addAttribute("JEJUtour",JejuTourList);
				model.addAttribute("JEJUfood",JejuFoodList);
				model.addAttribute("JEJUlodgment",JejuLodgmentList);

		
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
		
		// TODO 서울
				List<LocationVO> SeoulTourList = tourService.get_TourLocation("1");
				List<LocationVO> SeoulFoodList = foodService.get_FoodLocation("1");
				List<LocationVO> SeoulLodgmentList = lodgmentService.get_LodgmentLocation("1");
				
				model.addAttribute("SEOULtour",SeoulTourList);
				model.addAttribute("SEOULfood",SeoulFoodList);
				model.addAttribute("SEOULlodgment",SeoulLodgmentList);
				
				// TODO 인천
				List<LocationVO> IncheonTourList = tourService.get_TourLocation("2");
				List<LocationVO> IncheonFoodList = foodService.get_FoodLocation("2");
				List<LocationVO> IncheonLodgmentList = lodgmentService.get_LodgmentLocation("2");
				
				model.addAttribute("INCHEONtour",IncheonTourList);
				model.addAttribute("INCHEONfood",IncheonFoodList);
				model.addAttribute("INCHEONlodgment",IncheonLodgmentList);
				
				// TODO 대전
				List<LocationVO> DaejeonTourList = tourService.get_TourLocation("3");
				List<LocationVO> DaejeonFoodList = foodService.get_FoodLocation("3");
				List<LocationVO> DaejeonLodgmentList = lodgmentService.get_LodgmentLocation("3");
				
				model.addAttribute("DAEJEONtour",DaejeonTourList);
				model.addAttribute("DAEJEONfood",DaejeonFoodList);
				model.addAttribute("DAEJEONlodgment",DaejeonLodgmentList);
				
				// TODO 대구
				List<LocationVO> DaeguTourList = tourService.get_TourLocation("4");
				List<LocationVO> DaeguFoodList = foodService.get_FoodLocation("4");
				List<LocationVO> DaeguLodgmentList = lodgmentService.get_LodgmentLocation("4");
				
				model.addAttribute("DAEGUtour",DaeguTourList);
				model.addAttribute("DAEGUfood",DaeguFoodList);
				model.addAttribute("DAEGUlodgment",DaeguLodgmentList);
				
				// TODO 광주
				List<LocationVO> GwangjuTourList = tourService.get_TourLocation("5");
				List<LocationVO> GwangjuFoodList = foodService.get_FoodLocation("5");
				List<LocationVO> GwangjuLodgmentList = lodgmentService.get_LodgmentLocation("5");
				
				model.addAttribute("GWANGJUtour",GwangjuTourList);
				model.addAttribute("GWANGJUfood",GwangjuFoodList);
				model.addAttribute("GWANGJUlodgment",GwangjuLodgmentList);
				
				// TODO 부산
				List<LocationVO> BusanTourList = tourService.get_TourLocation("6");
				List<LocationVO> BusanFoodList = foodService.get_FoodLocation("6");
				List<LocationVO> BusanLodgmentList = lodgmentService.get_LodgmentLocation("6");
				
				model.addAttribute("BUSANtour",BusanTourList);
				model.addAttribute("BUSANfood",BusanFoodList);
				model.addAttribute("BUSANlodgment",BusanLodgmentList);
				
				// TODO 울산
				List<LocationVO> UlsanTourList = tourService.get_TourLocation("7");
				List<LocationVO> UlsanFoodList = foodService.get_FoodLocation("7");
				List<LocationVO> UlsanLodgmentList = lodgmentService.get_LodgmentLocation("7");
				
				model.addAttribute("ULSANtour",UlsanTourList);
				model.addAttribute("ULSANfood",UlsanFoodList);
				model.addAttribute("ULSANlodgment",UlsanLodgmentList);
				
				// TODO 세종
				List<LocationVO> SejongTourList = tourService.get_TourLocation("8");
				List<LocationVO> SejongFoodList = foodService.get_FoodLocation("8");
				List<LocationVO> SejongLodgmentList = lodgmentService.get_LodgmentLocation("8");
				
				model.addAttribute("SEJONGtour",SejongTourList);
				model.addAttribute("SEJONGfood",SejongFoodList);
				model.addAttribute("SEJONGlodgment",SejongLodgmentList);
				
				// TODO 경기
				List<LocationVO> GyeonggiTourList = tourService.get_TourLocation("31");
				List<LocationVO> GyeonggiFoodList = foodService.get_FoodLocation("31");
				List<LocationVO> GyeonggiLodgmentList = lodgmentService.get_LodgmentLocation("31");
				
				model.addAttribute("GYEONGGItour",GyeonggiTourList);
				model.addAttribute("GYEONGGIfood",GyeonggiFoodList);
				model.addAttribute("GYEONGGIlodgment",GyeonggiLodgmentList);
				
				// TODO 강원
				List<LocationVO> GangwonTourList = tourService.get_TourLocation("32");
				List<LocationVO> GangwonFoodList = foodService.get_FoodLocation("32");
				List<LocationVO> GangwonLodgmentList = lodgmentService.get_LodgmentLocation("32");
				
				model.addAttribute("GANGWONtour",GangwonTourList);
				model.addAttribute("GANGWONfood",GangwonFoodList);
				model.addAttribute("GANGWONlodgment",GangwonLodgmentList);
				
				// TODO 충북
				List<LocationVO> ChungbukTourList = tourService.get_TourLocation("33");
				List<LocationVO> ChungbukFoodList = foodService.get_FoodLocation("33");
				List<LocationVO> ChungbukLodgmentList = lodgmentService.get_LodgmentLocation("33");
				
				model.addAttribute("CHUNGBUKtour",ChungbukTourList);
				model.addAttribute("CHUNGBUKfood",ChungbukFoodList);
				model.addAttribute("CHUNGBUKlodgment",ChungbukLodgmentList);
				
				// TODO 충남
				List<LocationVO> ChungnamTourList = tourService.get_TourLocation("34");
				List<LocationVO> ChungnamFoodList = foodService.get_FoodLocation("34");
				List<LocationVO> ChungnamLodgmentList = lodgmentService.get_LodgmentLocation("34");
				
				model.addAttribute("CHUNGNAMtour",ChungnamTourList);
				model.addAttribute("CHUNGNAMfood",ChungnamFoodList);
				model.addAttribute("CHUNGNAMlodgment",ChungnamLodgmentList);
				
				// TODO 경북
				List<LocationVO> GyeongbukTourList = tourService.get_TourLocation("35");
				List<LocationVO> GyeongbukFoodList = foodService.get_FoodLocation("35");
				List<LocationVO> GyeongbukLodgmentList = lodgmentService.get_LodgmentLocation("35");
				
				model.addAttribute("GYEONGBUKtour",GyeongbukTourList);
				model.addAttribute("GYEONGBUKfood",GyeongbukFoodList);
				model.addAttribute("GYEONGBUKlodgment",GyeongbukLodgmentList);
				
				// TODO 경남
				List<LocationVO> GyeongnamTourList = tourService.get_TourLocation("36");
				List<LocationVO> GyeongnamFoodList = foodService.get_FoodLocation("36");
				List<LocationVO> GyeongnamLodgmentList = lodgmentService.get_LodgmentLocation("36");
				
				model.addAttribute("GYEONGNAMtour",GyeongnamTourList);
				model.addAttribute("GYEONGNAMfood",GyeongnamFoodList);
				model.addAttribute("GYEONGNAMlodgment",GyeongnamLodgmentList);
				
				// TODO 전북
				List<LocationVO> JeonbukTourList = tourService.get_TourLocation("37");
				List<LocationVO> JeonbukFoodList = foodService.get_FoodLocation("37");
				List<LocationVO> JeonbukLodgmentList = lodgmentService.get_LodgmentLocation("37");
				
				model.addAttribute("JEONBUKtour",JeonbukTourList);
				model.addAttribute("JEONBUKfood",JeonbukFoodList);
				model.addAttribute("JEONBUKlodgment",JeonbukLodgmentList);
				
				// TODO 전남
				List<LocationVO> JeonnamTourList = tourService.get_TourLocation("38");
				List<LocationVO> JeonnamFoodList = foodService.get_FoodLocation("38");
				List<LocationVO> JeonnamLodgmentList = lodgmentService.get_LodgmentLocation("38");
				
				model.addAttribute("JEONNAMtour",JeonnamTourList);
				model.addAttribute("JEONNAMfood",JeonnamFoodList);
				model.addAttribute("JEONNAMlodgment",JeonnamLodgmentList);
				
				// TODO 제주
				List<LocationVO> JejuTourList = tourService.get_TourLocation("39");
				List<LocationVO> JejuFoodList = foodService.get_FoodLocation("39");
				List<LocationVO> JejuLodgmentList = lodgmentService.get_LodgmentLocation("39");
				
				model.addAttribute("JEJUtour",JejuTourList);
				model.addAttribute("JEJUfood",JejuFoodList);
				model.addAttribute("JEJUlodgment",JejuLodgmentList);

		
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
		
		// TODO 서울
				List<LocationVO> SeoulTourList = tourService.get_TourLocation("1");
				List<LocationVO> SeoulFoodList = foodService.get_FoodLocation("1");
				List<LocationVO> SeoulLodgmentList = lodgmentService.get_LodgmentLocation("1");
				
				model.addAttribute("SEOULtour",SeoulTourList);
				model.addAttribute("SEOULfood",SeoulFoodList);
				model.addAttribute("SEOULlodgment",SeoulLodgmentList);
				
				// TODO 인천
				List<LocationVO> IncheonTourList = tourService.get_TourLocation("2");
				List<LocationVO> IncheonFoodList = foodService.get_FoodLocation("2");
				List<LocationVO> IncheonLodgmentList = lodgmentService.get_LodgmentLocation("2");
				
				model.addAttribute("INCHEONtour",IncheonTourList);
				model.addAttribute("INCHEONfood",IncheonFoodList);
				model.addAttribute("INCHEONlodgment",IncheonLodgmentList);
				
				// TODO 대전
				List<LocationVO> DaejeonTourList = tourService.get_TourLocation("3");
				List<LocationVO> DaejeonFoodList = foodService.get_FoodLocation("3");
				List<LocationVO> DaejeonLodgmentList = lodgmentService.get_LodgmentLocation("3");
				
				model.addAttribute("DAEJEONtour",DaejeonTourList);
				model.addAttribute("DAEJEONfood",DaejeonFoodList);
				model.addAttribute("DAEJEONlodgment",DaejeonLodgmentList);
				
				// TODO 대구
				List<LocationVO> DaeguTourList = tourService.get_TourLocation("4");
				List<LocationVO> DaeguFoodList = foodService.get_FoodLocation("4");
				List<LocationVO> DaeguLodgmentList = lodgmentService.get_LodgmentLocation("4");
				
				model.addAttribute("DAEGUtour",DaeguTourList);
				model.addAttribute("DAEGUfood",DaeguFoodList);
				model.addAttribute("DAEGUlodgment",DaeguLodgmentList);
				
				// TODO 광주
				List<LocationVO> GwangjuTourList = tourService.get_TourLocation("5");
				List<LocationVO> GwangjuFoodList = foodService.get_FoodLocation("5");
				List<LocationVO> GwangjuLodgmentList = lodgmentService.get_LodgmentLocation("5");
				
				model.addAttribute("GWANGJUtour",GwangjuTourList);
				model.addAttribute("GWANGJUfood",GwangjuFoodList);
				model.addAttribute("GWANGJUlodgment",GwangjuLodgmentList);
				
				// TODO 부산
				List<LocationVO> BusanTourList = tourService.get_TourLocation("6");
				List<LocationVO> BusanFoodList = foodService.get_FoodLocation("6");
				List<LocationVO> BusanLodgmentList = lodgmentService.get_LodgmentLocation("6");
				
				model.addAttribute("BUSANtour",BusanTourList);
				model.addAttribute("BUSANfood",BusanFoodList);
				model.addAttribute("BUSANlodgment",BusanLodgmentList);
				
				// TODO 울산
				List<LocationVO> UlsanTourList = tourService.get_TourLocation("7");
				List<LocationVO> UlsanFoodList = foodService.get_FoodLocation("7");
				List<LocationVO> UlsanLodgmentList = lodgmentService.get_LodgmentLocation("7");
				
				model.addAttribute("ULSANtour",UlsanTourList);
				model.addAttribute("ULSANfood",UlsanFoodList);
				model.addAttribute("ULSANlodgment",UlsanLodgmentList);
				
				// TODO 세종
				List<LocationVO> SejongTourList = tourService.get_TourLocation("8");
				List<LocationVO> SejongFoodList = foodService.get_FoodLocation("8");
				List<LocationVO> SejongLodgmentList = lodgmentService.get_LodgmentLocation("8");
				
				model.addAttribute("SEJONGtour",SejongTourList);
				model.addAttribute("SEJONGfood",SejongFoodList);
				model.addAttribute("SEJONGlodgment",SejongLodgmentList);
				
				// TODO 경기
				List<LocationVO> GyeonggiTourList = tourService.get_TourLocation("31");
				List<LocationVO> GyeonggiFoodList = foodService.get_FoodLocation("31");
				List<LocationVO> GyeonggiLodgmentList = lodgmentService.get_LodgmentLocation("31");
				
				model.addAttribute("GYEONGGItour",GyeonggiTourList);
				model.addAttribute("GYEONGGIfood",GyeonggiFoodList);
				model.addAttribute("GYEONGGIlodgment",GyeonggiLodgmentList);
				
				// TODO 강원
				List<LocationVO> GangwonTourList = tourService.get_TourLocation("32");
				List<LocationVO> GangwonFoodList = foodService.get_FoodLocation("32");
				List<LocationVO> GangwonLodgmentList = lodgmentService.get_LodgmentLocation("32");
				
				model.addAttribute("GANGWONtour",GangwonTourList);
				model.addAttribute("GANGWONfood",GangwonFoodList);
				model.addAttribute("GANGWONlodgment",GangwonLodgmentList);
				
				// TODO 충북
				List<LocationVO> ChungbukTourList = tourService.get_TourLocation("33");
				List<LocationVO> ChungbukFoodList = foodService.get_FoodLocation("33");
				List<LocationVO> ChungbukLodgmentList = lodgmentService.get_LodgmentLocation("33");
				
				model.addAttribute("CHUNGBUKtour",ChungbukTourList);
				model.addAttribute("CHUNGBUKfood",ChungbukFoodList);
				model.addAttribute("CHUNGBUKlodgment",ChungbukLodgmentList);
				
				// TODO 충남
				List<LocationVO> ChungnamTourList = tourService.get_TourLocation("34");
				List<LocationVO> ChungnamFoodList = foodService.get_FoodLocation("34");
				List<LocationVO> ChungnamLodgmentList = lodgmentService.get_LodgmentLocation("34");
				
				model.addAttribute("CHUNGNAMtour",ChungnamTourList);
				model.addAttribute("CHUNGNAMfood",ChungnamFoodList);
				model.addAttribute("CHUNGNAMlodgment",ChungnamLodgmentList);
				
				// TODO 경북
				List<LocationVO> GyeongbukTourList = tourService.get_TourLocation("35");
				List<LocationVO> GyeongbukFoodList = foodService.get_FoodLocation("35");
				List<LocationVO> GyeongbukLodgmentList = lodgmentService.get_LodgmentLocation("35");
				
				model.addAttribute("GYEONGBUKtour",GyeongbukTourList);
				model.addAttribute("GYEONGBUKfood",GyeongbukFoodList);
				model.addAttribute("GYEONGBUKlodgment",GyeongbukLodgmentList);
				
				// TODO 경남
				List<LocationVO> GyeongnamTourList = tourService.get_TourLocation("36");
				List<LocationVO> GyeongnamFoodList = foodService.get_FoodLocation("36");
				List<LocationVO> GyeongnamLodgmentList = lodgmentService.get_LodgmentLocation("36");
				
				model.addAttribute("GYEONGNAMtour",GyeongnamTourList);
				model.addAttribute("GYEONGNAMfood",GyeongnamFoodList);
				model.addAttribute("GYEONGNAMlodgment",GyeongnamLodgmentList);
				
				// TODO 전북
				List<LocationVO> JeonbukTourList = tourService.get_TourLocation("37");
				List<LocationVO> JeonbukFoodList = foodService.get_FoodLocation("37");
				List<LocationVO> JeonbukLodgmentList = lodgmentService.get_LodgmentLocation("37");
				
				model.addAttribute("JEONBUKtour",JeonbukTourList);
				model.addAttribute("JEONBUKfood",JeonbukFoodList);
				model.addAttribute("JEONBUKlodgment",JeonbukLodgmentList);
				
				// TODO 전남
				List<LocationVO> JeonnamTourList = tourService.get_TourLocation("38");
				List<LocationVO> JeonnamFoodList = foodService.get_FoodLocation("38");
				List<LocationVO> JeonnamLodgmentList = lodgmentService.get_LodgmentLocation("38");
				
				model.addAttribute("JEONNAMtour",JeonnamTourList);
				model.addAttribute("JEONNAMfood",JeonnamFoodList);
				model.addAttribute("JEONNAMlodgment",JeonnamLodgmentList);
				
				// TODO 제주
				List<LocationVO> JejuTourList = tourService.get_TourLocation("39");
				List<LocationVO> JejuFoodList = foodService.get_FoodLocation("39");
				List<LocationVO> JejuLodgmentList = lodgmentService.get_LodgmentLocation("39");
				
				model.addAttribute("JEJUtour",JejuTourList);
				model.addAttribute("JEJUfood",JejuFoodList);
				model.addAttribute("JEJUlodgment",JejuLodgmentList);


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
		
		// TODO 서울
				List<LocationVO> SeoulTourList = tourService.get_TourLocation("1");
				List<LocationVO> SeoulFoodList = foodService.get_FoodLocation("1");
				List<LocationVO> SeoulLodgmentList = lodgmentService.get_LodgmentLocation("1");
				
				model.addAttribute("SEOULtour",SeoulTourList);
				model.addAttribute("SEOULfood",SeoulFoodList);
				model.addAttribute("SEOULlodgment",SeoulLodgmentList);
				
				// TODO 인천
				List<LocationVO> IncheonTourList = tourService.get_TourLocation("2");
				List<LocationVO> IncheonFoodList = foodService.get_FoodLocation("2");
				List<LocationVO> IncheonLodgmentList = lodgmentService.get_LodgmentLocation("2");
				
				model.addAttribute("INCHEONtour",IncheonTourList);
				model.addAttribute("INCHEONfood",IncheonFoodList);
				model.addAttribute("INCHEONlodgment",IncheonLodgmentList);
				
				// TODO 대전
				List<LocationVO> DaejeonTourList = tourService.get_TourLocation("3");
				List<LocationVO> DaejeonFoodList = foodService.get_FoodLocation("3");
				List<LocationVO> DaejeonLodgmentList = lodgmentService.get_LodgmentLocation("3");
				
				model.addAttribute("DAEJEONtour",DaejeonTourList);
				model.addAttribute("DAEJEONfood",DaejeonFoodList);
				model.addAttribute("DAEJEONlodgment",DaejeonLodgmentList);
				
				// TODO 대구
				List<LocationVO> DaeguTourList = tourService.get_TourLocation("4");
				List<LocationVO> DaeguFoodList = foodService.get_FoodLocation("4");
				List<LocationVO> DaeguLodgmentList = lodgmentService.get_LodgmentLocation("4");
				
				model.addAttribute("DAEGUtour",DaeguTourList);
				model.addAttribute("DAEGUfood",DaeguFoodList);
				model.addAttribute("DAEGUlodgment",DaeguLodgmentList);
				
				// TODO 광주
				List<LocationVO> GwangjuTourList = tourService.get_TourLocation("5");
				List<LocationVO> GwangjuFoodList = foodService.get_FoodLocation("5");
				List<LocationVO> GwangjuLodgmentList = lodgmentService.get_LodgmentLocation("5");
				
				model.addAttribute("GWANGJUtour",GwangjuTourList);
				model.addAttribute("GWANGJUfood",GwangjuFoodList);
				model.addAttribute("GWANGJUlodgment",GwangjuLodgmentList);
				
				// TODO 부산
				List<LocationVO> BusanTourList = tourService.get_TourLocation("6");
				List<LocationVO> BusanFoodList = foodService.get_FoodLocation("6");
				List<LocationVO> BusanLodgmentList = lodgmentService.get_LodgmentLocation("6");
				
				model.addAttribute("BUSANtour",BusanTourList);
				model.addAttribute("BUSANfood",BusanFoodList);
				model.addAttribute("BUSANlodgment",BusanLodgmentList);
				
				// TODO 울산
				List<LocationVO> UlsanTourList = tourService.get_TourLocation("7");
				List<LocationVO> UlsanFoodList = foodService.get_FoodLocation("7");
				List<LocationVO> UlsanLodgmentList = lodgmentService.get_LodgmentLocation("7");
				
				model.addAttribute("ULSANtour",UlsanTourList);
				model.addAttribute("ULSANfood",UlsanFoodList);
				model.addAttribute("ULSANlodgment",UlsanLodgmentList);
				
				// TODO 세종
				List<LocationVO> SejongTourList = tourService.get_TourLocation("8");
				List<LocationVO> SejongFoodList = foodService.get_FoodLocation("8");
				List<LocationVO> SejongLodgmentList = lodgmentService.get_LodgmentLocation("8");
				
				model.addAttribute("SEJONGtour",SejongTourList);
				model.addAttribute("SEJONGfood",SejongFoodList);
				model.addAttribute("SEJONGlodgment",SejongLodgmentList);
				
				// TODO 경기
				List<LocationVO> GyeonggiTourList = tourService.get_TourLocation("31");
				List<LocationVO> GyeonggiFoodList = foodService.get_FoodLocation("31");
				List<LocationVO> GyeonggiLodgmentList = lodgmentService.get_LodgmentLocation("31");
				
				model.addAttribute("GYEONGGItour",GyeonggiTourList);
				model.addAttribute("GYEONGGIfood",GyeonggiFoodList);
				model.addAttribute("GYEONGGIlodgment",GyeonggiLodgmentList);
				
				// TODO 강원
				List<LocationVO> GangwonTourList = tourService.get_TourLocation("32");
				List<LocationVO> GangwonFoodList = foodService.get_FoodLocation("32");
				List<LocationVO> GangwonLodgmentList = lodgmentService.get_LodgmentLocation("32");
				
				model.addAttribute("GANGWONtour",GangwonTourList);
				model.addAttribute("GANGWONfood",GangwonFoodList);
				model.addAttribute("GANGWONlodgment",GangwonLodgmentList);
				
				// TODO 충북
				List<LocationVO> ChungbukTourList = tourService.get_TourLocation("33");
				List<LocationVO> ChungbukFoodList = foodService.get_FoodLocation("33");
				List<LocationVO> ChungbukLodgmentList = lodgmentService.get_LodgmentLocation("33");
				
				model.addAttribute("CHUNGBUKtour",ChungbukTourList);
				model.addAttribute("CHUNGBUKfood",ChungbukFoodList);
				model.addAttribute("CHUNGBUKlodgment",ChungbukLodgmentList);
				
				// TODO 충남
				List<LocationVO> ChungnamTourList = tourService.get_TourLocation("34");
				List<LocationVO> ChungnamFoodList = foodService.get_FoodLocation("34");
				List<LocationVO> ChungnamLodgmentList = lodgmentService.get_LodgmentLocation("34");
				
				model.addAttribute("CHUNGNAMtour",ChungnamTourList);
				model.addAttribute("CHUNGNAMfood",ChungnamFoodList);
				model.addAttribute("CHUNGNAMlodgment",ChungnamLodgmentList);
				
				// TODO 경북
				List<LocationVO> GyeongbukTourList = tourService.get_TourLocation("35");
				List<LocationVO> GyeongbukFoodList = foodService.get_FoodLocation("35");
				List<LocationVO> GyeongbukLodgmentList = lodgmentService.get_LodgmentLocation("35");
				
				model.addAttribute("GYEONGBUKtour",GyeongbukTourList);
				model.addAttribute("GYEONGBUKfood",GyeongbukFoodList);
				model.addAttribute("GYEONGBUKlodgment",GyeongbukLodgmentList);
				
				// TODO 경남
				List<LocationVO> GyeongnamTourList = tourService.get_TourLocation("36");
				List<LocationVO> GyeongnamFoodList = foodService.get_FoodLocation("36");
				List<LocationVO> GyeongnamLodgmentList = lodgmentService.get_LodgmentLocation("36");
				
				model.addAttribute("GYEONGNAMtour",GyeongnamTourList);
				model.addAttribute("GYEONGNAMfood",GyeongnamFoodList);
				model.addAttribute("GYEONGNAMlodgment",GyeongnamLodgmentList);
				
				// TODO 전북
				List<LocationVO> JeonbukTourList = tourService.get_TourLocation("37");
				List<LocationVO> JeonbukFoodList = foodService.get_FoodLocation("37");
				List<LocationVO> JeonbukLodgmentList = lodgmentService.get_LodgmentLocation("37");
				
				model.addAttribute("JEONBUKtour",JeonbukTourList);
				model.addAttribute("JEONBUKfood",JeonbukFoodList);
				model.addAttribute("JEONBUKlodgment",JeonbukLodgmentList);
				
				// TODO 전남
				List<LocationVO> JeonnamTourList = tourService.get_TourLocation("38");
				List<LocationVO> JeonnamFoodList = foodService.get_FoodLocation("38");
				List<LocationVO> JeonnamLodgmentList = lodgmentService.get_LodgmentLocation("38");
				
				model.addAttribute("JEONNAMtour",JeonnamTourList);
				model.addAttribute("JEONNAMfood",JeonnamFoodList);
				model.addAttribute("JEONNAMlodgment",JeonnamLodgmentList);
				
				// TODO 제주
				List<LocationVO> JejuTourList = tourService.get_TourLocation("39");
				List<LocationVO> JejuFoodList = foodService.get_FoodLocation("39");
				List<LocationVO> JejuLodgmentList = lodgmentService.get_LodgmentLocation("39");
				
				model.addAttribute("JEJUtour",JejuTourList);
				model.addAttribute("JEJUfood",JejuFoodList);
				model.addAttribute("JEJUlodgment",JejuLodgmentList);


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
		
		// TODO 서울
				List<LocationVO> SeoulTourList = tourService.get_TourLocation("1");
				List<LocationVO> SeoulFoodList = foodService.get_FoodLocation("1");
				List<LocationVO> SeoulLodgmentList = lodgmentService.get_LodgmentLocation("1");
				
				model.addAttribute("SEOULtour",SeoulTourList);
				model.addAttribute("SEOULfood",SeoulFoodList);
				model.addAttribute("SEOULlodgment",SeoulLodgmentList);
				
				// TODO 인천
				List<LocationVO> IncheonTourList = tourService.get_TourLocation("2");
				List<LocationVO> IncheonFoodList = foodService.get_FoodLocation("2");
				List<LocationVO> IncheonLodgmentList = lodgmentService.get_LodgmentLocation("2");
				
				model.addAttribute("INCHEONtour",IncheonTourList);
				model.addAttribute("INCHEONfood",IncheonFoodList);
				model.addAttribute("INCHEONlodgment",IncheonLodgmentList);
				
				// TODO 대전
				List<LocationVO> DaejeonTourList = tourService.get_TourLocation("3");
				List<LocationVO> DaejeonFoodList = foodService.get_FoodLocation("3");
				List<LocationVO> DaejeonLodgmentList = lodgmentService.get_LodgmentLocation("3");
				
				model.addAttribute("DAEJEONtour",DaejeonTourList);
				model.addAttribute("DAEJEONfood",DaejeonFoodList);
				model.addAttribute("DAEJEONlodgment",DaejeonLodgmentList);
				
				// TODO 대구
				List<LocationVO> DaeguTourList = tourService.get_TourLocation("4");
				List<LocationVO> DaeguFoodList = foodService.get_FoodLocation("4");
				List<LocationVO> DaeguLodgmentList = lodgmentService.get_LodgmentLocation("4");
				
				model.addAttribute("DAEGUtour",DaeguTourList);
				model.addAttribute("DAEGUfood",DaeguFoodList);
				model.addAttribute("DAEGUlodgment",DaeguLodgmentList);
				
				// TODO 광주
				List<LocationVO> GwangjuTourList = tourService.get_TourLocation("5");
				List<LocationVO> GwangjuFoodList = foodService.get_FoodLocation("5");
				List<LocationVO> GwangjuLodgmentList = lodgmentService.get_LodgmentLocation("5");
				
				model.addAttribute("GWANGJUtour",GwangjuTourList);
				model.addAttribute("GWANGJUfood",GwangjuFoodList);
				model.addAttribute("GWANGJUlodgment",GwangjuLodgmentList);
				
				// TODO 부산
				List<LocationVO> BusanTourList = tourService.get_TourLocation("6");
				List<LocationVO> BusanFoodList = foodService.get_FoodLocation("6");
				List<LocationVO> BusanLodgmentList = lodgmentService.get_LodgmentLocation("6");
				
				model.addAttribute("BUSANtour",BusanTourList);
				model.addAttribute("BUSANfood",BusanFoodList);
				model.addAttribute("BUSANlodgment",BusanLodgmentList);
				
				// TODO 울산
				List<LocationVO> UlsanTourList = tourService.get_TourLocation("7");
				List<LocationVO> UlsanFoodList = foodService.get_FoodLocation("7");
				List<LocationVO> UlsanLodgmentList = lodgmentService.get_LodgmentLocation("7");
				
				model.addAttribute("ULSANtour",UlsanTourList);
				model.addAttribute("ULSANfood",UlsanFoodList);
				model.addAttribute("ULSANlodgment",UlsanLodgmentList);
				
				// TODO 세종
				List<LocationVO> SejongTourList = tourService.get_TourLocation("8");
				List<LocationVO> SejongFoodList = foodService.get_FoodLocation("8");
				List<LocationVO> SejongLodgmentList = lodgmentService.get_LodgmentLocation("8");
				
				model.addAttribute("SEJONGtour",SejongTourList);
				model.addAttribute("SEJONGfood",SejongFoodList);
				model.addAttribute("SEJONGlodgment",SejongLodgmentList);
				
				// TODO 경기
				List<LocationVO> GyeonggiTourList = tourService.get_TourLocation("31");
				List<LocationVO> GyeonggiFoodList = foodService.get_FoodLocation("31");
				List<LocationVO> GyeonggiLodgmentList = lodgmentService.get_LodgmentLocation("31");
				
				model.addAttribute("GYEONGGItour",GyeonggiTourList);
				model.addAttribute("GYEONGGIfood",GyeonggiFoodList);
				model.addAttribute("GYEONGGIlodgment",GyeonggiLodgmentList);
				
				// TODO 강원
				List<LocationVO> GangwonTourList = tourService.get_TourLocation("32");
				List<LocationVO> GangwonFoodList = foodService.get_FoodLocation("32");
				List<LocationVO> GangwonLodgmentList = lodgmentService.get_LodgmentLocation("32");
				
				model.addAttribute("GANGWONtour",GangwonTourList);
				model.addAttribute("GANGWONfood",GangwonFoodList);
				model.addAttribute("GANGWONlodgment",GangwonLodgmentList);
				
				// TODO 충북
				List<LocationVO> ChungbukTourList = tourService.get_TourLocation("33");
				List<LocationVO> ChungbukFoodList = foodService.get_FoodLocation("33");
				List<LocationVO> ChungbukLodgmentList = lodgmentService.get_LodgmentLocation("33");
				
				model.addAttribute("CHUNGBUKtour",ChungbukTourList);
				model.addAttribute("CHUNGBUKfood",ChungbukFoodList);
				model.addAttribute("CHUNGBUKlodgment",ChungbukLodgmentList);
				
				// TODO 충남
				List<LocationVO> ChungnamTourList = tourService.get_TourLocation("34");
				List<LocationVO> ChungnamFoodList = foodService.get_FoodLocation("34");
				List<LocationVO> ChungnamLodgmentList = lodgmentService.get_LodgmentLocation("34");
				
				model.addAttribute("CHUNGNAMtour",ChungnamTourList);
				model.addAttribute("CHUNGNAMfood",ChungnamFoodList);
				model.addAttribute("CHUNGNAMlodgment",ChungnamLodgmentList);
				
				// TODO 경북
				List<LocationVO> GyeongbukTourList = tourService.get_TourLocation("35");
				List<LocationVO> GyeongbukFoodList = foodService.get_FoodLocation("35");
				List<LocationVO> GyeongbukLodgmentList = lodgmentService.get_LodgmentLocation("35");
				
				model.addAttribute("GYEONGBUKtour",GyeongbukTourList);
				model.addAttribute("GYEONGBUKfood",GyeongbukFoodList);
				model.addAttribute("GYEONGBUKlodgment",GyeongbukLodgmentList);
				
				// TODO 경남
				List<LocationVO> GyeongnamTourList = tourService.get_TourLocation("36");
				List<LocationVO> GyeongnamFoodList = foodService.get_FoodLocation("36");
				List<LocationVO> GyeongnamLodgmentList = lodgmentService.get_LodgmentLocation("36");
				
				model.addAttribute("GYEONGNAMtour",GyeongnamTourList);
				model.addAttribute("GYEONGNAMfood",GyeongnamFoodList);
				model.addAttribute("GYEONGNAMlodgment",GyeongnamLodgmentList);
				
				// TODO 전북
				List<LocationVO> JeonbukTourList = tourService.get_TourLocation("37");
				List<LocationVO> JeonbukFoodList = foodService.get_FoodLocation("37");
				List<LocationVO> JeonbukLodgmentList = lodgmentService.get_LodgmentLocation("37");
				
				model.addAttribute("JEONBUKtour",JeonbukTourList);
				model.addAttribute("JEONBUKfood",JeonbukFoodList);
				model.addAttribute("JEONBUKlodgment",JeonbukLodgmentList);
				
				// TODO 전남
				List<LocationVO> JeonnamTourList = tourService.get_TourLocation("38");
				List<LocationVO> JeonnamFoodList = foodService.get_FoodLocation("38");
				List<LocationVO> JeonnamLodgmentList = lodgmentService.get_LodgmentLocation("38");
				
				model.addAttribute("JEONNAMtour",JeonnamTourList);
				model.addAttribute("JEONNAMfood",JeonnamFoodList);
				model.addAttribute("JEONNAMlodgment",JeonnamLodgmentList);
				
				// TODO 제주
				List<LocationVO> JejuTourList = tourService.get_TourLocation("39");
				List<LocationVO> JejuFoodList = foodService.get_FoodLocation("39");
				List<LocationVO> JejuLodgmentList = lodgmentService.get_LodgmentLocation("39");
				
				model.addAttribute("JEJUtour",JejuTourList);
				model.addAttribute("JEJUfood",JejuFoodList);
				model.addAttribute("JEJUlodgment",JejuLodgmentList);


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
		
		// TODO 서울
				List<LocationVO> SeoulTourList = tourService.get_TourLocation("1");
				List<LocationVO> SeoulFoodList = foodService.get_FoodLocation("1");
				List<LocationVO> SeoulLodgmentList = lodgmentService.get_LodgmentLocation("1");
				
				model.addAttribute("SEOULtour",SeoulTourList);
				model.addAttribute("SEOULfood",SeoulFoodList);
				model.addAttribute("SEOULlodgment",SeoulLodgmentList);
				
				// TODO 인천
				List<LocationVO> IncheonTourList = tourService.get_TourLocation("2");
				List<LocationVO> IncheonFoodList = foodService.get_FoodLocation("2");
				List<LocationVO> IncheonLodgmentList = lodgmentService.get_LodgmentLocation("2");
				
				model.addAttribute("INCHEONtour",IncheonTourList);
				model.addAttribute("INCHEONfood",IncheonFoodList);
				model.addAttribute("INCHEONlodgment",IncheonLodgmentList);
				
				// TODO 대전
				List<LocationVO> DaejeonTourList = tourService.get_TourLocation("3");
				List<LocationVO> DaejeonFoodList = foodService.get_FoodLocation("3");
				List<LocationVO> DaejeonLodgmentList = lodgmentService.get_LodgmentLocation("3");
				
				model.addAttribute("DAEJEONtour",DaejeonTourList);
				model.addAttribute("DAEJEONfood",DaejeonFoodList);
				model.addAttribute("DAEJEONlodgment",DaejeonLodgmentList);
				
				// TODO 대구
				List<LocationVO> DaeguTourList = tourService.get_TourLocation("4");
				List<LocationVO> DaeguFoodList = foodService.get_FoodLocation("4");
				List<LocationVO> DaeguLodgmentList = lodgmentService.get_LodgmentLocation("4");
				
				model.addAttribute("DAEGUtour",DaeguTourList);
				model.addAttribute("DAEGUfood",DaeguFoodList);
				model.addAttribute("DAEGUlodgment",DaeguLodgmentList);
				
				// TODO 광주
				List<LocationVO> GwangjuTourList = tourService.get_TourLocation("5");
				List<LocationVO> GwangjuFoodList = foodService.get_FoodLocation("5");
				List<LocationVO> GwangjuLodgmentList = lodgmentService.get_LodgmentLocation("5");
				
				model.addAttribute("GWANGJUtour",GwangjuTourList);
				model.addAttribute("GWANGJUfood",GwangjuFoodList);
				model.addAttribute("GWANGJUlodgment",GwangjuLodgmentList);
				
				// TODO 부산
				List<LocationVO> BusanTourList = tourService.get_TourLocation("6");
				List<LocationVO> BusanFoodList = foodService.get_FoodLocation("6");
				List<LocationVO> BusanLodgmentList = lodgmentService.get_LodgmentLocation("6");
				
				model.addAttribute("BUSANtour",BusanTourList);
				model.addAttribute("BUSANfood",BusanFoodList);
				model.addAttribute("BUSANlodgment",BusanLodgmentList);
				
				// TODO 울산
				List<LocationVO> UlsanTourList = tourService.get_TourLocation("7");
				List<LocationVO> UlsanFoodList = foodService.get_FoodLocation("7");
				List<LocationVO> UlsanLodgmentList = lodgmentService.get_LodgmentLocation("7");
				
				model.addAttribute("ULSANtour",UlsanTourList);
				model.addAttribute("ULSANfood",UlsanFoodList);
				model.addAttribute("ULSANlodgment",UlsanLodgmentList);
				
				// TODO 세종
				List<LocationVO> SejongTourList = tourService.get_TourLocation("8");
				List<LocationVO> SejongFoodList = foodService.get_FoodLocation("8");
				List<LocationVO> SejongLodgmentList = lodgmentService.get_LodgmentLocation("8");
				
				model.addAttribute("SEJONGtour",SejongTourList);
				model.addAttribute("SEJONGfood",SejongFoodList);
				model.addAttribute("SEJONGlodgment",SejongLodgmentList);
				
				// TODO 경기
				List<LocationVO> GyeonggiTourList = tourService.get_TourLocation("31");
				List<LocationVO> GyeonggiFoodList = foodService.get_FoodLocation("31");
				List<LocationVO> GyeonggiLodgmentList = lodgmentService.get_LodgmentLocation("31");
				
				model.addAttribute("GYEONGGItour",GyeonggiTourList);
				model.addAttribute("GYEONGGIfood",GyeonggiFoodList);
				model.addAttribute("GYEONGGIlodgment",GyeonggiLodgmentList);
				
				// TODO 강원
				List<LocationVO> GangwonTourList = tourService.get_TourLocation("32");
				List<LocationVO> GangwonFoodList = foodService.get_FoodLocation("32");
				List<LocationVO> GangwonLodgmentList = lodgmentService.get_LodgmentLocation("32");
				
				model.addAttribute("GANGWONtour",GangwonTourList);
				model.addAttribute("GANGWONfood",GangwonFoodList);
				model.addAttribute("GANGWONlodgment",GangwonLodgmentList);
				
				// TODO 충북
				List<LocationVO> ChungbukTourList = tourService.get_TourLocation("33");
				List<LocationVO> ChungbukFoodList = foodService.get_FoodLocation("33");
				List<LocationVO> ChungbukLodgmentList = lodgmentService.get_LodgmentLocation("33");
				
				model.addAttribute("CHUNGBUKtour",ChungbukTourList);
				model.addAttribute("CHUNGBUKfood",ChungbukFoodList);
				model.addAttribute("CHUNGBUKlodgment",ChungbukLodgmentList);
				
				// TODO 충남
				List<LocationVO> ChungnamTourList = tourService.get_TourLocation("34");
				List<LocationVO> ChungnamFoodList = foodService.get_FoodLocation("34");
				List<LocationVO> ChungnamLodgmentList = lodgmentService.get_LodgmentLocation("34");
				
				model.addAttribute("CHUNGNAMtour",ChungnamTourList);
				model.addAttribute("CHUNGNAMfood",ChungnamFoodList);
				model.addAttribute("CHUNGNAMlodgment",ChungnamLodgmentList);
				
				// TODO 경북
				List<LocationVO> GyeongbukTourList = tourService.get_TourLocation("35");
				List<LocationVO> GyeongbukFoodList = foodService.get_FoodLocation("35");
				List<LocationVO> GyeongbukLodgmentList = lodgmentService.get_LodgmentLocation("35");
				
				model.addAttribute("GYEONGBUKtour",GyeongbukTourList);
				model.addAttribute("GYEONGBUKfood",GyeongbukFoodList);
				model.addAttribute("GYEONGBUKlodgment",GyeongbukLodgmentList);
				
				// TODO 경남
				List<LocationVO> GyeongnamTourList = tourService.get_TourLocation("36");
				List<LocationVO> GyeongnamFoodList = foodService.get_FoodLocation("36");
				List<LocationVO> GyeongnamLodgmentList = lodgmentService.get_LodgmentLocation("36");
				
				model.addAttribute("GYEONGNAMtour",GyeongnamTourList);
				model.addAttribute("GYEONGNAMfood",GyeongnamFoodList);
				model.addAttribute("GYEONGNAMlodgment",GyeongnamLodgmentList);
				
				// TODO 전북
				List<LocationVO> JeonbukTourList = tourService.get_TourLocation("37");
				List<LocationVO> JeonbukFoodList = foodService.get_FoodLocation("37");
				List<LocationVO> JeonbukLodgmentList = lodgmentService.get_LodgmentLocation("37");
				
				model.addAttribute("JEONBUKtour",JeonbukTourList);
				model.addAttribute("JEONBUKfood",JeonbukFoodList);
				model.addAttribute("JEONBUKlodgment",JeonbukLodgmentList);
				
				// TODO 전남
				List<LocationVO> JeonnamTourList = tourService.get_TourLocation("38");
				List<LocationVO> JeonnamFoodList = foodService.get_FoodLocation("38");
				List<LocationVO> JeonnamLodgmentList = lodgmentService.get_LodgmentLocation("38");
				
				model.addAttribute("JEONNAMtour",JeonnamTourList);
				model.addAttribute("JEONNAMfood",JeonnamFoodList);
				model.addAttribute("JEONNAMlodgment",JeonnamLodgmentList);
				
				// TODO 제주
				List<LocationVO> JejuTourList = tourService.get_TourLocation("39");
				List<LocationVO> JejuFoodList = foodService.get_FoodLocation("39");
				List<LocationVO> JejuLodgmentList = lodgmentService.get_LodgmentLocation("39");
				
				model.addAttribute("JEJUtour",JejuTourList);
				model.addAttribute("JEJUfood",JejuFoodList);
				model.addAttribute("JEJUlodgment",JejuLodgmentList);

		
		return null;
	}

}