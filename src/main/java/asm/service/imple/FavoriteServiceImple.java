package asm.service.imple;

import java.sql.Timestamp;
import java.util.List;

import asm.dao.FavoriteDAO;
import asm.dao.implement.FavoriteDAOImplement;
import asm.entity.Favorite;
import asm.entity.User;
import asm.entity.Video;
import asm.service.FavoriteService;
import asm.service.VideoService;

public class FavoriteServiceImple implements FavoriteService {

	private FavoriteDAO dao;
	private VideoService videoService = new VideoServiceImple();
	
	public FavoriteServiceImple() {
		dao = new FavoriteDAOImplement();
	}

	@Override
	public List<Favorite> findByUser(String username) {
		
		return dao.findByUser(username);
	}

	@Override
	public List<Favorite> findByUserAndIsLiked(String username) {
		
		return dao.findByUserAndIsLiked(username);
	}

	@Override
	public Favorite findByUserIdAndVideoId(String userID, String videoID) {
		
		return dao.findByUserIdAndVideoId(userID, videoID);
	}

	@Override
	public Favorite create(User user, Video video) {
		Favorite  exitFavorite = findByUserIdAndVideoId(user.getId(), video.getId());
		if(exitFavorite == null) {
			exitFavorite = new Favorite();
			exitFavorite.setUser(user);
			exitFavorite.setVideo(video);
			exitFavorite.setLike(false);
			exitFavorite.setLikeDate(null);
			dao.create(exitFavorite);
		}
		
		return exitFavorite;
	}

	@Override
	public boolean updateLikeOrUnlike(User user, String videoHref) {
		Video video = videoService.findByLink(videoHref);
		Favorite exitFavorite = findByUserIdAndVideoId(user.getId(), video.getId());
		
		if(exitFavorite.isLike() == false) {
			exitFavorite.setLike(true);
			exitFavorite.setLikeDate(new Timestamp(System.currentTimeMillis()));
		}else {
			exitFavorite.setLike(false);
			exitFavorite.setLikeDate(null);
		}
		Favorite updateFavorite = dao.update(exitFavorite);
		return updateFavorite != null ? true : false;
	}
}
