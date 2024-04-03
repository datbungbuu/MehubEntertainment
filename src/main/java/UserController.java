import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import asm.entity.User;
import asm.service.EmailService;
import asm.service.UserService;
import asm.service.imple.EmailServiceImple;
import asm.service.imple.UserServiceImple;
import constant.SessionAttribute;

@WebServlet({"/Login","/LogOut","/Create","/ChangePass"})
public class UserController extends HttpServlet{
	
	private UserService userService = new UserServiceImple();	
	private EmailService emailService = new EmailServiceImple();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		HttpSession session = req.getSession();
		String uri = req.getRequestURI();
		
		if(uri.contains("Login")) {
			doGetLogin(req, resp);
		}else if(uri.contains("Create")) {
			doGetRegister(req, resp);
		}else if(uri.contains("LogOut")) {
			doGetLogOut(session, req, resp);
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		HttpSession session = req.getSession();
		String uri = req.getRequestURI();
		
		if(uri.contains("Login")) {
			doPostLogin(session, req, resp);
		}else if(uri.contains("Create")) {
			doPostRegister(req, resp);
		}else if(uri.contains("ChangePass")) {
			doPostChangePass(session, req, resp);
		}		
	}
		
	private void doGetLogin(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		req.getRequestDispatcher("/views/UserUI/login.jsp").forward(req, resp);
	}
	
	private void doPostLogin(HttpSession session , HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		String username = req.getParameter("id");
		String password = req.getParameter("password");
		
		try {
			User user = userService.findById(username);
			if(!user.getMatkhau().equals(password)) {
				req.setAttribute("message", "Sai Mật Khẩu !");
				req.getRequestDispatcher("/views/UserUI/login.jsp").forward(req, resp);
			}else {
				req.setAttribute("message", "Đăng Nhập Thành Công !");
				session.setAttribute(SessionAttribute.CURRENT_USER, user);
				resp.sendRedirect("index");
			}
		} catch (Exception e) {
			req.setAttribute("message", "Sai Tên Đăng Nhập !");
			req.getRequestDispatcher("/views/UserUI/login.jsp").forward(req, resp);
		}				
	}

	private void doGetRegister(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		req.getRequestDispatcher("/views/UserUI/register.jsp").forward(req, resp);
	}
	
	private void doPostRegister(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		String username = req.getParameter("id");
		String fullname = req.getParameter("fullname");
		String password = req.getParameter("password");
		String checkpassword = req.getParameter("cfpassword");
		String email = req.getParameter("email");
		
		if(password.equals(checkpassword)) {	
				User userEmail = userService.findByEmail(email);
				User userID = userService.findById(username);
				
				if(userID == null) {
					if(userEmail == null) {
						User user = userService.create(username, password, fullname, email);
						if (user != null) {
							emailService.sendMail(user, "welcome");
							resp.sendRedirect("Login");
						}else {
							req.setAttribute("message", "Đăng Ký Thất Bại");
							req.getRequestDispatcher("/views/UserUI/register.jsp").forward(req, resp);
						}	
					}else{
						req.setAttribute("message", "Email Đã Tồn Tại !");
						req.getRequestDispatcher("/views/UserUI/register.jsp").forward(req, resp);
					}		
				}else{
					req.setAttribute("message", "Username Đã Tồn Tại !");
					req.getRequestDispatcher("/views/UserUI/register.jsp").forward(req, resp);
				}
																		
		}else {
			req.setAttribute("message", "Password confirmation is incorrect");
			req.getRequestDispatcher("/views/UserUI/register.jsp").forward(req, resp);
		}
						
	}
	
	private void doGetLogOut(HttpSession session, HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		session.removeAttribute(SessionAttribute.CURRENT_USER);
		resp.sendRedirect("index");
	}
	
	private void doPostChangePass(HttpSession session, HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		resp.setContentType("application/json");
		String cpcurrentpass = req.getParameter("cpcurrentpass");
		String cpnewpass = req.getParameter("cpnewpass");
		
		User currentUser = (User) session.getAttribute(SessionAttribute.CURRENT_USER);
		
		if(currentUser.getMatkhau().equals(cpcurrentpass)) {
			currentUser.setMatkhau(cpnewpass);
			User updateUser = userService.update(currentUser);
			if(updateUser != null) {
				session.setAttribute(SessionAttribute.CURRENT_USER, updateUser);
				resp.setStatus(204);
			}else {
				resp.setStatus(400);
			}
		}else {
			resp.setStatus(400);
		}
	}
}
