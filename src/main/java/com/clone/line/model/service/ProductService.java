package com.clone.line.model.service;

import java.sql.SQLException;
import java.util.List;

import com.clone.line.model.Product;
import com.clone.line.model.ProductDetail;

public interface ProductService {
	public List<Product> getList() throws SQLException;
	
	//restful
	public List<Product> orderby(String data);
	

	public ProductDetail getProductInfo(String pNum) throws SQLException;

	public void setLike(String pNum);
	
	public int getLike(String pNum);
}
