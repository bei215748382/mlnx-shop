package com.mlnx.shop.service;

import com.mlnx.shop.entity.TOrder;
import com.mlnx.shop.util.ShopResponse;

public interface OrderService {

	// 生成订单
	public ShopResponse add(TOrder order);

	// 编辑订单
	public ShopResponse edit(TOrder order);

	// 删除订单
	public ShopResponse delete(int id);
	
}
