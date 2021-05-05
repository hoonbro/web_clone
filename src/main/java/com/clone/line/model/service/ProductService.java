package com.clone.line.model.service;

import java.sql.SQLException;
import java.util.List;

import com.clone.line.model.Product;

public interface ProductService {
	public List<Product> getList() throws SQLException;
}
