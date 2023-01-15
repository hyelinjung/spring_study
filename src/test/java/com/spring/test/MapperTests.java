package com.spring.test;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.spring.domain.BoardVO;
import com.spring.domain.Criteria;
import com.spring.mapper.BoardMapper;
import com.spring.service.BoardService;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MapperTests {

	@Autowired
	private BoardMapper mapper;
	@Autowired
	private BoardService service;
	
	/*
	 * @Test public void test() { List<BoardVO> getlist = mapper.listboard();
	 * log.info(getlist); }
	 */
	/*
	 * @Test public void test() { BoardVO vo = new BoardVO(); vo.setContent("test");
	 * vo.setTitle("test"); vo.setWriter("test"); log.info(vo);
	 * mapper.insertselectkey(vo); }
	 */
	
	/*
	 * @Test public void test() { BoardVO vo = service.read(5L);
	 * 
	 * if(vo ==null) { return; } log.info("������ �����մϴ�"); vo.setTitle("������ ����");
	 * log.info("���:" + service.update(vo)); }
	 */
	/*
	 * @Test public void test() { BoardVO vo = new BoardVO(); vo.setContent("�׽�Ʈ");
	 * vo.setTitle("�׽�Ʈ"); vo.setWriter("�׽�Ʈ"); service.regist(vo);
	 * 
	 * }
	 */
	@Test
	public void test() {
		service.listread(new Criteria(2,10)).forEach(board ->log.info(board));
		
	}
}
