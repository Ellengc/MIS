package Service;

import java.util.List;

import Entity.MenAndKucun;

public interface KuCunService {
	public List<MenAndKucun> getAllKuCun(String hql,int pageNo,int pageSize);
}
