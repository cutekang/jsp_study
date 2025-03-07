package com.app.post;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Result;
import com.app.post.controller.PostDeleteController;
import com.app.post.controller.PostListController;
import com.app.post.controller.PostReadController;
import com.app.post.controller.PostUpdateController;
import com.app.post.controller.PostUpdateOkController;
import com.app.post.controller.PostWriteController;
import com.app.post.controller.PostWriteOKController;

public class PostFrontController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=utf-8;");

		Result result = new Result();
		String target = req.getRequestURI().replace(req.getContextPath() + "/", "").split("\\.")[0];

		
		if(target.equals("write")) {
			result = new PostWriteController().execute(req, resp);
		} else if(target.equals("write-ok")) {
			result = new PostWriteOKController().execute(req, resp);
		} else if(target.equals("list")) {
			result = new PostListController().execute(req, resp);
		} else if(target.equals("read")) {
			result = new PostReadController().execute(req, resp);
		} else if(target.equals("delete")) {
			result = new PostDeleteController().execute(req, resp);
		} else if(target.equals("update")) {
			result = new PostUpdateController().execute(req, resp);
		} else if(target.equals("update-ok")) {
			result = new PostUpdateOkController().execute(req, resp);
		} else {
//			404
		}
		
		
		if(result != null) {
			if(result.isRedirect()) {
				resp.sendRedirect(result.getPath());
			}else {
				req.getRequestDispatcher(result.getPath()).forward(req, resp);
			}
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
