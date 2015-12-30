package com.mlnx.shop.service;

import java.util.Map;

import com.mlnx.shop.entity.TUser;
import com.mlnx.shop.exception.RegisterException;
import com.mlnx.shop.util.ShopResponse;

public interface UserService {

	// 注册用户,手机号、密码注册
	public ShopResponse regist(TUser user) throws RegisterException;

	// 登入
	public Map<String, Object> login(TUser user);

	// 查看用户详情
	public Map<String, Object> findById(int user_id);

	// 添加搜藏
	public ShopResponse addCollection(int user_id, int collection_id);

	// 查看个人搜藏
	public Map<String, Object> findCollectionById(int user_id);

	// 查看个人订单
	public Map<String, Object> findOrdersById(int user_id);

	// 查看个人优惠券
	public Map<String, Object> findCouponById(int user_id);

	// 领取优惠券
	public ShopResponse addCouponById(int user_id, int coupon_id);

	// 查找地址管理
	public Map<String, Object> findAddressById(int user_id);

	// 新增地址
	public ShopResponse addAddressById(int user_id,String address);

	// 编辑地址
	public ShopResponse editAddressById(int address_id, String address);
	
	// 删除地址
	public ShopResponse deleteAddressById(int address_id);

}
