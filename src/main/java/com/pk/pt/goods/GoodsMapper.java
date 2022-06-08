package com.pk.pt.goods;

import java.util.List;

public interface GoodsMapper {
	
	public abstract int regGoods(Goods gs);
	public abstract List<Goods> getAllGoods();
	public abstract Goods goodsRead(Goods g);
}
