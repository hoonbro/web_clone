package com.clone.line.model.service;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.clone.line.model.Member;
import com.clone.line.model.mapper.MemberMapper;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public Member login(Map<String, String> map) throws Exception {
		if(map.get("userId") == null || map.get("userPwd") == null) {
			return null;
		}
		return sqlSession.getMapper(MemberMapper.class).login(map);
	}

	@Override
	public void join(Member member) throws Exception {
		sqlSession.getMapper(MemberMapper.class).join(member);
	}
}
