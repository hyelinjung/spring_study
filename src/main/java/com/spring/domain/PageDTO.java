package com.spring.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class PageDTO {
	private int startPage;
	private int endPage;
	private int total;
	private boolean prev , next;
	private Criteria cri;
	
	public PageDTO(Criteria cri, int total) {
		this.endPage = (int)(Math.ceil(cri.getPageNum()/10.0))*10; //페이지 번호 10개씩
		this.total = total;
		this.cri = cri;
		this.startPage = this.endPage - 9;
		int realEnd = (int)(Math.ceil(total*1.0)/cri.getAmount());
		if(realEnd<this.endPage) {
			realEnd = this.endPage;
		}
		this.prev = this.startPage >1;
		this.next = this.endPage <realEnd;
	}

}
