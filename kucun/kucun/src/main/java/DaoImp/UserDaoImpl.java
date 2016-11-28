package DaoImp;

import org.hibernate.Query;

import BaseDaoImp.BaseHibernate4DaoImpl;
import Dao.UserDao;
import Entity.User;

public class UserDaoImpl extends BaseHibernate4DaoImpl<User> implements UserDao{
	public User geyByUsername(String username){
		Query query=getSessionFactory().getCurrentSession()
		.createQuery("from User u where u.username=:username").setString("username", username);
		return (User)query.uniqueResult();
	}
}
