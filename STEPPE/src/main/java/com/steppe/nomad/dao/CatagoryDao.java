package com.steppe.nomad.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.steppe.nomad.bean.Catagory;

@Repository
public class CatagoryDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public List<Catagory> cList() {
		return sqlSession.selectList("catagory.cList");
	}

	public List<Catagory> cList1(int pc1_id) {
		return sqlSession.selectList("catagory.cList1",pc1_id);
	}	

}
