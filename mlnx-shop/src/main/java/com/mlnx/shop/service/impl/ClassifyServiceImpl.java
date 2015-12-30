package com.mlnx.shop.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mlnx.shop.entity.TClassify;
import com.mlnx.shop.mapper.TClassifyMapper;
import com.mlnx.shop.service.ClassifyService;
import com.mlnx.shop.util.ShopResponse;
import com.mlnx.shop.util.EnumCollection.ResponseCode;

@Service
public class ClassifyServiceImpl implements ClassifyService {
	
	@Autowired
	private TClassifyMapper tClassifyMapper;

	@Override
	public ShopResponse add(TClassify classify) {
		try{
			tClassifyMapper.insert(classify);
			return new ShopResponse(ResponseCode.ADD_CLASSIFY_SUCCESS);
		} catch (Exception e){
			e.printStackTrace();
			return new ShopResponse(ResponseCode.ADD_CLASSIFY_ERROR);
		}
	}

	@Override
	public ShopResponse edit(TClassify classify) {
		try{
			tClassifyMapper.updateByPrimaryKey(classify);
			return new ShopResponse(ResponseCode.UPDATE_CLASSIFY_SUCCESS);
		} catch (Exception e){
			e.printStackTrace();
			return new ShopResponse(ResponseCode.UPDATE_CLASSIFY_ERROR);
		}
	}

	@Override
	public ShopResponse delete(int classify_id) {
		try{
			tClassifyMapper.deleteByPrimaryKey(classify_id);
			return new ShopResponse(ResponseCode.DELETE_CLASSIFY_SUCCESS);
		} catch (Exception e){
			e.printStackTrace();
			return new ShopResponse(ResponseCode.DELETE_CLASSIFY_ERROR);
		}
	}

}
