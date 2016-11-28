package ServiceImp;

import java.util.List;

import Dao.MenDianDao;
import Entity.MenDian;
import Service.MenDianService;

public class MenDianServiceImpl implements MenDianService{
 public MenDianDao menDianDao;

public void setMenDianDao(MenDianDao menDianDao) {
	this.menDianDao = menDianDao;
}
@Override
 public List<MenDian> getAllMenDian(){
	 return menDianDao.findAll(MenDian.class);
 }
}
