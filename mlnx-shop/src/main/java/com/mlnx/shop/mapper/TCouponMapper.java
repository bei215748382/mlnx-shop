package com.mlnx.shop.mapper;

import com.mlnx.shop.entity.TCoupon;
import java.util.List;

public interface TCouponMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TCoupon record);

    TCoupon selectByPrimaryKey(Integer id);

    List<TCoupon> selectAll();

    int updateByPrimaryKey(TCoupon record);
}