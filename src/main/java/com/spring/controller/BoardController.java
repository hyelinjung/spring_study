package com.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.domain.BoardVO;
import com.spring.domain.Criteria;
import com.spring.domain.PageDTO;
import com.spring.service.BoardService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping(value = "/board/*")
public class BoardController {
	
	@Autowired
	private BoardService service;
	
	/*
	 * @GetMapping(value = "list") public List<BoardVO> list(){ List<BoardVO> list =
	 * service.listread();
	 * 
	 * return list;
	 * 
	 * 
	 * }
	 */
	@GetMapping(value = "list")
	public void list(Criteria criteria,  Model model){
		model.addAttribute("list", service.listread(criteria)) ;
		model.addAttribute("pageMaker", new PageDTO(criteria, 123));
	
	}
	@PostMapping(value = "register")
	public String register(BoardVO vo ,RedirectAttributes attr) {
		log.info("등록함수입장");
		service.regist(vo);
		log.info(vo);
		attr.addFlashAttribute("result", vo.getBno());
		return "redirect:/board/list";
	}
	@GetMapping(value="register")
	public void getregister() {
		
	}
	@GetMapping({"read","modify"})
	public void read(Long bno,Model model) {
		
		 model.addAttribute("board", service.read(bno));
		 
	}
	@PostMapping(value = "update")
	public String update(BoardVO vo, RedirectAttributes attr) {
		 
		if(service.update(vo) ) {
			attr.addFlashAttribute("result", "success");
			
		}
		
		return "redirect:/board/list";
	}
	
	
	@PostMapping(value = "delete")
	public String delete(Long bno, RedirectAttributes attr) {
		
		if(service.delete(bno) ) {
			attr.addFlashAttribute("result", "success");
			
		}
		
		return "redirect:/board/list";
	}

}
