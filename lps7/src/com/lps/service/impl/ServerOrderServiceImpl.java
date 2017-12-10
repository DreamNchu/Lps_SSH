package com.lps.service.impl;

import java.util.Date;
import java.util.List;
import java.util.Map;

import com.lps.dao.ServerOrderDAO;
import com.lps.model.ServerOrder;
import com.lps.model.basic.BasicModel;
import com.lps.service.ServerOrderService;
import com.lps.uenum.CompareLevel;
import com.lps.util.PageBean;
import com.lps.util.PagePropertyNotInitException;
import com.lps.util.PropertyRange;
import com.lps.util.WorkDate;

//@Component("adminServiceImpl")
//@Aspect
public class ServerOrderServiceImpl implements ServerOrderService {

	private ServerOrderDAO dao;

	private PageBean<ServerOrder> pageServerOrderBean;
	

	public PageBean<ServerOrder> getPageServerOrderBean() {
		return pageServerOrderBean;
	}

	public void setPageServerOrderBean(PageBean<ServerOrder> pageServerOrderBean) {
		this.pageServerOrderBean = pageServerOrderBean;
	}

	@Override
	public void delete(ServerOrder workStatus) {
		dao.delete(workStatus);
	}

	@Override
	public List<ServerOrder> findAll() {
		return dao.findAll();
	}

	@Override
	public long findAllCount() {
		return dao.findAllCount();
	}

	@Override
	public ServerOrder findById(int id) {
		return dao.findById(id);
	}

	@Override
	public List<ServerOrder> findByProperty(String propertyName, Object value) {
		return dao.findByProperty(propertyName, value);
	}

	public ServerOrderDAO getServerOrderDao() {
		return dao;
	}

	@Override
	public void save(ServerOrder workStatus) {
		dao.save(workStatus);
	}

	public void setServerOrderDao(ServerOrderDAO workStatusDao) {
		this.dao = workStatusDao;
	}

	@Override
	public boolean isExists(ServerOrder user) {
		return dao.isExists(user);
	}

	@Override
	public void update(ServerOrder t) {
		dao.update(t);
	}

	@Override
	public ServerOrder findById(String id) {
		return dao.findById(id);
	}

	@Override
	public List<ServerOrder> findByPayPath(Object property) {
		return dao.findByPayPath(property);
	}

	@Override
	public List<ServerOrder> findByUser(Object property) {
		return dao.findByUser(property);
	}

	@Override
	public List<ServerOrder> findByPledge(Object property) {
		return dao.findByPledge(property);
	}

	@Override
	public List<ServerOrder> findByClockCategory(Object property) {
		return dao.findByClockCategory(property);
	}

	@Override
	public List<ServerOrder> findTodayOrder() {
		return dao.findOrdersByDateLimit(WorkDate.getTodayDate()
				, WorkDate.getTomorrowDate());
	}

	@Override
	public List<ServerOrder> findOrderByDate(Date date) {
		return dao.findOrdersByDateLimit(date, WorkDate.getNextDate(date));
	}

	@Override
	public List<ServerOrder> findOrderByDateLimit(Date begin, Date end) {
		return dao.findOrdersByDateLimit(begin, WorkDate.getNextDate(end));
	}

	@Override
	public List<ServerOrder> findAllOrderLessThanPrice(int price) {
		return dao.findOrderByPriceLimit(price, CompareLevel.LESS_THAN);
	}

	@Override
	public List<ServerOrder> findOrderLessThanPriceDate(int price, Date begin, Date end) {
		return dao.findOrderByPriceAndDateLimit(price, begin, end, CompareLevel.LESS_THAN);
	}

	@Override
	public List<ServerOrder> findOrderMoreThanPrice(int price) {
		return dao.findOrderByPriceLimit(price, CompareLevel.MORE_THAN);
	}

	@Override
	public List<ServerOrder> findOrderMoreThanPriceDate(int price, Date begin, Date end) {
		return dao.findOrderByPriceAndDateLimit(price, begin, end, CompareLevel.MORE_THAN);
	}

	@Override
	public PageBean<ServerOrder> findByPage(int page) throws PagePropertyNotInitException {
		long begin = pageServerOrderBean.init(findAllCount(), page);

		List<ServerOrder> list = dao.findListByLimit( begin, pageServerOrderBean.getLimit());

		pageServerOrderBean.setList(list);

		return pageServerOrderBean;
	}

	@Override
	public List<ServerOrder> findBefore7DayOrders() {
		return dao.findOrdersByDateLimit(WorkDate.getBefore7DayDate(), WorkDate.getTomorrowDate());
	}

	@Override
	public List<ServerOrder> findThisMonthOrders() {
		return dao.findOrdersByDateLimit(WorkDate.getBeginOfThisMonthDate(), WorkDate.getTomorrowDate());
	}

	@Override
	public List<ServerOrder> findThisYearOrders() {
		return dao.findOrdersByDateLimit(WorkDate.getBeginOfThisYearDate(), WorkDate.getTomorrowDate());
	}

	@Override
	public <K> ServerOrder findFields(BasicModel<K> t, Map<String, Class<?>> fields) {
		return dao.findFields(t, fields);
	}

	@Override
	public <K> List<K> findIdByProperty(Map<String, Object> map) {
		return dao.findIdByProperty(map);
	}
	
	@Override
	public PageBean<ServerOrder> findOrdersByPropertyLimit(List<PropertyRange> listPro, int page) throws PagePropertyNotInitException {
		long begin = pageServerOrderBean.init(dao.findOrdersByProperyLimitCount(listPro), page);

		List<ServerOrder> list = dao.findOrdersByProperyLimit(listPro, (int) begin,
				(int) pageServerOrderBean.getLimit());

		pageServerOrderBean.setList(list);

		return pageServerOrderBean;

	}
	

	@Override
	public PropertyRange createPropertyRangeByName(String propertyName, Object o1, Object o2) {
		PropertyRange pr = new PropertyRange(propertyName, o1, o2);
		return pr;
	}

	@Override
	public List<ServerOrder> findOrdersByProperyLimit(List<PropertyRange> listPro, int begin, int limit) {
		return dao.findOrdersByProperyLimit(listPro, begin, limit);
	}


}
