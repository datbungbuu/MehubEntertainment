package asm.service.imple;

import java.util.List;

import asm.dao.VideoDAO;
import asm.dao.implement.VideoDAOImplement;
import asm.entity.Video;
import asm.service.VideoService;

public class VideoServiceImple implements VideoService{

	public VideoDAO dao;
	
	public VideoServiceImple() {
		dao = new VideoDAOImplement();
	}
	
	@Override
	public Video findById(String id) {
		// TODO Auto-generated method stub
		return dao.findById(id);
	}

	@Override
	public Video findByLink(String link) {
		// TODO Auto-generated method stub
		return dao.findByLink(link);
	}

	@Override
	public List<Video> findAll() {
		// TODO Auto-generated method stub
		return dao.findAll();
	}

	@Override
	public List<Video> findAll(int pageNumber, int pageSize) {
		// TODO Auto-generated method stub
		return dao.findAll(pageNumber, pageSize);
	}

	@Override
	public Video create(Video entity) {	
		return dao.create(entity);
	}

	@Override
	public Video update(Video entity) {
		// TODO Auto-generated method stub
		return dao.update(entity);
	}

	@Override
	public Video delete(String id) {
		Video entity = findById(id);
		return dao.delete(entity);
	}
	
}
