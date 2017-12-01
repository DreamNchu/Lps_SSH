package com.lps.dao.impl;
// default package

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.hibernate.Criteria;
import org.hibernate.FetchMode;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.ProjectionList;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate4.HibernateCallback;
import org.springframework.orm.hibernate4.HibernateTemplate;

import com.lps.dao.OrderStatusDAO;
import com.lps.dao.basic.BasicForServerOrderDAO;
import com.lps.model.Admin;
import com.lps.model.OrderStatus;
import com.lps.model.PayPath;
import com.lps.model.OrderStatus;
import com.lps.model.OrderStatus;
import com.lps.model.ServerOrder;
import com.lps.model.basic.BasicModel;
import com.lps.util.PageHibernateCallback;

public class OrderStatusDAOImpl implements OrderStatusDAO, BasicForServerOrderDAO<OrderStatus, Integer>{
	// property constants
	public static final String WORK_STATUS = "workStatus";

	private HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	@Override
	public void save(OrderStatus transientInstance) {
		hibernateTemplate.save(transientInstance);
	}

	@Override
	public void delete(OrderStatus persistentInstance) {
		hibernateTemplate.delete(persistentInstance);
	}

	@Override
	public OrderStatus findById(int id) {
		return hibernateTemplate.get(OrderStatus.class, id);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<OrderStatus> findByProperty(String propertyName, Object value) {
		String queryString = "from OrderStatus as model where model." + propertyName + "= ?";
		Query queryObject = hibernateTemplate.getSessionFactory().getCurrentSession().createQuery(queryString);
		queryObject.setParameter(0, value);
		return (List<OrderStatus>) queryObject.list();
	}

	@Override
	public List<OrderStatus> findByOrderStatus(Object workStatus) {
		return findByProperty(WORK_STATUS, workStatus);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<OrderStatus> findAll() {
		return (List<OrderStatus>)hibernateTemplate.find("from OrderStatus");
	}

	@Override
	public long findAllCount() {
		String hql="select count(*) from OrderStatus";
        List<Long> list=(List<Long>) this.getHibernateTemplate().find(hql);
        return (long)list.get(0);
	}

	@Override
	public boolean isExists(OrderStatus t) {
		return findById(t.getId()) == null ? false : true;
	}

	@Override
	public List<OrderStatus> findListByLimit(long begin, long limit) {
		String hql="from OrderStatus";
        @SuppressWarnings("unchecked")
		List<OrderStatus> list=(List<OrderStatus>) this.getHibernateTemplate().execute((HibernateCallback<Admin>) new PageHibernateCallback(hql, new Object[]{}, begin, limit));
        if(list!=null&&list.size()>0){
            return list;
        }
        return null;
	}

	@Override
	public void update(OrderStatus t) {
		hibernateTemplate.update(t);
	}

	public static final String SERVER_ORDER = "serverOrders";
	@Override
	public Set<ServerOrder> findAllOrders(OrderStatus t) {
		Session session = hibernateTemplate.getSessionFactory().getCurrentSession();

		OrderStatus ccTemp = (OrderStatus) session.createCriteria(OrderStatus.class)
				.setFetchMode(SERVER_ORDER, FetchMode.JOIN)
				.add(Restrictions.idEq(t.getId())).list().get(0);
		Set<ServerOrder> sos = (Set<ServerOrder>) ccTemp.getServerOrders();

		return sos;
	}

	@Override
	public List<ServerOrder> findOrdersWithLimit(OrderStatus t, long begin, long limit) {
		String hql = "from OrderStatus cc where cc.id=?";
		HibernateCallback<List<OrderStatus>> callback = new PageHibernateCallback<OrderStatus>(hql,
				new Object[] { t.getId() }, begin, limit);
		List<OrderStatus> temp = this.getHibernateTemplate().execute(callback);

		Set<ServerOrder> set = null;
		if (temp != null && temp.size() > 0) {
			set = temp.get(0).getServerOrders();
		}
		List<ServerOrder> list = new ArrayList<ServerOrder>(set);

		if (list != null && list.size() > 0) {
			return list;
		}
		return null;
	}

	@Override
	public long findOrdersCountByThisType(OrderStatus property) {
		
		String hql = "select count(*) from ServerOrder model where model." 
		+ ServerOrderDAOImpl.ORDER_STATUS + "=" + property.getId();
		List<?> list = (List<?>) this.getHibernateTemplate().find(hql);
		return (long) list.get(0);
		
	}

	@Override
	public <K> OrderStatus findFields(BasicModel<K> t, Map<String, Class<?>> fields) {
		Session session = hibernateTemplate.getSessionFactory().getCurrentSession();

		Criteria cri = session.createCriteria(OrderStatus.class)
			.add(Restrictions.idEq(t.getId()));
		ProjectionList proList = Projections.projectionList();
		
		for(String field: fields.keySet()){
			proList.add(Projections.groupProperty(field));
		}
		//设置投影条件
		cri.setProjection(proList);
		List<?> list = cri.list();
		
		OrderStatus clockCategory = new OrderStatus();
		Class<? extends OrderStatus> c = clockCategory.getClass();
		int i = 0;
		
		for(String field: fields.keySet()){
			String str ="set" + field.substring(0,1).toUpperCase()+field.substring(1);
			try {
				c.getDeclaredMethod(str, fields.get(field)).invoke(clockCategory, list.get(i));
			} catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException
					| NoSuchMethodException | SecurityException e) {
				e.printStackTrace();
			}
			i ++;
		}
		
		return clockCategory;
	}

	@Override
	public <K> List<K> findIdByProperty(Map<String, Object> map) {
		Session session = hibernateTemplate.getSessionFactory().getCurrentSession();

		Criteria cri = session.createCriteria(OrderStatus.class);
		
		for(String field: map.keySet()){
			cri.add(Restrictions.eq(field, map.get(field)));
		}
		
		cri.setProjection(Projections.id());
		
		@SuppressWarnings("unchecked")
		List<K> listIds = cri.list();
		
		return listIds;
	}

	@Override
	public List<ServerOrder> findOrdersByDateLimit(OrderStatus os, Date begin, Date end) {
		
		Session session = hibernateTemplate.getSessionFactory().getCurrentSession();
		
		@SuppressWarnings("unchecked")
		List<ServerOrder> ccTemp = (List<ServerOrder>)session.createCriteria(ServerOrder.class)
				.add(Restrictions.between(ServerOrderDAOImpl.INIT_TIME, begin, end))
				.add(Restrictions.eq(ServerOrderDAOImpl.ORDER_STATUS, os))
				.list();
		
		return ccTemp;
	}

}