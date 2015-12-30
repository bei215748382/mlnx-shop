package com.mlnx.shop.util;

public class EnumCollection {

	public enum ResponseCode {
		EXIST("000001", "注册用户已存在"), SUCCESS("000002", "注册用户成功"), ERROR(
				"000003", "注册用户失败"), LOGIN_SUCCESS("000004", "用户登入成功"), LOGIN_PASSWORD_ERROR(
				"000005", "用户登入失败"), LOGIN_ACCOUNT_NOT_EXIST("000006",
				"登入账号不存在"), LOGIN_ERROR("000007", "登入异常，请稍后重试"), FIND_USER_INFO_SUCCESS(
				"000008", "查找用户成功"), FIND_USER_INFO_ERROR("000009", "查找用户失败"), FIND_USER_INFO_NOT_EXIST(
				"000010", "查找的用户不存在"), ADD_USER_COLLECTION_SUCCESS("000011",
				"添加收藏成功"), ADD_USER_COLLECTION_ERROR("000012", "添加收藏失败"), FIND_COLLECTION_SUCCESS(
				"000013", "查找收藏成功"), FIND_COLLECTION_IS_NULL("000014", "查找收藏为空"), FIND_COLLECTION_ERROR(
				"000015", "查找收藏失败，请稍后重试"), FIND_COUPON_SUCCESS("000016",
				"查找优惠券列表成功"), FIND_COUPON_IS_NULL("000017", "优惠券列表为空"), FIND_COUPON_ERROR(
				"000018", "获取优惠券失败，请稍后重试"), ADD_USER_COUPON_SUCCESS("000019",
				"领取优惠券成功"), ADD_USER_COUPON_ERROR("000020", "领取优惠券失败"), ADD_USER_ADDRESS_SUCCESS(
				"000021", "添加用户地址成功"), ADD_USER_ADDRESS_ERROR("000022",
				"添加用户地址失败"), UPDATE_USER_ADDRESS_SUCCESS("000023", "更新用户地址成功"), UPDATE_USER_ADDRESS_ERROR(
				"000024", "更新用户地址失败"), DELETE_USER_ADDRESS_SUCCESS("000025",
				"删除用户地址成功"), DELETE_USER_ADDRESS_ERROR("000026", "删除用户地址失败"), FIND_ADDRESS_SUCCESS(
				"000027", "获取用户地址成功"), FIND_ADDRESS_IS_NULL("000028",
				"获取用户地址为空"), FIND_ADDRESS_ERROR("000029", "获取用户地址失败，请稍后重试"), ADD_GOODS_SUCCESS(
				"000030", "添加商品成功"), ADD_GOODS_ERROR("000031", "添加商品失败"), UPDATE_GOODS_SUCCESS(
				"000032", "编辑商品成功"), UPDATE_GOODS_ERROR("000033", "编辑商品失败"), DELETE_GOODS_SUCCESS(
				"000034", "删除商品成功"), DELETE_GOODS_ERROR("000035", "删除商品失败"), UPDATE_GOODS_VALID_TRUE_SUCCESS(
				"000036", "商品上架成功"), UPDATE_GOODS_VALID_TRUE_ERROR("000037",
				"商品上架失败"), UPDATE_GOODS_VALID_FALSE_SUCCESS("000038", "商品下架成功"), UPDATE_GOODS_VALID_FALSE_ERROR(
				"000039", "商品下架失败"), SEARCH_GOODS_SUCCESS("000040", "查询商品成功"), SEARCH_GOODS_ERROR(
				"000041", "查询商品失败"), ADD_CLASSIFY_SUCCESS("000042", "添加分类成功"), ADD_CLASSIFY_ERROR(
				"000043", "添加分类异常"), UPDATE_CLASSIFY_SUCCESS("000044", "修改分类成功"), UPDATE_CLASSIFY_ERROR(
				"000045", "修改分类异常"), DELETE_CLASSIFY_SUCCESS("000046", "删除分类成功"), DELETE_CLASSIFY_ERROR(
				"000047", "删除分类异常"), ADD_ORDER_SUCCESS("000048", "添加订单成功"), ADD_ORDER_ERROR(
				"000049", "添加订单异常"), UPDATE_ORDER_SUCCESS("000050", "修改订单成功"), UPDATE_ORDER_ERROR(
				"000051", "修改订单异常"), DELETE_ORDER_SUCCESS("000052", "删除订单成功"), DELETE_ORDER_ERROR(
				"000053", "删除订单异常");  

		// 成员变量
		private String code;
		private String msg;

		// 构造方法
		private ResponseCode(String code, String msg) {
			this.code = code;
			this.msg = msg;
		}

		// 覆盖方法
		@Override
		public String toString() {
			return this.code + "_" + this.msg;
		}

		public String getCode() {
			return code;
		}

		public void setCode(String code) {
			this.code = code;
		}

		public String getMsg() {
			return msg;
		}

		public void setMsg(String msg) {
			this.msg = msg;
		}

	}

	public static void main(String[] args) {
		System.out.println(ResponseCode.EXIST.toString());
	}
}
