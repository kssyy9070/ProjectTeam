package com.pk.pt.member;

import java.util.List;


public interface MemberMapper {
	
	public abstract int join(Member m);
	public abstract List<Member> login(Member m);
	public abstract int update(Member m);
	public abstract int leave(Member m);
	public abstract List<Member> getAllMember();
}
