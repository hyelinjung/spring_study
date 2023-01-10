package com.spring.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.spring.domain.BoardVO;

public interface BoardMapper {
	//@Select("select * from t_board where bno>0")
	public List<BoardVO> listboard();
	public void insert(BoardVO vo);
	public void insertselectkey(BoardVO vo);
	public BoardVO read(Long bno);
	public int update(BoardVO vo);
	public int delete(Long bno);
}
