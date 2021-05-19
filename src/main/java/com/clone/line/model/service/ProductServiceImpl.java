package com.clone.line.model.service;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.clone.line.model.Member;
import com.clone.line.model.Product;
import com.clone.line.model.ProductDetail;
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
		return sqlSession.getMapper(ProductMapper.class).orderby(data);
	}

	@Override
	public ProductDetail getProductInfo(String pNum) throws SQLException {
		return sqlSession.getMapper(ProductMapper.class).getProductInfo(pNum);
	}

	@Override
	public void setLike(Member member) {
		sqlSession.getMapper(ProductMapper.class).setLike(member);
	}

	@Override
	public void deleteLike(Member member) {
		sqlSession.getMapper(ProductMapper.class).deleteLike(member);
	}
}
