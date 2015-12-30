package com.mlnx.shop.service;

import java.util.Map;

import com.mlnx.shop.entity.TGoods;
import com.mlnx.shop.util.ShopResponse;

public interface GoodsService {
	
	// 添加商品
	public ShopResponse add(TGoods goods);

	// 编辑商品
	public ShopResponse edit(TGoods goods);

	// 删除商品
	public ShopResponse delete(int goods_id);

	// 出售商品
	public ShopResponse sell(int goods_id);

	// 商品下架
	public ShopResponse soldOut(int goods_id);

	// 按时间、价格、销量、人气、分页等各种查询条件查找
	public Map<String, Object> selectByMap(Map<String,Object> map);
	
}
