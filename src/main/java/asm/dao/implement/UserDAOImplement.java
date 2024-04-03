package asm.dao.implement;

import java.util.List;

import asm.dao.AbstractDao;
import asm.dao.UserDAO;
import asm.entity.User;

public class UserDAOImplement extends AbstractDao<User> implements UserDAO {

	@Override
	public User findById(String id) {
		// TODO Auto-generated method stub
		return super.finById(User.class, id);
	}

	@Override
	public User findByEmail(String email) {
		String sql = "SELECT o FROM User o WHERE o.email = ?0";
		return super.findOne(User.class, sql, email);
	}
	
	@Override
	public User findByUsername(String username) {
		String sql = "SELECT o FROM User o WHERE o.hoten = ?0";
		return super.findOne(User.class, sql, username);
	}

	@Override
	public User finByUserNameandPassword(String username, String password) {
		String sql = "SELECT o FROM User o WHERE o.id = ?0 AND o.matkhau = ?1";
		return super.findOne(User.class, sql, username, password);
	}

	@Override
	public List<User> findAll() {
		// TODO Auto-generated method stub
		return super.findAll(User.class);
	}
}
