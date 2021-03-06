package com.lps.web.workrank.dto;

import com.lps.model.WorkRank;
import com.lps.util.PageBean;
import com.lps.web.basicmsg.dto.DtoInitException;
import com.lps.web.page.dto.TablePage;
import com.lps.web.page.dto.PageAble;

public class WorkRankTableDto extends TablePage<WorkRank>{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 6224422883304452337L;
	
	private TWorkRankDto workRanks ;

	
	@Override
	public void init(PageBean<WorkRank> lOrders, PageAble queryOrderDto,  String actionName) throws DtoInitException {
		super.init(lOrders, queryOrderDto, actionName);
		
		workRanks.init(lOrders.getList());
		
	}


	public TWorkRankDto getWorkRanks() {
		return workRanks;
	}


	public void setWorkRanks(TWorkRankDto workRanks) {
		this.workRanks = workRanks;
	}



}
