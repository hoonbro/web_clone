package com.clone.line.model.service;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.clone.line.model.Product;
import com.clone.line.model.mapper.ProductMapper;

@Service
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<Product> getList() throws SQLException {
		return sqlSession.getMapper(ProductMapper.class).getList();
	}

	@Override
	public List<Product> orderby(String data) {
		System.out.println(data);
		return sqlSession.getMapper(ProductMapper.class).orderby(data);
	}
}
