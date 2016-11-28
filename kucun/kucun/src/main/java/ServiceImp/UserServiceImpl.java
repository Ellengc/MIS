package ServiceImp;

import Dao.UserDao;
import Entity.User;
import Service.UserService;


public class UserServiceImpl implements UserService{
   public UserDao userDao;

public void setUserDao(UserDao userDao) {
	this.userDao = userDao;
}

@Override
public User geyByUsername(String username) {
	// TODO Auto-generated method stub
	 return userDao.geyByUsername(username);
}
}
