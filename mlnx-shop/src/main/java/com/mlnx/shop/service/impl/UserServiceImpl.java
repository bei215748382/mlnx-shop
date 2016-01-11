package com.mlnx.shop.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mlnx.shop.entity.TCoupon;
import com.mlnx.shop.entity.TGoods;
import com.mlnx.shop.entity.TOrder;
import com.mlnx.shop.entity.TUser;
import com.mlnx.shop.entity.TUserAddress;
import com.mlnx.shop.entity.TUserCollection;
import com.mlnx.shop.entity.TUserCoupon;
import com.mlnx.shop.entity.TUserExt;
import com.mlnx.shop.exception.RegisterException;
import com.mlnx.shop.mapper.TOrderMapper;
import com.mlnx.shop.mapper.TUserAddressMapper;
import com.mlnx.shop.mapper.TUserCollectionMapper;
import com.mlnx.shop.mapper.TUserCouponMapper;
import com.mlnx.shop.mapper.TUserExtMapper;
import com.mlnx.shop.mapper.TUserMapper;
import com.mlnx.shop.service.UserService;
import com.mlnx.shop.util.EnumCollection.ResponseCode;
import com.mlnx.shop.util.ShopResponse;
import com.mlnx.shop.util.StringUtil;
import com.mlnx.shop.vo.UserVo;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private TUserMapper tUserMapper;

	@Autowired
	private TUserExtMapper tUserExtMapper;

	@Autowired
	private TUserCollectionMapper tUserCollectionMapper;

	@Autowired
	private TUserCouponMapper tUserCouponMapper;

	@Autowired
	private TUserAddressMapper tUserAddressMapper;
	
	@Autowired
	private TOrderMapper tOrderMapper;

	@Transactional(rollbackFor = RegisterException.class)
	@Override
	public ShopResponse regist(TUser user) throws RegisterException {
		try {
			TUser tUser = tUserMapper.selectByPhone(user.getPhone());
			if (tUser != null) {
				return new ShopResponse(ResponseCode.EXIST);
			}
			tUserMapper.insert(user);
			int userId = user.getId();
			TUserExt tUserExt = new TUserExt();
			tUserExt.setUserId(userId);
			tUserExt.setMoney(0d);// 余额
			tUserExt.setIntegral(0);// 积分
			tUserExt.setNickname(user.getPhone());// 默认手机号做昵称
			tUserExtMapper.insert(tUserExt);
			return new ShopResponse(ResponseCode.SUCCESS);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RegisterException(e);
		}
	}

	@Override
	public Map<String, Object> login(TUser user) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			TUser tUser = tUserMapper.selectByPhone(user.getPhone());
			if (tUser != null) {
				if (tUser.getPassword().equals(user.getPassword())) {
					map.put(StringUtil.responseCode,
							ResponseCode.LOGIN_SUCCESS.getCode());
					map.put(StringUtil.responseMsg,
							ResponseCode.LOGIN_SUCCESS.getMsg());
					map.put(StringUtil.responseObj, tUser.getId());
				} else {
					map.put(StringUtil.responseCode,
							ResponseCode.LOGIN_PASSWORD_ERROR.getCode());
					map.put(StringUtil.responseMsg,
							ResponseCode.LOGIN_PASSWORD_ERROR.getMsg());
				}
			} else {
				map.put(StringUtil.responseCode,
						ResponseCode.LOGIN_ACCOUNT_NOT_EXIST.getCode());
				map.put(StringUtil.responseMsg,
						ResponseCode.LOGIN_ACCOUNT_NOT_EXIST.getMsg());
			}
		} catch (Exception e) {
			e.printStackTrace();
			map.put(StringUtil.responseCode, ResponseCode.LOGIN_ERROR.getCode());
			map.put(StringUtil.responseMsg, ResponseCode.LOGIN_ERROR.getMsg());
		}
		return map;
	}

	@Override
	public Map<String, Object> findById(int user_id) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			TUserExt tUserExt = tUserExtMapper.selectByPrimaryKey(user_id);
			if (tUserExt != null) {
				map.put(StringUtil.responseCode,
						ResponseCode.FIND_USER_INFO_SUCCESS.getCode());
				map.put(StringUtil.responseMsg,
						ResponseCode.FIND_USER_INFO_SUCCESS.getMsg());
				map.put(StringUtil.responseObj, tUserExt);
			} else {
				map.put(StringUtil.responseCode,
						ResponseCode.FIND_USER_INFO_NOT_EXIST.getCode());
				map.put(StringUtil.responseMsg,
						ResponseCode.FIND_USER_INFO_NOT_EXIST.getMsg());
			}
		} catch (Exception e) {
			e.printStackTrace();
			map.put(StringUtil.responseCode,
					ResponseCode.FIND_USER_INFO_ERROR.getCode());
			map.put(StringUtil.responseMsg,
					ResponseCode.FIND_USER_INFO_ERROR.getMsg());
		}
		return map;
	}

	@Override
	public ShopResponse addCollection(int user_id, int collection_id) {
		try {
			TUserCollection collection = new TUserCollection();
			collection.setCollectionId(collection_id);
			collection.setUserId(user_id);
			tUserCollectionMapper.insert(collection);
			return new ShopResponse(ResponseCode.ADD_USER_COLLECTION_SUCCESS);
		} catch (Exception e) {
			e.printStackTrace();
			return new ShopResponse(ResponseCode.ADD_USER_COLLECTION_ERROR);
		}
	}

	@Override
	public Map<String, Object> findCollectionById(int user_id) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			List<Integer> ids = tUserCollectionMapper
					.findCollectionById(user_id);
			if (ids != null && ids.size() != 0) {
				map.put(StringUtil.responseCode,
						ResponseCode.FIND_COLLECTION_SUCCESS.getCode());
				map.put(StringUtil.responseMsg,
						ResponseCode.FIND_COLLECTION_SUCCESS.getMsg());
				map.put(StringUtil.responseObj, ids);
			} else {
				map.put(StringUtil.responseCode,
						ResponseCode.FIND_COLLECTION_IS_NULL.getCode());
				map.put(StringUtil.responseMsg,
						ResponseCode.FIND_COLLECTION_IS_NULL.getMsg());
			}
		} catch (Exception e) {
			e.printStackTrace();
			map.put(StringUtil.responseCode,
					ResponseCode.FIND_COLLECTION_ERROR.getCode());
			map.put(StringUtil.responseMsg,
					ResponseCode.FIND_COLLECTION_ERROR.getMsg());
		}
		return map;

	}

	@Override
	public Map<String, Object> findOrdersById(int user_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Map<String, Object> findCouponById(int user_id) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			List<Integer> ids = tUserCouponMapper.findCouponById(user_id);
			if (ids != null && ids.size() != 0) {
				map.put(StringUtil.responseCode,
						ResponseCode.FIND_COUPON_SUCCESS.getCode());
				map.put(StringUtil.responseMsg,
						ResponseCode.FIND_COUPON_SUCCESS.getMsg());
				map.put(StringUtil.responseObj, ids);
			} else {
				map.put(StringUtil.responseCode,
						ResponseCode.FIND_COUPON_IS_NULL.getCode());
				map.put(StringUtil.responseMsg,
						ResponseCode.FIND_COUPON_IS_NULL.getMsg());
			}
		} catch (Exception e) {
			e.printStackTrace();
			map.put(StringUtil.responseCode,
					ResponseCode.FIND_COUPON_ERROR.getCode());
			map.put(StringUtil.responseMsg,
					ResponseCode.FIND_COUPON_ERROR.getMsg());
		}
		return map;
	}

	@Override
	public ShopResponse addCouponById(int user_id, int coupon_id) {
		try {
			TUserCoupon tUserCoupon = new TUserCoupon();
			tUserCoupon.setCouponId(coupon_id);
			tUserCoupon.setUserId(user_id);
			tUserCouponMapper.insert(tUserCoupon);
			return new ShopResponse(ResponseCode.ADD_USER_COUPON_SUCCESS);
		} catch (Exception e) {
			e.printStackTrace();
			return new ShopResponse(ResponseCode.ADD_USER_COUPON_ERROR);
		}
	}

	@Override
	public Map<String, Object> findAddressById(int user_id) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			List<String> ids = tUserAddressMapper.findAddressById(user_id);
			if (ids != null && ids.size() != 0) {
				map.put(StringUtil.responseCode,
						ResponseCode.FIND_ADDRESS_SUCCESS.getCode());
				map.put(StringUtil.responseMsg,
						ResponseCode.FIND_ADDRESS_SUCCESS.getMsg());
				map.put(StringUtil.responseObj, ids);
			} else {
				map.put(StringUtil.responseCode,
						ResponseCode.FIND_ADDRESS_IS_NULL.getCode());
				map.put(StringUtil.responseMsg,
						ResponseCode.FIND_ADDRESS_IS_NULL.getMsg());
			}
		} catch (Exception e) {
			e.printStackTrace();
			map.put(StringUtil.responseCode,
					ResponseCode.FIND_ADDRESS_ERROR.getCode());
			map.put(StringUtil.responseMsg,
					ResponseCode.FIND_ADDRESS_ERROR.getMsg());
		}
		return map;
	}

	@Override
	public ShopResponse addAddressById(int user_id, String address) {
		try {
			TUserAddress tUserAddress = new TUserAddress();
			tUserAddress.setAddress(address);
			tUserAddress.setUserId(user_id);
			tUserAddressMapper.insert(tUserAddress);
			return new ShopResponse(ResponseCode.ADD_USER_ADDRESS_SUCCESS);
		} catch (Exception e) {
			e.printStackTrace();
			return new ShopResponse(ResponseCode.ADD_USER_ADDRESS_ERROR);
		}
	}

	@Override
	public ShopResponse editAddressById(int address_id, String address) {
		try {
			TUserAddress tUserAddress = new TUserAddress();
			tUserAddress.setAddress(address);
			tUserAddress.setId(address_id);
			tUserAddressMapper.updateByPrimaryKey(tUserAddress);
			return new ShopResponse(ResponseCode.UPDATE_USER_ADDRESS_SUCCESS);
		} catch (Exception e) {
			e.printStackTrace();
			return new ShopResponse(ResponseCode.UPDATE_USER_ADDRESS_ERROR);
		}
	}

	@Override
	public ShopResponse deleteAddressById(int address_id) {
		try {
			tUserAddressMapper.deleteByPrimaryKey(address_id);
			return new ShopResponse(ResponseCode.DELETE_USER_ADDRESS_SUCCESS);
		} catch (Exception e) {
			e.printStackTrace();
			return new ShopResponse(ResponseCode.DELETE_USER_ADDRESS_SUCCESS);
		}
	}

	@Override
	public UserVo findByPhone(String phone) {
		try {
			return tUserExtMapper.findByPhone(phone);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public List<TGoods> findCollectionsById(Integer id) {
		try {
			return tUserCollectionMapper.findCollectionsById(id);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public List<TCoupon> findCouponsById(Integer id) {
		try {
			return tUserCouponMapper.findCouponsById(id);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public List<TOrder> findOrdersByIdAndState(TOrder order) {
		
		try {
			return tOrderMapper.findOrdersByIdAndState(order);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public List<TUserAddress> findAddressesById(Integer id) {
		
		try {
			return tUserAddressMapper.findAddressesById(id);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

}
