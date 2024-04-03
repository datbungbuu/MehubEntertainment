package asm.dao.implement;

import java.util.List;

import asm.dao.AbstractDao;
import asm.dao.VideoDAO;
import asm.entity.Video;

public class VideoDAOImplement extends AbstractDao<Video> implements VideoDAO	{

	@Override
	public Video findById(String id) {
		// TODO Auto-generated method stub
		return super.finById(Video.class, id);
	}

	@Override
	public Video findByLink(String link) {
		String sql = "SELECT o FROM Video o WHERE o.link = ?0 ";
		return super.findOne(Video.class, sql, link);
	}

	@Override
	public List<Video> findAll() {
		// TODO Auto-generated method stub
		return super.findAll(Video.class);
	}

	@Override
	public List<Video> findAll(int pageNumber, int pageSize) {
		// TODO Auto-generated method stub
		return super.findAll(Video.class, pageNumber, pageSize);
	}

}
