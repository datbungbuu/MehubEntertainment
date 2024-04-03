package asm.service.imple;

import java.util.List;

import asm.dao.UserDAO;
import asm.dao.implement.UserDAOImplement;
import asm.entity.User;
import asm.service.UserService;

public class UserServiceImple implements UserService {
	
	private UserDAO dao;
	
	public UserServiceImple() {
		dao = new UserDAOImplement();
	}
	
	@Override
	public User findById(String id) {
		// TODO Auto-generated method stub
		return dao.findById(id);
	}

	@Override
	public User findByEmail(String email) {
		// TODO Auto-generated method stub
		return dao.findByEmail(email);
	}

	@Override
	public User findByUsername(String username) {
		// TODO Auto-generated method stub
		return dao.findByUsername(username);
	}

	@Override
	public User login(String username, String password) {
		// TODO Auto-generated method stub
		return dao.finByUserNameandPassword(username, password);
	}

	@Override
	public User resetPassword(String email) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<User> findAll() {
		// TODO Auto-generated method stub
		return dao.findAll();
	}

	@Override
	public User create(String username, String password, String fullname, String email) {
		User user = new User();
		user.setId(username);	
		user.setMatkhau(password);
		user.setHoten(fullname);
		user.setEmail(email);
		user.setVaitro(false);
		return dao.create(user);
	}

	@Override
	public User update(User entity) {
		return dao.update(entity);
	}

	@Override
	public User delete(String username) {
		User user = dao.findById(username);
		return dao.delete(user);
	}
	
}
