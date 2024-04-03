package asm.service.imple;

import java.sql.Timestamp;

import asm.dao.ShareDAO;
import asm.dao.implement.ShareDAOImplement;
import asm.entity.Share;
import asm.entity.User;
import asm.entity.Video;
import asm.service.ShareService;


public class ShareServiceImple implements ShareService {

	private ShareDAO dao;
	
	public ShareServiceImple() {
		dao = new ShareDAOImplement();
	}
	
	@Override
	public Share create(User user, Video video, String emailShare) {
		Share addShare = new Share();	
			addShare.setUser(user);
			addShare.setVideo(video);
			addShare.setEmails(emailShare);
			addShare.setShareDate(new Timestamp(System.currentTimeMillis()));
			dao.create(addShare);
		
		return addShare;
	}

	

}
