package Action;

import java.util.ArrayList;
import java.util.List;

import Entity.MenAndKucun;
import Entity.MenDian;
import Entity.User;
import util.SearchBackge;

public class MenDianYeWu extends BaseAction<MenAndKucun>{
	

  public int id;
  public String gid;
  public String mid;

  
  
 

public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}



public String getAllKuCun(){
     
	
    if((String.valueOf(((User) session.get("user")).getRenquanxian().getMenDian().getId())).equals("1")){
    SearchBackge searchBackge=new SearchBackge();
    String canshu[][]={{"gid","mid"},{gid,mid}};
    String hql= searchBackge.selectByParam(canshu,"MenAndKucun");
    System.out.println(hql);
    System.out.println("----------------------------"+mid);
    lists=kuCunService.getAllKuCun(hql, page, rows);
	return "getAllKuCun";
    }else{
    	mid=(String.valueOf(((User) session.get("user")).getRenquanxian().getMenDian().getId()));
        SearchBackge searchBackge=new SearchBackge();
        String canshu[][]={{"gid","mid"},{gid,mid}};
        String hql= searchBackge.selectByParam(canshu,"MenAndKucun");
        System.out.println(hql);
        System.out.println("----------------------------"+mid);
        lists=kuCunService.getAllKuCun(hql, page, rows);
    	return "getAllKuCun";
    }
  }



}
