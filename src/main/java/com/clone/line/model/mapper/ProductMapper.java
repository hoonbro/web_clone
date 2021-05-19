package com.clone.line.model.mapper;

import java.sql.SQLException;
import java.util.List;

import com.clone.line.model.Member;
import com.clone.line.model.Product;
import com.clone.line.model.ProductDetail;
import com.clone.line.model.SearchCondition;

public interface ProductMapper {
	public List<Product> getList() throws SQLException;
	
	//restful
	public List<Product> orderby(String data);

	public ProductDetail getProductInfo(String pNum) throws SQLException;
	
	public void setLike(Member member);
	
	public int getLike(String data);
	
	public int getTotalCount(SearchCondition condition);
	
	public List<Product> search(SearchCondition condition);
  
	public void deleteLike(Member member);
}
