package com.project.dao;

import javax.inject.Inject;
import javax.jms.Session;

import com.project.dto.MemberDTO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
//import com.example.spring02.model.member.dto.MemberDTO;

@Repository // 현재 클래스를 dao bean으로 등록
public class MemberDAOImpl implements MemberDAO {

    @Inject
    sqlSession sqlSession; // SqlSession 의존관계 주입

    @Override
    public String loginCheck(MemberDTO dto) {
        return sqlSession.selectOne("member.login_check", dto);
    }
}