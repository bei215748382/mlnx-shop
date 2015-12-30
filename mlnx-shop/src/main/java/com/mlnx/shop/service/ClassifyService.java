package com.mlnx.shop.service;

import com.mlnx.shop.entity.TClassify;
import com.mlnx.shop.util.ShopResponse;

public interface ClassifyService {

	// 添加分类
	public ShopResponse add(TClassify classify);

	// 编辑分类
	public ShopResponse edit(TClassify classify);

	// 删除分类
	public ShopResponse delete(int classify_id);
}
