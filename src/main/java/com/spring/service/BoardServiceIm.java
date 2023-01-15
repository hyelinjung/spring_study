package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.domain.BoardVO;
import com.spring.domain.Criteria;
import com.spring.mapper.BoardMapper;

import lombok.extern.log4j.Log4j;


@Service
@Log4j
public class BoardServiceIm implements BoardService {

	@Autowired
	private BoardMapper mapper;
	
	@Override
	public void regist(BoardVO vo) {
		mapper.insertselectkey(vo);
		
	}

	@Override
	public BoardVO read(Long bno) {
		return mapper.read(bno);
	}

	@Override
	public boolean update(BoardVO vo) {
		// TODO Auto-generated method stub
		return mapper.update(vo) ==1;
	}

	@Override
	public boolean delete(Long bno) {
		
		return mapper.delete(bno) == 1;
	}


	@Override
	public List<BoardVO> listread(Criteria criteria) {
		log.info(criteria);
		return mapper.listPaging(criteria);
	}

}
