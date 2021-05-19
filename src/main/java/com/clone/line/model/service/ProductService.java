package com.clone.line.model.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.clone.line.model.Member;
import com.clone.line.model.Product;
import com.clone.line.model.ProductDetail;
import com.clone.line.model.SearchCondition;

public interface ProductService {
	public List<Product> getList() throws SQLException;
	
	//restful
	public List<Product> orderby(String data);
	
	public ProductDetail getProductInfo(String pNum) throws SQLException;
	
	public int getLike(String pNum);
	
	public Map<String, Object> pagingSearch(SearchCondition condition);

	public void setLike(Member member);
	
	public void deleteLike(Member member);	
}
