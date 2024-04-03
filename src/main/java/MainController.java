import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;
import asm.entity.Report;
import asm.entity.Favorite;
import asm.entity.User;
import asm.entity.Video;
import asm.service.FavoriteService;
import asm.service.ShareService;
import asm.service.UserService;
import asm.service.VideoService;
import asm.service.imple.FavoriteServiceImple;
import asm.service.imple.ShareServiceImple;
import asm.service.imple.UserServiceImple;
import asm.service.imple.VideoServiceImple;
import constant.SessionAttribute;

@WebServlet({"/index","/admin","/video","/user","/report_fav","/report_title",
			"/video_create","/video_update","/video_delete","/user_update","/user_delete"})
public class MainController extends HttpServlet {

	private static final int Video_Max_Page_Size = 6;
	
	private VideoService videoService = new VideoServiceImple();
	private UserService userService = new UserServiceImple();
	private FavoriteService favoriteService = new FavoriteServiceImple();
	private ShareService shareService = new ShareServiceImple();
	
	EntityManager em = asm.util.JpaUtil.getEntityManager();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		String uri = req.getRequestURI();
		HttpSession session = req.getSession();
		 				
		String language = req.getParameter("language");
		if (language != null) {
			req.getSession().setAttribute("currentLanguage", language);
		}
		if(uri.contains("index")) {
				User currentUser = (User) session.getAttribute(SessionAttribute.CURRENT_USER);
				
				List<Video> countVideo = videoService.findAll();
				int maxPage = (int) Math.ceil(countVideo.size() / (double) Video_Max_Page_Size);
				req.setAttribute("maxPage", maxPage);
				
				//Phan Trang
				List<Video> videos; 
				String pageNumber = req.getParameter("page");
								
				if(pageNumber == null || Integer.valueOf(pageNumber) > maxPage) {
					videos =  videoService.findAll(1, Video_Max_Page_Size);
					req.setAttribute("currentPage", 1);
				}else {
					videos =  videoService.findAll(Integer.valueOf(pageNumber), Video_Max_Page_Size);
					req.setAttribute("currentPage", pageNumber);
				}
				
				req.setAttribute("videos", videos);
				
				
				//Trang Favorite
				if(currentUser != null) {
					List<Favorite> favorites = favoriteService.findByUserAndIsLiked(currentUser.getId());
					
					List<Video> favVideo = new ArrayList<>();
					//favorites.forEach(item -> favVideo.add(item.getVideo()));
					for(int i = 0; i < favorites.size(); i++) {
						favVideo.add(favorites.get(i).getVideo());
					}
					req.setAttribute("favVideos", favVideo);
				}																			
				req.getRequestDispatcher("/views/UserUI/index.jsp").forward(req, resp);
			
		}else if(uri.contains("admin")) {
			User currentUser = (User) session.getAttribute(SessionAttribute.CURRENT_USER);
			if(currentUser != null) {
				List<Video> videos = videoService.findAll();
				List<User> users = userService.findAll();
			
				req.setAttribute("list_video", videos);
				req.setAttribute("list_user", users);
				req.getRequestDispatcher("/views/AdminUI/Admin_Home.jsp").forward(req, resp);
			}
			
		}else if(uri.contains("video")) {
				String action = req.getParameter("action");
				switch (action) {
				case "view":
					doGetViewVideo(req, resp);					
					break;
				case "edit":	
					doGetVideoEdit(req, resp);
					break;
				case "add":	
					doGetVideoAdd(req, resp);
					break;
				}
								
		} else if(uri.contains("user")) {
				String action = req.getParameter("action");
				switch (action) {
				case "view":
					doGetViewUser(req, resp);
					break;
				case "edit":	
					doGetUserEdit(req, resp);
					break;	
				case "add":	
					doGetUserAdd(req, resp);
					break;	
				}								
		}else if(uri.contains("report_fav")) {
			try {
				String sql = "SELECT new Report(o.video.title, count(o.isLike),"
						+ "min(o.likeDate), max(o.likeDate))"
						+ "FROM Favorite o GROUP BY o.video.title, o.video.id";	
				TypedQuery<Report> query = em.createQuery(sql, Report.class);
				
				List<Report> list = query.getResultList();
				req.setAttribute("fav_report", list);
				System.out.println( "Success !");
			} catch (Exception e) {
				System.out.println( "Fail !");
			}
			
			req.getRequestDispatcher("/views/AdminUI/Admin_Report_1.jsp").forward(req, resp);					
		}else if(uri.contains("report_title")) {
						
			req.getRequestDispatcher("/views/AdminUI/Admin_Report_2.jsp").forward(req, resp);					
		}									
	}		
	
	//VIDEO CONTROLLER
	private void doGetViewVideo(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		List<Video> videos = videoService.findAll(); 
		req.setAttribute("view_videos", videos);	
		req.getRequestDispatcher("/views/AdminUI/Admin_Video_List.jsp").forward(req, resp);
	}
	
	private void doGetVideoEdit(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		String id = req.getParameter("videoid");
		
		Video video = videoService.findById(id);
		req.setAttribute("videoE", video);
		
		req.getRequestDispatcher("/views/AdminUI/Admin_Video_Edit.jsp").forward(req, resp);
	}
	
	private void doGetVideoAdd(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		req.getRequestDispatcher("/views/AdminUI/Admin_Video_Edit.jsp").forward(req, resp);			
	}		
	//VIDEO CONTROLLER
	
	//USER CONTROLLER
	private void doGetViewUser(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		List<User> users = userService.findAll(); 
		req.setAttribute("view_users", users);		
		req.getRequestDispatcher("/views/AdminUI/Admin_User_List.jsp").forward(req, resp);
	}
	
	private void doGetUserAdd(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		req.getRequestDispatcher("/views/AdminUI/Admin_User_Edit.jsp").forward(req, resp);			
	}	
	
	private void doGetUserEdit(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		String id = req.getParameter("userid");
		
		User user = userService.findById(id);
		req.setAttribute("userE", user);
		
		req.getRequestDispatcher("/views/AdminUI/Admin_User_Edit.jsp").forward(req, resp);
	}
	
	//USER CONTROLLER
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		String uri = req.getRequestURI();	
		
		if(uri.contains("video_create")) {
			doPostVideoCreate(req, resp);						
		}else if(uri.contains("video_update")) {
			doPostVideoUpdate(req, resp);						
		}else if(uri.contains("video_delete")) {
			doPostVideoDelete(req, resp);						
		}else if(uri.contains("user_update")) {
			doPostUserUpdate(req, resp);						
		}else if(uri.contains("user_delete")) {
			doPostUserDelete(req, resp);						
		}
		
	}
	
	//VIDEO CONTROLLER
	private void doPostVideoCreate(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		String id = req.getParameter("id");
		Video video = new Video();
		Video videobyid = videoService.findById(id);
		
		if (id == null || id == "") {
			req.setAttribute("message", "Vui Lòng Không Để Trống Thông Tin");	
		} else {
			if(videobyid == null) {
				try {
					BeanUtils.populate(video, req.getParameterMap());
						videoService.create(video);
						req.setAttribute("message", "Create Success");	
				} catch (Exception e) {
					req.setAttribute("message", "Create Fail !!");
				}
			}else if(videobyid.getId().equals(id)) {
				req.setAttribute("message", "ID Đã Tồn Tại");
			}
		}
		req.getRequestDispatcher("/views/AdminUI/Admin_Video_Edit.jsp").forward(req, resp);								
	}
	
	private void doPostVideoUpdate(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		String id = req.getParameter("id");
		Video video = new Video();
		
		if (id == null || id == "") {
			req.setAttribute("message", "Vui Lòng Nhập Đủ Thông Tin");	
		} else {
				try {
					BeanUtils.populate(video, req.getParameterMap());
						videoService.update(video);
						req.setAttribute("message", "Update Success");	
				} catch (Exception e) {
					req.setAttribute("message", "Update Fail !!");
				}			
		}
		req.getRequestDispatcher("/views/AdminUI/Admin_Video_Edit.jsp").forward(req, resp);								
	}
	
	private void doPostVideoDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		String id = req.getParameter("id");
		Video videobyid = videoService.findById(id);
		
		if (id == null || id == "") {
			req.setAttribute("message", "Vui Lòng Nhập ID");	
		} else {
			if (videobyid != null) {
				try {
					videoService.delete(id);
					req.setAttribute("message", "Delete Success");	
				} catch (Exception e) {
					req.setAttribute("message", "Delete Fail !!");
				}	
			}else{
				req.setAttribute("message", "ID Không Tồn Tại");
			}
		}
		req.getRequestDispatcher("/views/AdminUI/Admin_Video_Edit.jsp").forward(req, resp);								
	}
	//VIDEO CONTROLLER
	
	//USER CONTROLLER
	private void doPostUserUpdate( HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		String id = req.getParameter("id");
		String email = req.getParameter("email");
		
		User userEmail = userService.findByEmail(email);		
		User userUpdate = new User();
		
		if (id == null || id == "") {
			req.setAttribute("message", "Vui Lòng Nhập Đủ Thông Tin");	
		} else {
				if(userEmail == null) {
					try {
						BeanUtils.populate(userUpdate, req.getParameterMap());					
							userService.update(userUpdate);
							req.setAttribute("message", "Update Success");								
					} catch (Exception e) {
						e.printStackTrace();
						req.setAttribute("message", "Update Fail !!");					
					}	
				}else {
					req.setAttribute("message", "Email Đã Tồn Tại !");
				}
		}
		req.getRequestDispatcher("/views/AdminUI/Admin_User_Edit.jsp").forward(req, resp);
	}
	
	private void doPostUserDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		String id = req.getParameter("id");
		User user = userService.findById(id);
		
		if (id == null || id == "") {
			req.setAttribute("message", "Vui Lòng Nhập ID");	
		} else {
			if (user != null) {
				try {
					userService.delete(id);
					req.setAttribute("message", "Delete Success");	
				} catch (Exception e) {
					req.setAttribute("message", "Delete Fail !!");
				}	
			}else{
				req.setAttribute("message", "ID Không Tồn Tại");
			}
		}
		req.getRequestDispatcher("/views/AdminUI/Admin_User_Edit.jsp").forward(req, resp);								
	}
	//USER CONTROLLER
}
