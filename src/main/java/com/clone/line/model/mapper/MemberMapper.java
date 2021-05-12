package com.clone.line.model.mapper;

import java.sql.SQLException;
import java.util.Map;
import java.util.Set;

import com.clone.line.model.Member;

public interface MemberMapper {
	public Member login(Map<String, String> map) throws SQLException;
	
	public void join(Member member) throws SQLException;
	
	public Set<String> interest(String userId) throws Exception;
}
