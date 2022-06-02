package com.pk.pt.member;

import java.util.List;

public interface MemberMapper {
	
	public abstract int join(Member m);
	public abstract List<Member> login(Member m);

}
