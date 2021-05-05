package com.clone.line.model.mapper;

import java.sql.SQLException;
import java.util.Map;

import com.clone.line.model.Member;

public interface MemberMapper {
	public Member login(Map<String, String> map) throws SQLException;
	
	public void join(Member member) throws SQLException;
}
