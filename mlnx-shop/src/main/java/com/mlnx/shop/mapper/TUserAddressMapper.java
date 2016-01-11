package com.mlnx.shop.mapper;

import java.util.List;

import com.mlnx.shop.entity.TUserAddress;

public interface TUserAddressMapper {
	
	int deleteByPrimaryKey(Integer id);

	int insert(TUserAddress record);

	TUserAddress selectByPrimaryKey(Integer id);

	List<TUserAddress> selectAll();

	int updateByPrimaryKey(TUserAddress record);

	List<String> findAddressById(int user_id);

	List<TUserAddress> findAddressesById(Integer id);

}