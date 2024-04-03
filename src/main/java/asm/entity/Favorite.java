package asm.entity;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "YeuThich")
public class Favorite {
	
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	 Integer id;
	 
	@Column(name = "likedate")
	 Timestamp likeDate;
	
	@Column(name = "isLike")
	boolean isLike;
	 
	@ManyToOne  @JoinColumn(name = "userid")
	 User user;
	 
	@ManyToOne  @JoinColumn(name = "videoid")
	 Video video;

	public Favorite() {
		super();
	}

	public Favorite(Integer id, Timestamp likeDate, boolean isLike, User user, Video video) {
		super();
		this.id = id;
		this.likeDate = likeDate;
		this.isLike = isLike;
		this.user = user;
		this.video = video;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Timestamp getLikeDate() {
		return likeDate;
	}

	public void setLikeDate(Timestamp likeDate) {
		this.likeDate = likeDate;
	}

	public boolean isLike() {
		return isLike;
	}

	public void setLike(boolean isLike) {
		this.isLike = isLike;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Video getVideo() {
		return video;
	}

	public void setVideo(Video video) {
		this.video = video;
	}

	
	
	 
}
