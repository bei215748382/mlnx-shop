package com.mlnx.shop.service;

import static org.junit.Assert.fail;

import java.util.HashMap;
import java.util.Map;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.mlnx.shop.base.TestBase;
import com.mlnx.shop.entity.TGoods;

public class GoodsServiceTest extends TestBase {

	@Autowired
	private GoodsService goodsService;

	@Test
	public void testAdd() {
		for (int i = 0; i < 10; i++) {
			TGoods goods = new TGoods();
			goods.setName("商品一");// 名称
			goods.setPrice(1.00);// 单价
			goods.setStore(10);// 库存
			System.out.println(goodsService.add(goods));
		}
	}

	@Test
	public void testEdit() {
		TGoods goods = new TGoods();
		goods.setId(1);
		goods.setPopulartiy(1);
		System.out.println(goodsService.edit(goods));
	}

	@Test
	public void testDelete() {
		System.out.println(goodsService.delete(1));
	}

	@Test
	public void testSell() {
		System.out.println(goodsService.sell(2));
	}

	@Test
	public void testSoldOut() {
		System.out.println(goodsService.soldOut(2));
	}

	@Test
	public void testSelectByMap() {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("classifyId", 1);
		map.put("valid", 1);
		map.put("start",0);
		map.put("end", 2);
		System.out.println(goodsService.selectByMap(map));
	}
	
	@Test
	public void findGoods(){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("classifyId", 1);
		map.put("valid", 1);
		map.put("start",0);
		map.put("end", 2);
		System.out.println(goodsService.findGoods(map));
	}

}
