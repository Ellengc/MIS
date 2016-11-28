package Action;

import Entity.Goods;

public class GoodsAction extends BaseAction<Goods>{
    
	
   public String getAllGoods(){
	
	
	   lists=goodsService.getAllGoods();
	   
	   return "getAllGoods";
   }
}
