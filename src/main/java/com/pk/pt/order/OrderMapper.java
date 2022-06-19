package com.pk.pt.order;

import java.util.List;

import com.pk.pt.member.Member;

public interface OrderMapper {
	
	public abstract int orderInfo(Order o);
	public abstract int orderDetails(OrderDetail od);
	public abstract Order orderRead(Order o);
	public abstract List<OrderList> orderView(String tm_id);
	public abstract List<Order> getAllOrder();
}
