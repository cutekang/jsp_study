package com.app.post.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.PostDAO;
import com.app.vo.PostVO;

public class PostUpdateController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		PostDAO postDAO = new PostDAO();
		PostVO postVO = new PostVO();
		
		Long id = Long.parseLong(req.getParameter("id"));
		
		req.setAttribute("product", postDAO.select(id).orElseThrow(() -> {
			throw new RuntimeException("PostUpdateController user not found");
		}));
		
		result.setPath("update.jsp");
		return result;
	}

}
