package com.project.dao;

import com.project.dto.MemberDTO;

public interface MemberDAO {
    public String loginCheck(MemberDTO dto);
}