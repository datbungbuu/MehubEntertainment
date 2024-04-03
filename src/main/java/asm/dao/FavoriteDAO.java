package asm.dao;

import java.util.List;

import asm.entity.Favorite;

public interface FavoriteDAO {
	List<Favorite> findByUser(String username);
	List<Favorite> findByUserAndIsLiked(String username);
	Favorite findByUserIdAndVideoId(String userID, String videoID);
	Favorite create(Favorite entity);
	Favorite update(Favorite entity);
}
