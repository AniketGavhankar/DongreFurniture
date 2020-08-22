package com.example.demo.repository;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.example.demo.model.MainTypeModel;

@Repository("mainTypeRepository")
public class MainTypeRepository {

	@Autowired
	JdbcTemplate template;
	
	List<MainTypeModel> list;
	public MainTypeModel save(MainTypeModel model) {

		int value = template.update("insert into maintype values ('0',?)", new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setString(1, model.getName());

			}

		});
		if (value > 0) {
			return model;
		} else {
			return null;
		}
	}
	public List<MainTypeModel> findAll(){
		this.list = template.query("select * from maintype", new RowMapper<MainTypeModel> () {

			@Override
			public MainTypeModel mapRow(ResultSet rs, int rowNum) throws SQLException {
				
				MainTypeModel model=new MainTypeModel();
				model.setId(rs.getInt(1));
				model.setName(rs.getString(2));
				return model;
			}
			
		});
		return list ;
		
	}
	public void deletedById(int typeid) {
		// TODO Auto-generated method stub
		
	}
	
	public boolean update(MainTypeModel model) {
		String sql="update maintye name=? where id=?";
		template.update(sql, model.getName(),model.getId());
		return true;
	}

}
