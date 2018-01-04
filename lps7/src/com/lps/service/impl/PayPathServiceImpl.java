package com.lps.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import com.lps.dao.PayPathDAO;
import com.lps.dao.basic.BasicDAO;
import com.lps.dao.impl.OrderStatusDAOImpl;
import com.lps.dao.impl.PayPathDAOImpl;
import com.lps.model.PayPath;
import com.lps.model.ClockCategory;
import com.lps.model.OrderStatus;
import com.lps.model.PayPath;
import com.lps.model.ServerOrder;
import com.lps.model.User;
import com.lps.model.basic.BasicModel;
import com.lps.service.PayPathService;
import com.lps.util.PageBean;
import com.lps.util.PagePropertyNotInitException;
import com.lps.util.PropertyRange;
import com.lps.util.WorkDate;

//@Component("adminServiceImpl")
//@Aspect
public class PayPathServiceImpl implements PayPathService {

	/**
	 * 以私有变量的方式保存PayPathDao
	 */
	private PayPathDAO dao;

	/**
	 * 将PayPath实体类封装到pagebean中
	 */
	private PageBean<PayPath> pagePayPathBean;
	
	/**
	 * 根据付费方式得到的ServerOrder实体类封装到pagebean中
	 */

	/**
	 * 获取pagebean中PayPath实体类集合
	 * @return 返回实体类
	 */
	public PageBean<PayPath> getPagePayPathBean() {
		return pagePayPathBean;
	}

	/**
	 * 设置PayPath实体类集合
	 * @param pagePayPathBean 封装的PayPath实体类集合
	 */
	public void setPagePayPathBean(PageBean<PayPath> pagePayPathBean) {
		this.pagePayPathBean = pagePayPathBean;
	}

	private PageBean<ServerOrder> pageServerOrderByPayPathBean;

	public PageBean<ServerOrder> getPageServerOrderByPayPathBean() {
		return pageServerOrderByPayPathBean;
	}

	/**
	 * 设置ServerOrder实体类集合
	 * @param pageServerOrderByPayPathBean 封装的ServerOrder实体类集合
	 */
	public void setPageServerOrderByPayPathBean(PageBean<ServerOrder> pageServerOrderByPayPathBean) {
		this.pageServerOrderByPayPathBean = pageServerOrderByPayPathBean;
	}

	/**
	 * 获取PayPathDao实例
	 * @return 返回PayPathDao实例
	 */
	public PayPathDAO getPayPathDao() {
		return dao;
	}

	/**
	 * 设置PayPathDao实例
	 * @param payPathDao
	 */
	public void setPayPathDao(PayPathDAO payPathDao) {
		this.dao = payPathDao;
	}

	/**
	 * 删除PayPath实例
	 */
	@Override
	public void delete(PayPath payPath) {
		dao.delete(payPath);
	}

	/**
	 * 返回所有PayPath实例
	 */
	@Override
	public List<PayPath> findAll() {
		return dao.findAll();
	}

	/**
	 * 返回所有PayPath实例的数量
	 */
	@Override
	public long findAllCount() {
		return dao.findAllCount();
	}

	/**
	 * 根据id查找付费方式，返回PayPath实例
	 */
	@Override
	public PayPath findById(int id) {
		return dao.findById(id);
	}

	/**
	 * 根据指定属性及其属性值查找PayPath实例，返回指定PayPath实例
	 */
	@Override
	public List<PayPath> findByProperty(String propertyName, Object value) {
		return dao.findByProperty(propertyName, value);
	}

	/**
	 * 根据PayPath属性查找，返回PayPath实例
	 */
	@Override
	public List<PayPath> findByPayPath(Object payPath) {
		return dao.findByPayPath(payPath);
	}

	/**
	 * 保存PayPath实例
	 */
	@Override
	public void save(PayPath payPath) {
		dao.save(payPath);
	}

	/**
	 * 根据id查找PayPath实例是否存在
	 * @return 存在则返回true，否则返回false
	 */
	@Override
	public boolean isExists(PayPath user) {
		return false;
	}

	/**
	 * 根据页面查找页面内所有付费方式
	 */
	@Override
	public PageBean<PayPath> findByPage(int page) throws PagePropertyNotInitException {
		long begin = pagePayPathBean.init(findAllCount(), page);

		List<PayPath> list = dao.findListByLimit(begin, pagePayPathBean.getLimit());

		pagePayPathBean.setList(list);

		return pagePayPathBean;
	}

	/**
	 * 更新PayPath实例
	 */
	@Override
	public void update(PayPath t) {
		dao.update(t);
	}

	/**
	 * 返回指定房间的所有付费方式
	 */
	@Override
	public Set<ServerOrder> findAllOrders(PayPath t) {
		return dao.findAllOrders(t);
	}

	/**
	 * 查找指定页面内根据付费方式得到的所有订单
	 */
	@Override
	public PageBean<ServerOrder> findAllOrdersByPage(PayPath t, int page) throws PagePropertyNotInitException {
		long begin = pageServerOrderByPayPathBean.init(
				findOrdersCountByThisType(t), page);

		List<ServerOrder> list = dao.findOrdersWithLimit(t, begin, pageServerOrderByPayPathBean.getLimit());

		pageServerOrderByPayPathBean.setList(list);

		return pageServerOrderByPayPathBean;
	}

	/**
	 * 根据指定付费方式查找订单数量
	 */
	@Override
	public long findOrdersCountByThisType(PayPath t) {
		return dao.findOrdersCountByThisType(t);
	}

	/**
	 * 查找付费方式字段对应的对象
	 */
	@Override
	public String findPayPath(PayPath payPath) {
		Map<String, Class<?>> map = new HashMap<>();
		map.put(PayPathDAOImpl.PAY_PATH, String.class);
		return dao.findFields(payPath, map).getPayPath();
	}

	/**
	 * 根据付费方式查找订单id，存在则返回id，否则返回NOT_EXISTS
	 */
	@Override
	public int findIdByPayPath(String payPathProperty) {
		Map<String, Object> map = new HashMap<>();
		map.put(PayPathDAOImpl.PAY_PATH, payPathProperty);
		List<Integer> list = dao.findIdByProperty(map);
		if(list != null && list.size() > 0)
			return list.get(0);
		return NOT_EXISTS;
	}
	
	/**
	 * 查找今日订单
	 */
	@Override
	public List<ServerOrder> findTodayOrders(PayPath t) {
		return dao.findOrdersByDateLimit(t, WorkDate.getTodayDate(), WorkDate.getTomorrowDate());
	}

	/**
	 * 查找前七天订单
	 */
	@Override
	public List<ServerOrder> findBefore7DayOrders(PayPath t) {
		return dao.findOrdersByDateLimit(t, WorkDate.getBefore7DayDate(), WorkDate.getTodayDate());
	}

	/**
	 * 查找这个月订单
	 */
	@Override
	public List<ServerOrder> findThisMonthOrders(PayPath t) {
		return dao.findOrdersByDateLimit(t, WorkDate.getBeginOfThisMonthDate(), WorkDate.getTodayDate());
	}

	/**
	 * 查找今年订单
	 */
	@Override
	public List<ServerOrder> findThisYearOrders(PayPath t) {
		return dao.findOrdersByDateLimit(t, WorkDate.getBeginOfThisYearDate(), WorkDate.getTodayDate());
	}


	@Override
	public <K> PayPath findFields(BasicModel<K> t, Map<String, Class<?>> fields) {
		return dao.findFields(t, fields);
	}

	@Override
	public <K> List<K> findIdByProperty(Map<String, Object> map) {
		return dao.findIdByProperty(map);
	}
	
	@Override
	public PropertyRange<PayPath> createPropertyRangeById(int id1) {
		PropertyRange<PayPath> pr = new PropertyRange<>();
		
		pr.setName(BasicDAO.ID);
		pr.setMinValue(findById(id1));
		pr.setMaxValue(findById(id1));
		
		return pr;
	}

}
