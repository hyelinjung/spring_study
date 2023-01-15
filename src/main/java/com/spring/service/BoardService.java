package com.spring.service;

import java.util.List;

import com.spring.domain.BoardVO;
import com.spring.domain.Criteria;

public interface BoardService {
	public void regist(BoardVO vo);
	public BoardVO read(Long bno);
	public boolean update(BoardVO vo);
	public boolean delete(Long bno);
	public List<BoardVO> listread(Criteria criteria);
	
}
