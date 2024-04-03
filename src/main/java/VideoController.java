import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import asm.entity.Favorite;
import asm.entity.Share;
import asm.entity.User;
import asm.entity.Video;
import asm.service.EmailService;
import asm.service.FavoriteService;
import asm.service.ShareService;
import asm.service.VideoService;
import asm.service.imple.EmailServiceImple;
import asm.service.imple.FavoriteServiceImple;
import asm.service.imple.ShareServiceImple;
import asm.service.imple.VideoServiceImple;
import constant.SessionAttribute;

@WebServlet("/detail")
public class VideoController extends HttpServlet {
	
	private VideoService videoService = new VideoServiceImple();
	private FavoriteService favoriteService = new FavoriteServiceImple();
	private ShareService shareService = new ShareServiceImple();
	private EmailService emailService = new EmailServiceImple();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		String actionParam = req.getParameter("action");
		String href = req.getParameter("id");
		HttpSession session = req.getSession();		
		
		switch (actionParam) {
			case "watch": {
				doGetDetail(session, href, req, resp);			
				break;
			}
			case "like": {
				doGetLike(session, href, req, resp);
				break;
			}
		}

	}
		
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		String actionParam = req.getParameter("action");
		String href = req.getParameter("id");
		HttpSession session = req.getSession();		
		
		switch (actionParam) {		
		case "share": {
			doPostShare(session, href, req, resp);
			break;
		}
	}
	}
	
	
	private void doGetDetail(HttpSession session , String href, HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		Video video = videoService.findByLink(href); 
		List<Video> videos = videoService.findAll(); 
		
		
		User currentUser = (User) session.getAttribute(SessionAttribute.CURRENT_USER);
		if(currentUser != null) {
			Favorite favorite = favoriteService.create(currentUser, video);
			req.setAttribute("flagLikeBtn", favorite.isLike());
		}
		
		req.setAttribute("video_detail", video); 
		req.setAttribute("videos_p",videos);
		req.getRequestDispatcher("/views/UserUI/Layout/detail_video.jsp").forward(req, resp);
	}
	
	private void doGetLike(HttpSession session , String href, HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		resp.setContentType("application/json");
		User currentUser = (User) session.getAttribute(SessionAttribute.CURRENT_USER);
		boolean result = favoriteService.updateLikeOrUnlike(currentUser, href);
		
		if(result == true) {
			resp.setStatus(204);
		}else {
			resp.setStatus(400);
		}
	}
	
	private void doPostShare(HttpSession session , String href, HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("application/json");
		
		String emailShare = req.getParameter("mailfriend");
		System.out.println(emailShare);
		
		Video video = videoService.findByLink(href); 			
		User currentUser = (User) session.getAttribute(SessionAttribute.CURRENT_USER);
		Share shareVid = shareService.create(currentUser, video, emailShare);
		if(emailShare != null) {			
			if(shareVid != null) {
				emailService.sendMailShare(emailShare, video, "shareVideo");
				resp.setStatus(204);
			}else {
				resp.setStatus(400);
			}
		}else {
			resp.setStatus(400);
		}
		
	}
}
