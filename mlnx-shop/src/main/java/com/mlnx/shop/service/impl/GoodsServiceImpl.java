package com.mlnx.shop.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mlnx.shop.entity.TGoods;
import com.mlnx.shop.mapper.TGoodsMapper;
import com.mlnx.shop.service.GoodsService;
import com.mlnx.shop.util.EnumCollection.ResponseCode;
import com.mlnx.shop.util.ShopResponse;
import com.mlnx.shop.util.StringUtil;

@Service
public class GoodsServiceImpl implements GoodsService{
	
	@Autowired
	private TGoodsMapper tGoodsMapper;

	@Override
	public ShopResponse add(TGoods goods) {
		try{
			tGoodsMapper.insert(goods);
			return new ShopResponse(ResponseCode.ADD_GOODS_SUCCESS);
		} catch (Exception e){
			e.printStackTrace();
			return new ShopResponse(ResponseCode.ADD_GOODS_ERROR);
		}
		
	}

	@Override
	public ShopResponse edit(TGoods goods) {
		try{
			tGoodsMapper.updateByPrimaryKey(goods);
			return new ShopResponse(ResponseCode.UPDATE_GOODS_SUCCESS);
		} catch (Exception e){
			e.printStackTrace();
			return new ShopResponse(ResponseCode.UPDATE_GOODS_ERROR);
		}
	}

	@Override
	public ShopResponse delete(int goods_id) {
		try{
			tGoodsMapper.deleteByPrimaryKey(goods_id);
			return new ShopResponse(ResponseCode.DELETE_GOODS_SUCCESS);
		} catch (Exception e){
			e.printStackTrace();
			return new ShopResponse(ResponseCode.DELETE_GOODS_ERROR);
		}
	}

	@Override
	public ShopResponse sell(int goods_id) {
		try{
			TGoods goods = new TGoods();
			goods.setId(goods_id);
			goods.setValid(StringUtil.goods_valid_true);
			tGoodsMapper.updateByPrimaryKey(goods);
			return new ShopResponse(ResponseCode.UPDATE_GOODS_VALID_TRUE_SUCCESS);
		} catch (Exception e){
			e.printStackTrace();
			return new ShopResponse(ResponseCode.UPDATE_GOODS_VALID_TRUE_ERROR);
		}
	}

	@Override
	public ShopResponse soldOut(int goods_id) {
		try{
			TGoods goods = new TGoods();
			goods.setId(goods_id);
			goods.setValid(StringUtil.goods_valid_false);
			tGoodsMapper.updateByPrimaryKey(goods);
			return new ShopResponse(ResponseCode.UPDATE_GOODS_VALID_FALSE_SUCCESS);
		} catch (Exception e){
			e.printStackTrace();
			return new ShopResponse(ResponseCode.UPDATE_GOODS_VALID_FALSE_ERROR);
		}
	}

	@Override
	public Map<String, Object> selectByMap(Map<String, Object> map) {
		Map<String,Object> resultMap = new HashMap<String, Object>();
		try{
			List<TGoods> list = tGoodsMapper.selectByMap(map);
			resultMap.put(StringUtil.responseCode, ResponseCode.SEARCH_GOODS_SUCCESS.getCode());
			resultMap.put(StringUtil.responseMsg, ResponseCode.SEARCH_GOODS_SUCCESS.getMsg());
			resultMap.put(StringUtil.responseObjList, list);
		} catch (Exception e){
			e.printStackTrace();
			resultMap.put(StringUtil.responseCode, ResponseCode.SEARCH_GOODS_ERROR.getCode());
			resultMap.put(StringUtil.responseMsg, ResponseCode.SEARCH_GOODS_ERROR.getMsg());
		}
		return resultMap;
	}

}
