package Dao;

import BaseDao.BaseHibernateDao;
import Entity.User;

public interface UserDao extends BaseHibernateDao<User>{
	public User geyByUsername(String username);
}
