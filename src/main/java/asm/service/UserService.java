package asm.service;

import java.util.List;

import asm.entity.User;

public interface UserService {
	User findById(String id);
	User findByEmail(String email);
	User findByUsername(String username);
	User login(String username, String password);
	User resetPassword(String email);
	List<User> findAll();
	User create (String username, String password, String fullname, String email);
	User update (User entity);
	User delete (String username);
	
	
}
