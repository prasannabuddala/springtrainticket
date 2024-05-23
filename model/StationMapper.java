package com.mypackage.model;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class StationMapper implements RowMapper<Station> {

	public Station mapRow(ResultSet resultSet, int i) throws SQLException {
		Station st = new Station();
		st.setSt_id(resultSet.getInt("st_id"));
		st.setSt_name(resultSet.getString("st_name"));
		st.setSt_code(resultSet.getString("st_code"));
		return st;

	}
}
