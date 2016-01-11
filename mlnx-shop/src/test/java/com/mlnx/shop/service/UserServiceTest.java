package com.mlnx.shop.service;

import static org.junit.Assert.fail;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.mlnx.shop.base.TestBase;
import com.mlnx.shop.entity.TUser;
import com.mlnx.shop.exception.RegisterException;

public class UserServiceTest extends TestBase {

	@Autowired
	private UserService userService;

	@Test
	public void testRegist() throws RegisterException {
		TUser user = new TUser();
		String phone = "15867404048";
		String password = "123456";
		user.setPhone(phone);
		user.setPassword(password);
		System.out.println(userService.regist(user));
	}

	@Test
	public void testLogin() {
		TUser user = new TUser();
		String phone = "15867404048";
		String password = "123456";
		user.setPhone(phone);
		user.setPassword(password);
		System.out.println(userService.login(user));
	}

	@Test
	public void testFindById() {
		System.out.println(userService.findById(8));
	}

	@Test
	public void testAddCollection() {
		for (int i = 1; i < 21; i++) {
			System.out.println(userService.addCollection(1, i));
		}
	}

	@Test
	public void testFindCollectionById() {
		System.out.println(userService.findCollectionById(1));
	}

	@Test
	public void testFindOrdersById() {
		fail("Not yet implemented");
	}

	@Test
	public void testFindCouponById() {
		System.out.println(userService.findCouponById(1));
	}

	@Test
	public void testAddCouponById() {
		for (int i = 5; i < 11; i++) {
			System.out.println(userService.addCouponById(1, i));
		}
	}

	@Test
	public void testFindAddressById() {
		System.out.println(userService.findAddressById(1));
	}

	@Test
	public void testAddAddressById() {
		String[] addrStr = new String[]{"一号大街","二号大街","三号大街","四号大街","五号大街","六号大街","七号大街"};
		for (int i = 0; i < 7; i++) {
			System.out.println(userService.addAddressById(1, addrStr[i]));
		}
	}

	@Test
	public void testEditAddressById() {
		String address = "xxx大厦xxx室";
		int address_id = 1;
		System.out.println(userService.editAddressById(address_id, address));
	}

	@Test
	public void testDeleteAddressById() {
		System.out.println(userService.deleteAddressById(2));
	}

	@Test
	public void testFindByPhone() {
		System.out.println(userService.findByPhone("15867404048"));
	}
}
