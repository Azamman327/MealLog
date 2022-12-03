package controller.mypage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.Controller;
import controller.UserSessionUtils;

import model.dao.UserDAO;
import model.dto.UserDTO;
import model.service.UserManager;

public class MypageController implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub		
		if(!UserSessionUtils.hasLogined(request.getSession())) return "redirect:/login"; // 로그인된 상태가 아니면 login으로
		
		
		if(request.getParameter("uid") == null) {
			return "redirect:/mypage?uid=" + UserSessionUtils.getLoginUserId(request.getSession());
		}
		
		long uid = Long.valueOf(request.getParameter("uid"));
		UserManager userManager = UserManager.getInstance();
		UserDTO user = userManager.findUser(uid);
		
		if(user.getProfile() != null) request.setAttribute("profile", "/resources/profile/" + user.getProfile());
		request.setAttribute("uname", user.getUname());
		request.setAttribute("introduce", user.getIntroduce());
		
		request.setAttribute("page", "mypage/mypage.jsp");
		return "/index.jsp";
	}

}
