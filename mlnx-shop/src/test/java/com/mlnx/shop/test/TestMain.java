package com.mlnx.shop.test;

import java.util.HashSet;
import java.util.Iterator;
import java.util.TreeSet;

import org.junit.Test;

import com.sf.openapi.common.utils.SFOpenClient;

public class TestMain {
	
	@Test
	public void test() {
        double left = -1;
        double right = 1;
        System.out.println(2 / (left + right));
        
        HashSet<Integer> set = new HashSet<Integer>();
        TreeSet<Integer> set2 = new TreeSet<Integer>();
    }
	
	@Test
	public void test2(){
		TreeSet<String> tree = new TreeSet<String>();
        tree.add("China");
        tree.add("America");
        tree.add("Japan");
        tree.add("Chinese");
        Iterator<String> iter = tree.iterator();
        while(iter.hasNext())
        {
            System.out.println(iter.next());
        }
	}
	
	@Test
	public void test3(){
		HashSet<String> tree = new HashSet<String>();
        tree.add("China");
        tree.add("America");
        tree.add("Japan");
        tree.add("Chinese");
        Iterator<String> iter = tree.iterator();
        while(iter.hasNext())
        {
            System.out.println(iter.next());
        }
	}
	
	@Test
	public void test4(){
		SFOpenClient client = new SFOpenClient();
//		String url = "https://open-sbox.sf-express.com/public/v1.0/security/access_token/sf_appid/00009348/sf_appkey/8A719E8E22D465C40279217AE5F687F7";
		String url = "http://localhost:8080/mlnx-shop/test/json";
		try {
			client.doPost(url, null, null, null);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
