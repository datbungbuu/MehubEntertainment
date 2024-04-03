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
@Table(name = "ChiaSe")
public class Share {
	
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer id;
	
	@Column(name = "emails")
	String emails;
	
	@Column(name = "sharedate")
	Timestamp shareDate;
	
	@ManyToOne  @JoinColumn(name = "userid")
	User user;
	
	@ManyToOne  @JoinColumn(name = "videoid")
	Video video;

	public Share() {
		super();
	}

	public Share(Integer id, String emails, Timestamp shareDate, User user, Video video) {
		super();
		this.id = id;
		this.emails = emails;
		this.shareDate = shareDate;
		this.user = user;
		this.video = video;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getEmails() {
		return emails;
	}

	public void setEmails(String emails) {
		this.emails = emails;
	}

	public Timestamp getShareDate() {
		return shareDate;
	}

	public void setShareDate(Timestamp shareDate) {
		this.shareDate = shareDate;
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
