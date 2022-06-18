package com.pk.pt.cart;

import java.util.List;

public interface CartMapper {
	
	public abstract void addCart(Cart c);
	public abstract List<CartList> cartList(String tm_id);
	public abstract void deleteCart(Cart c);

}
