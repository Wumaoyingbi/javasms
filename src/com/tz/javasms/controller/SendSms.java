package com.tz.javasms.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tz.javasms.utils.GetMessageCode;

/**
 * 短信发送请求类
 * @author 束手就擒
 *
 */

@WebServlet("/sendSMS")
public class SendSms extends HttpServlet {
	private static final long serialVersionUID = -8940196742313994740L;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String phone = req.getParameter("phone");
		//根据输入的手机号码发送验证码
		String code = GetMessageCode.getCode(phone);
		resp.getWriter().print(code);
		
		
		
	}
	//获取浏览器页面传递过来的参数(手机号)
	/**
	 * 1.继承HttpServlet类
	 * 2.在Web.xml里面注册Servlet或者(web3.0新特性 注解的方法实现)
	 * 3.实现对于方法
	 */
	

}
