package asm.service;

import java.util.List;

import asm.entity.Video;

public interface VideoService {
	Video findById(String id);
	Video findByLink(String link);
	List<Video> findAll();
	List<Video> findAll(int pageNumber, int pageSize);
	Video create(Video entity);
	Video update(Video entity);
	Video delete(String link);	
}
