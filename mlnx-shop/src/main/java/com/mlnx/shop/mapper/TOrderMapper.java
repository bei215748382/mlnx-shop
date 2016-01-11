package com.mlnx.shop.mapper;

import java.util.List;

import com.mlnx.shop.entity.TOrder;

public interface TOrderMapper {

    int deleteByPrimaryKey(Integer id);

    int insert(TOrder record);

    TOrder selectByPrimaryKey(Integer id);

    List<TOrder> selectAll();

    int updateByPrimaryKey(TOrder record);

	List<TOrder> findOrdersByIdAndState(TOrder order);
    
}