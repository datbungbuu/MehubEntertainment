package asm.dao;

import java.util.List;

import asm.entity.User;

public interface UserDAO {
	User findById(String id);
	User findByEmail(String email);
	User findByUsername(String username);
	User finByUserNameandPassword(String username, String password);
	List<User> findAll();
	User create (User entity);
	User update (User entity);
	User delete (User entity);
}
