package com.mlnx.shop.col;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mlnx.shop.entity.TGoods;
import com.mlnx.shop.service.GoodsService;
import com.mlnx.shop.util.StringUtil;

@Controller
@RequestMapping(value = "/goods")
public class GoodsCol {

	@Autowired
	private GoodsService goodsService;

	// 搜索
	@RequestMapping(value = "/search")
	public ModelAndView search(HttpServletRequest request,Integer classifyId,Integer activitiyId,Integer valid,Integer start,Integer end,String date,String price,String populartiy,String sales) {
		ModelAndView mav = new ModelAndView("shop/goods/search");
		Map<String, Object> map = new HashMap<String, Object>(); 
		map.put(StringUtil.classifyId, classifyId);
		map.put(StringUtil.activitiyId, activitiyId);
		map.put(StringUtil.valid, valid);
		map.put(StringUtil.start, start);
		map.put(StringUtil.end, end);
		map.put(StringUtil.date, date);
		map.put(StringUtil.price, price);
		map.put(StringUtil.populartiy, populartiy);
		map.put(StringUtil.sales, sales);
		List<TGoods> goods = goodsService.findGoods(map);
		mav.addObject("goods", goods);
		return mav;
	}
}
