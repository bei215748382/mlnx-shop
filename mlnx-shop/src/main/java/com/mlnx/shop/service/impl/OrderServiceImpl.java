package com.mlnx.shop.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mlnx.shop.entity.TOrder;
import com.mlnx.shop.mapper.TOrderMapper;
import com.mlnx.shop.service.OrderService;
import com.mlnx.shop.util.ShopResponse;
import com.mlnx.shop.util.EnumCollection.ResponseCode;

@Service
public class OrderServiceImpl implements OrderService {
	
	@Autowired
	private TOrderMapper tOrderMapper;

	@Override
	public ShopResponse add(TOrder order) {
		try{
			tOrderMapper.insert(order);
			return new ShopResponse(ResponseCode.ADD_ORDER_SUCCESS);
		} catch (Exception e){
			e.printStackTrace();
			return new ShopResponse(ResponseCode.ADD_ORDER_ERROR);
		}
	}

	@Override
	public ShopResponse edit(TOrder order) {
		try{
			tOrderMapper.updateByPrimaryKey(order);
			return new ShopResponse(ResponseCode.UPDATE_ORDER_SUCCESS);
		} catch (Exception e){
			e.printStackTrace();
			return new ShopResponse(ResponseCode.UPDATE_ORDER_ERROR);
		}
	}

	@Override
	public ShopResponse delete(int id) {
		try{
			tOrderMapper.deleteByPrimaryKey(id);
			return new ShopResponse(ResponseCode.DELETE_ORDER_SUCCESS);
		} catch (Exception e){
			e.printStackTrace();
			return new ShopResponse(ResponseCode.DELETE_ORDER_ERROR);
		}
	}


}
