package com.bookforyou.bk4u.member.model.service;


import com.bookforyou.bk4u.member.model.vo.Member;
import com.bookforyou.bk4u.member.model.vo.MemberCategory;
import com.bookforyou.bk4u.member.model.vo.MemberInterest;

public interface MemberService {
	
	Member loginMember(Member member);

	int idCheck(String memId);

	int nickCheck(String memNickname);

	int emailCheck(String memEmail);

	int insertMember(Member member);

	int updateEmailStatus(Member member);

	int selectByMemId(Member member);

	int insertMemberInterest(MemberInterest memberInterest);

	int insertMemberCategory(MemberCategory memberCategory);

	Member selectEmailAndAuthKey(Member member);

	
}

