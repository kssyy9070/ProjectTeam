package com.pk.pt.goods;

import java.util.List;


public interface GoodsMapper {
	
	public abstract int regGoods(Goods g);
	public abstract List<Goods> getAllGoods();
	public abstract Goods goodsRead(Goods g);
	public abstract int goodsUpdate(Goods g);
	public abstract int goodsDelete(Goods g);
}
