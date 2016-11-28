package Action;

import Entity.MenDian;

public class MenDianAction extends BaseAction<MenDian>{

	
	public String getAllMenDian(){
		lists=menDianService.getAllMenDian();
		return "getAllMenDian";
	}
}
