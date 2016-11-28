package ServiceImp;

import java.util.List;

import Dao.KuCunDao;
import Entity.MenAndKucun;
import Entity.MenDian;
import Service.KuCunService;


public class KuCunServiceImpl implements KuCunService {
  
	private KuCunDao kuCunDao;

	public void setKuCunDao(KuCunDao kuCunDao) {
		this.kuCunDao = kuCunDao;
	}
	@Override
	public List<MenAndKucun> getAllKuCun(String hql,int pageNo,int pageSize){
		
		return kuCunDao.findByPage(hql, pageNo, pageSize);
	}
	

}
