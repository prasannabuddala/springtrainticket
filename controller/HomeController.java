package com.mypackage.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mypackage.dao.GetStationsDao;
import com.mypackage.model.Station;

@Controller
public class HomeController {
	private final GetStationsDao stationsDao;

	@Autowired
	public HomeController(GetStationsDao stationsDao) {
		this.stationsDao = stationsDao;
	}

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String getLogin(Model model) {
		List<Station> stations = stationsDao.getStations();
		model.addAttribute("stationsList", stations);
		return "home";
	}
}
