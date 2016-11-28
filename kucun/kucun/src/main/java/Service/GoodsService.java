package Service;

import java.util.List;

import Entity.Goods;

public interface GoodsService {
	public List<Goods> getAllGoods();
	public Long getGoodsCount();
}
