package asm.service;

import java.util.List;

import asm.entity.Favorite;
import asm.entity.User;
import asm.entity.Video;

public interface FavoriteService {
	List<Favorite> findByUser(String username);
	List<Favorite> findByUserAndIsLiked(String username);
	Favorite findByUserIdAndVideoId(String userID, String videoID);
	Favorite create(User user, Video video);
	boolean updateLikeOrUnlike(User user, String videoHref);
}
