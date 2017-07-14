package com.demo;


import com.jfinal.server.ServerFactory;

/**
 * ServerTester
 * 
 * @author YiKe
 * @version $Id: ServerTester.java, v 0.1 2014年10月10日 上午11:11:44 YiKe Exp $
 */
public class ServerTester {
	/** logger */
	public static void main(String[] args) {
		try {
			System.out.println("-0-");
			ServerFactory.getServer(8080).start();
			System.out.println("----------");
		} catch (Exception e) {
			System.out.println("-000000000000000");
		}
	}
}
