package com.lps.service.impl;

import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.lps.dao.AdminDAO;
import com.lps.dao.basic.BasicDAO;
import com.lps.dao.impl.AdminDAOImpl;
import com.lps.dao.impl.ServerOrderDAOImpl;
import com.lps.model.Admin;
import com.lps.model.OrderStatus;
import com.lps.model.basic.BasicModel;
import com.lps.service.AdminService;
import com.lps.util.PageBean;
import com.lps.util.PagePropertyNotInitException;
import com.lps.util.PropertyRange;

//@Component("adminServiceImpl")
//@Aspect
public class AdminServiceImpl implements AdminService {

	private AdminDAO dao;

	/**
	 * 将admin实体类封装到pagebean中
	 */
	private PageBean<Admin> pageAdminBean;

	/**
	 * 获取实体类集合
	 * @return 返回实体类
	 */
	public PageBean<Admin> getPageAdminBean() {
		return pageAdminBean;
	}

	/**
	 * 设置实体类集合
	 * @param pageAdminBean admin实体类
	 */
	public void setPageAdminBean(PageBean<Admin> pageAdminBean) {
		this.pageAdminBean = pageAdminBean;
	}

	/**
	 * 获取adminDao实例
	 * @return 返回adminDao实例
	 */
	public AdminDAO getAdminDao() {
		return dao;
	}
	  /**
	   * 设置adminDao实例
	   * @param adminDao
	   */
	// @Resource(name="adminDAOImpl")
	public void setAdminDao(AdminDAO adminDao) {
		this.dao = adminDao;
	}

	/**
	 * 保存admin实例
	 */
	@Override
	public void save(Admin admin) {
		dao.save(admin);
	}

	/**
	 * 删除admin实例
	 */
	@Override
	public void delete(Admin admin) {
		dao.delete(admin);
	}

	/**
	 * 根据账户名查找管理员，返回管理员实例
	 */
	@Override
	public Admin findByUserName(String name) {
		return dao.getByUserName(name);
	}

	/**
	 * 根据id查找管理员，返回管理员实例
	 * @throws FindByIdGetNullException 
	 */
	@Override
	public Admin findById(java.io.Serializable id) throws FindByIdGetNullException {
		Admin admin = dao.findById(id);
		if(admin == null){
			throw new FindByIdGetNullException("根据主键id未找到管理员对象");
		}
		return dao.findById(id);
	}

	/**
	 * 根据id查找admin实例是否存在
	 * @return 存在则返回true，否则返回false
	 */
	@Override
	public boolean isExists(Admin admin) {
		return dao.isExists(admin);
	}

	/**
	 * 根据id找到指定admin实例，获取该管理员注册时间
	 * @throws FindByIdGetNullException 
	 */
	@Override
	public Date findRegisterTime(Admin admin) throws FindByIdGetNullException {
		return findById(admin.getId()).getRegisterTime();
	}

	/**
	 * 根据id找到指定admin实例，获取该管理员头像
	 * @throws FindByIdGetNullException 
	 */
	@Override
	public String getAvatar(Admin admin) throws FindByIdGetNullException {
		return findById(admin.getId()).getAvatar();
	}

	/**
	 * 根据指定属性及其属性值查找admin实例，返回指定admin实例
	 */
	@Override
	public List<Admin> findByProperty(String propertyName, Object value) {
		return dao.findByProperty(propertyName, value);
	}
	/*
	@Override
	public List<Admin> findByRegisterTime(Timestamp value){
		return adminDao.getByRegisterTime(value);
	}*/

	/**
	 * 查找所有admin实例
	 */

	@Override
	public List<Admin> findAll() {
		return dao.findAll();
	}

	/**
	 * 查找所有实例个数
	 */
	@Override
	public long findAllCount() {
		return dao.findAllCount();
	}

	@Override
	public PageBean<Admin> findByPage(int page) throws PagePropertyNotInitException {
		
		
		long begin = pageAdminBean.init(findAllCount(), page);

		List<Admin> list = dao.findListByLimit(begin, pageAdminBean.getLimit());

		pageAdminBean.setList(list);

		return pageAdminBean;
		
	}

	@Override
	public void update(Admin entity) {
		dao.update(entity);
	}

	/**
	 * 根据账户名查找admin，并返回admin的密码
	 */
	@Override
	public String findPasswordByUserName(String userName) throws UserNotExistsException{
		int id;
		id = findIdByUserName(userName);
		if(id == NOT_EXISTS){
			throw new UserNotExistsException("用户名不存在");
		}
		Admin admin = new Admin.Builder().setId(id).build();
		return findPassword(admin);
	}

	/**
	 * 获取admin实例密码
	 */
	@Override
	public <T> String findPassword(BasicModel admin) {
		Map<String, Class<?>> map = new HashMap<String, Class<?>>();
		map.put(AdminDAOImpl.PASSWORD, String.class);
		Admin ad = dao.findFieldsByModel(admin, map);
		if (ad != null) {
			return ad.getPassword();
		}
		return null;
	}

	/**
	 * 根据账户名查找哈希表内admin实例的id
	 */
	@Override
	public int findIdByUserName(String name) {
		Map<String, Object> map = new HashMap<>();
		map.put(AdminDAOImpl.USER_NAME, name);
		List<Object> list = dao.findByProperty(map);
		 if(list != null && list.size() > 0){
			return (int) dao.findByProperty(map).get(0);
		 }
		 return NOT_EXISTS;
	}
	
	@Override
	public <K> Admin findFieldsByModel(BasicModel entity, Map<String, Class<?>> fields) {
		return dao.findFieldsByModel(entity, fields);
	}

	@Override
	public <K> List<K> findByProperty(Map<String, Object> map) {
		return dao.findByProperty(map);
	}
	
	/*@Override
	public PropertyRange<Admin> createPropertyRangeById(java.io.Serializable id1) throws FindByIdGetNullException {
		PropertyRange<Admin> pr = new PropertyRange<>();
		
		pr.setName(BasicDAO.ID);
		pr.setMinValue(findById(id1));
		pr.setMaxValue(pr.getMinValue());
		
		return pr;
	}*/

	@Override
	public void deleteAll(Collection<Admin> entities) {
		dao.deleteAll(entities);
	}


}
