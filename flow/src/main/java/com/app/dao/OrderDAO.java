package com.app.dao;

import java.util.List;
import java.util.Optional;

import org.apache.ibatis.session.SqlSession;

import com.app.dto.OrderDTO;
import com.app.mybatis.config.MyBatisConfig;
import com.app.vo.OrderVO;

public class OrderDAO {

	public SqlSession sqlSession;
	
	
	public OrderDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
//	주문 추가
	public void isnert(OrderVO orderVO) {
		sqlSession.insert("order.insert", orderVO);
	}
	
//	주문 전체 조회
	public List<OrderDTO> selectAll(Long id) {
		return sqlSession.selectList("order.selectAll", id);
	}
	
//	주문 수량 조회
	public int selectCountById(Long id) {
		return sqlSession.selectOne("order.selectCountById", id);
	}
	
//	주문 삭제
	public void delete(Long id) {
		sqlSession.delete("order.delete", id);
	}
}
