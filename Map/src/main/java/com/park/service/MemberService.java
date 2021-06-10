package com.park.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.park.member.MemberDAO;
import com.park.member.MemberDTO;

@Service
public class MemberService {
	
	@Autowired
	private MemberDAO dao;
	
	public MemberDTO getMember(MemberDTO user) {
		return dao.selectMember(user);
	}
}
