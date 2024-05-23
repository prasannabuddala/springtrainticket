package com.mypackage.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.mypackage.model.Station;
import com.mypackage.model.StationMapper;

@Repository
public class GetStationsDal implements GetStationsDao {
	JdbcTemplate jdbcTemplate;

	private final String SQL_GET_STATIONS = "select * from stations_pr";

	@Autowired
	public GetStationsDal(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}

	public List<Station> getStations() {
		return jdbcTemplate.query(SQL_GET_STATIONS, new StationMapper());
	}
}
