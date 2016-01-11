package com.mlnx.shop.mapper;

import java.util.List;

import com.mlnx.shop.entity.TUserExt;
import com.mlnx.shop.vo.UserVo;

public interface TUserExtMapper {

    int deleteByPrimaryKey(Integer userId);

    int insert(TUserExt record);

    TUserExt selectByPrimaryKey(Integer userId);

    List<TUserExt> selectAll();

    int updateByPrimaryKey(TUserExt record);
    
	/**
	 * 查找个人用户信息
	 * @param phone
	 * @return
	 */
	UserVo findByPhone(String phone);
}