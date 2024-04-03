package asm.dao.implement;

import java.util.List;

import asm.dao.AbstractDao;
import asm.dao.FavoriteDAO;
import asm.entity.Favorite;

public class FavoriteDAOImplement extends AbstractDao<Favorite> implements FavoriteDAO {

	@Override
	public List<Favorite> findByUser(String username) {
		String sql = "SELECT o FROM Favorite o WHERE o.user.id = ?0 ORDER BY o.likeDate DESC";
		return super.findMany(Favorite.class, sql, username);
	}
	
	@Override
	public List<Favorite> findByUserAndIsLiked(String username) {
		String sql = "SELECT o FROM Favorite o WHERE o.user.id = ?0 AND o.isLike = 1 ORDER BY o.likeDate DESC";
		return super.findMany(Favorite.class, sql, username);
	}


	@Override
	public Favorite findByUserIdAndVideoId(String userID, String videoID) {
		String sql = "SELECT o FROM Favorite o WHERE o.user.id = ?0 AND o.video.id = ?1";
		return super.findOne(Favorite.class, sql, userID, videoID);
	}
}
