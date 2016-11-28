package ServiceImp;

import java.util.List;

import Dao.GoodsDao;
import Entity.Goods;
import Service.GoodsService;

public class GoodsServiceImpl implements GoodsService {
	public GoodsDao goodsDao;

	public void setGoodsDao(GoodsDao goodsDao) {
		this.goodsDao = goodsDao;
	}
    @Override
	public List<Goods> getAllGoods() {
		
           return goodsDao.findAll(Goods.class);
	}
    @Override
	public Long getGoodsCount(){
		return goodsDao.findCount(Goods.class);
	}
}
