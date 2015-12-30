package com.mlnx.shop.service;

import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.mlnx.shop.base.TestBase;
import com.mlnx.shop.entity.TClassify;

public class ClassifyServiceTest extends TestBase {

	@Autowired
	private ClassifyService classifyService;
	
	@Test
	public void testAdd() {
		for(int i = 0 ; i < 10 ; i++){
			TClassify classify = new TClassify();
			classify.setName("分类"+i);
			classify.setParent_id(0);
			System.out.println(classifyService.add(classify));
		}
		for(int i = 0 ; i < 10 ; i++){
			TClassify classify = new TClassify();
			classify.setName("子分类"+i);
			classify.setParent_id(i+1);
			System.out.println(classifyService.add(classify));
		}
	}

	@Test
	public void testEdit() {
		TClassify classify = new TClassify();
		classify.setId(3);
		classify.setName("一级子分类");
		classify.setParent_id(0);
		System.out.println(classifyService.edit(classify));
	}

	@Test
	public void testDelete() {
		System.out.println(classifyService.delete(3));
		System.out.println(classifyService.delete(13));
	}

}
