package asm.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;




@Entity
@Table(name = "TaiKhoan")
public class User {
	
	@Id
	@Column(name = "id")
	String id;
	
	@Column(name = "matkhau")
	String matkhau;
	
	@Column(name = "hoten")
	String hoten;
	
	@Column(name = "email")
	String email;
	
	@Column(name = "vaitro")
	boolean vaitro;
	
	@OneToMany(mappedBy = "user")
	List<Favorite>favorites;
	
	@OneToMany(mappedBy = "user")
	List<Share>shares;

	
	
	public User() {
		super();
	}

	public User(String id, String matkhau, String hoten, String email, boolean vaitro) {
		super();
		this.id = id;
		this.matkhau = matkhau;
		this.hoten = hoten;
		this.email = email;
		this.vaitro = vaitro;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getMatkhau() {
		return matkhau;
	}

	public void setMatkhau(String matkhau) {
		this.matkhau = matkhau;
	}

	public String getHoten() {
		return hoten;
	}

	public void setHoten(String hoten) {
		this.hoten = hoten;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public boolean isVaitro() {
		return vaitro;
	}

	public void setVaitro(boolean vaitro) {
		this.vaitro = vaitro;
	}
	
	
}
