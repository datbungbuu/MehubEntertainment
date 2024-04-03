package asm.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Video")
public class Video {
	
	@Id
	@Column(name = "id")
	String id;
	
	@Column(name = "title")
	String title;
	
	@Column(name = "poster")
	String poster;
	
	@Column(name = "link")
	String link;
	
	@Column(name = "`view`")
	Integer view;
	
	@Column(name = "`description`")
	String description;
	
	@Column(name = "isActive")
	boolean active;
	
	@OneToMany(mappedBy = "video")
	List<Favorite>favorites;
	
	@OneToMany(mappedBy = "video")
	List<Share>shares;

	public Video() {
		super();
	}

	public Video(String id, String title, String poster, String link, Integer view, String description,
			boolean active) {
		super();
		this.id = id;
		this.title = title;
		this.poster = poster;
		this.link = link;
		this.view = view;
		this.description = description;
		this.active = active;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getPoster() {
		return poster;
	}

	public void setPoster(String poster) {
		this.poster = poster;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public Integer getView() {
		return view;
	}

	public void setView(Integer view) {
		this.view = view;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}
	
	
	
	

	
	
}
