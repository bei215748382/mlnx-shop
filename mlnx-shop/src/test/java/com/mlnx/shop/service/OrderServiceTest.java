package com.mlnx.shop.service;


import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mlnx.shop.base.TestBase;
import com.mlnx.shop.entity.TOrder;

@Service
public class OrderServiceTest extends TestBase{

	@Autowired
	private OrderService orderService;
	
	@Test
	public void testAdd() {
		for(int i = 0 ; i < 10 ; i++){
			Integer[] goodsIds = new Integer[]{1,2,3,4};
			TOrder order = new TOrder();
			order.setName("11");
			order.setState("未支付订单");
			order.setGoodsIds(i+"");
			System.out.println(orderService.add(order));
		}
	}
	
	
	@Test
	public void testEdit() {
		TOrder order = new TOrder();
		order.setId(4);
		order.setName("一吃完");
		order.setState("交易成功订单");
		System.out.println(orderService.edit(order));
	}

	@Test
	public void testDelete() {
		System.out.println(orderService.delete(4));
	}

}
